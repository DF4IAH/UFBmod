/***************************** Include Files *********************************/
#include "stdio.h"

#include "Eth.h"



/************************** Static Forward Declarations **********************/

static u16 ethCheckSumCalculation(u16* rxFramePtr, int startLoc, int length);
//static void ethProcessRecvFrame(XEmacLite* instancePtr);


/************************** Global Variable Definitions **********************/

XEmacLite emacLiteInstance;																		/* Instance of the EmacLite driver */

u8  emacLiteLocalMacAddr[XEL_MAC_ADDR_SIZE] = { 0x00U, 0x0aU, 0x35U, 0x02U, 0x23U, 0x5fU };  	/* Default MAC address to be overwritten */
u8  emacLiteLocalIpAddr[IP_ADDR_SIZE] 		= { 192U, 168U, 178U, 44U };						/* IP address  */

u32 emacLiteRxFrameLength 					= 0UL;												/* Variable used to indicate the length of the received frame */
u8  emacLiteRxFrame[XEL_MAX_FRAME_SIZE];

u8  emacLiteTxFrame[XEL_MAX_FRAME_SIZE];


/************************** Static Eth.c Variable Definitions ****************/

//volatile u32 emacLiteRecvFrameLength;															/* Indicates the length of the Received packet */
//volatile int emacLiteTransmitComplete;															/* Flag to indicate that the Transmission is complete */


/******************************************************************************
* This function detects the PHY address by looking for successful MII status
* register contents (PHY register 1). It looks for a PHY that supports
* auto-negotiation and 10Mbps full-duplex and half-duplex. So, this code
* won't work for PHYs that don't support those features, but it's a bit more
* general purpose than matching a specific PHY manufacturer ID.
*
* Note also that on some (older) Xilinx ML4xx boards, PHY address 0 does not
* properly respond to this query. But, since the default is 0 and assuming
* no other address responds, then it seems to work OK.
*
* @param	instancePtr is the pointer to the instance of EmacLite driver.
*
* @return	The address of the PHY device detected (returns 0 if not detected).
*
* @note
*		The bit mask (0x1808) of the MII status register
*		(PHY Register 1) used in this function are:
* 		0x1000: 10Mbps full duplex support.
* 		0x0800: 10Mbps half duplex support.
*  		0x0008: Auto-negotiation support.
******************************************************************************/
u32 emacLitePhyDetect(XEmacLite* instancePtr)
{
	u16 phyData;
	int phyAddr;

	/* Verify all 32 MDIO ports */
	for (phyAddr = 31; phyAddr >= 0; phyAddr--) {
		XEmacLite_PhyRead(instancePtr, phyAddr, PHY_REG1_OFFSET, &phyData);

		if (phyData != 0xFFFFU) {
			if ((phyData & PHY_REG1_DETECT_MASK) == PHY_REG1_DETECT_MASK) {
				return phyAddr;	 /* Found a valid PHY device */
			}
		}
	}

	/*
	 * Unable to detect PHY device returning the default address of 0.
	 */
	return 0;
}

/******************************************************************************
* This function enables the MAC loopback on the PHY.
*
* @param	instancePtr is the pointer to the instance of EmacLite driver.
* @param	phyAddress is the address of the Phy device.
*
* @return
*		- XST_SUCCESS if the loop back is enabled.
*		- XST_FAILURE if the loop back was not enabled.
*
* @note		None.
******************************************************************************/
int emacLiteEnablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress)
{
	int status;
	u16 phyData = 0U;

	/* Set the speed and put the PHY in reset */
	phyData |= PHY_REG0_SPD_100_MASK;
	status = XEmacLite_PhyWrite(instancePtr, phyAddress, PHY_REG0_OFFSET, phyData | PHY_REG0_RESET_MASK);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Give sufficient delay for Phy Reset */
	emacLitePhyDelay(EMACLITE_PHY_DELAY_SEC);

	/* Set the PHY in loop back */
	XEmacLite_PhyWrite(instancePtr, phyAddress, PHY_REG0_OFFSET, phyData | PHY_REG0_LOOPBACK_MASK);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Give sufficient delay for Phy Loopback Enable */
	emacLitePhyDelay(1U);

	return XST_SUCCESS;
}

/******************************************************************************
* This function disables the MAC loopback on the PHY.
*
* @param	InstancePtr is the pointer to the instance of EmacLite driver.
* @param	PhyAddress is the address of the Phy device.
*
* @return
*		- XST_SUCCESS if the loop back was disabled.
*		- XST_FAILURE if the loop back was not disabled.
*
* @note		None.
******************************************************************************/
int emacLiteDisablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress)
{
	int status;
	u16 phyData;

	/* Disable loop back through PHY register using MDIO support */
	status = XEmacLite_PhyRead(instancePtr, phyAddress, PHY_REG0_OFFSET, &phyData);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	status = XEmacLite_PhyWrite(instancePtr, phyAddress, PHY_REG0_OFFSET, phyData & ~(PHY_REG0_LOOPBACK_MASK));
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/******************************************************************************
* For PPC we use a usleep call, for Microblaze we use an assembly loop that
* is roughly the same regardless of optimization level, although caches and
* memory access time can make the delay vary.  Just keep in mind that after
* resetting or updating the PHY modes, the PHY typically needs time to recover.
*
* @return   None
*
* @note     None
******************************************************************************/
void emacLitePhyDelay(unsigned int seconds)
{
#ifdef __MICROBLAZE__
	static int warningFlag = 0;

	/* If MB caches are disabled or do not exist, this delay loop could
	 * take minutes instead of seconds (e.g., 30x longer).  Print a warning
	 * message for the user (once).  If only MB had a built-in timer!
	 */
	if (((mfmsr() & 0x20) == 0) && (!warningFlag)) {
#ifdef STDOUT_BASEADDRESS
		xil_printf("Warning: This example will take ");
		xil_printf("minutes to complete without I-cache enabled\r\n");
#endif
		warningFlag = 1;
	}

#define ITERS_PER_SEC   (XPAR_CPU_CORE_CLOCK_FREQ_HZ / 6)
    asm volatile ("\n"
                  "1:               \n\t"
                  "addik r7, r0, %0 \n\t"
                  "2:               \n\t"
                  "addik r7, r7, -1 \n\t"
                  "bneid  r7, 2b    \n\t"
                  "or  r0, r0, r0   \n\t"
                  "bneid %1, 1b     \n\t"
                  "addik %1, %1, -1 \n\t"
                  :: "i"(ITERS_PER_SEC), "d" (seconds));

#else

	usleep(seconds * 1000000);

#endif
}



/*****************************************************************************
* This function calculates the checksum and returns a 16 bit result.
*
* @param 	RxFramePtr is a 16 bit pointer for the data to which checksum is to be calculated.
* @param	StartLoc is the starting location of the data from which the checksum has to be calculated.
* @param	Length is the number of halfwords(16 bits) to which checksum is to be calculated.
*
* @return	It returns a 16 bit checksum value.
*
* @note		This can also be used for calculating checksum. The ones complement of this return value will give the final checksum.
******************************************************************************/
static u16 ethCheckSumCalculation(u16* rxFramePtr, int startLoc, int length)
{
	u32 sum = 0;
	u16 checkSum = 0;

	/* Add all the 16 bit data */
	int index = startLoc;
	while (index < (startLoc + length)) {
		sum += Xil_Ntohs(*(rxFramePtr + index));
		index++;
	}

	/* Add upper 16 bits to lower 16 bits */
	checkSum = sum;
	sum >>= 16;
	checkSum = sum + checkSum;
	return checkSum;
}


/******************************************************************************
* This function processes the received packet and generates the corresponding reply packets.
*
* @param	InstancePtr is a pointer to the instance of the EmacLite.
*
* @return	None.
*
* @note		This function assumes MAC does not strip padding or CRC.
******************************************************************************/
void ethProcessRecvFrame(XEmacLite* instancePtr)
{
	u16* rxFramePtr;
	u16* txFramePtr;
	u16* tempPtr;
	u16  checkSum;
	//u32  NextTxBuffBaseAddr;
	int  index;
	int  packetType = 0;

	txFramePtr = (u16*) emacLiteTxFrame;
	rxFramePtr = (u16*) emacLiteRxFrame;

	/* Determine the next expected Tx buffer address */
	//NextTxBuffBaseAddr = XEmacLite_NextTransmitAddr(instancePtr);
	//(void) NextTxBuffBaseAddr;		/* Used within the macro 'XEmacLite_NextTransmitAddr' @see xemaclite.h */

	/* Check the packet type */
	index = MAC_ADDR_LEN;
	tempPtr = (u16*) emacLiteLocalMacAddr;
	while (index--) {
		if (Xil_Ntohs((*(rxFramePtr + index)) == BROADCAST_ADDR) && (packetType != MAC_MATCHED_PACKET)) {
			packetType = BROADCAST_PACKET;

		} else if (Xil_Ntohs((*(rxFramePtr + index)) == *(tempPtr + index)) && (packetType != BROADCAST_PACKET)) {
			packetType = MAC_MATCHED_PACKET;

		} else {
			packetType = 0;
			break;
		}
	}

	/* Process broadcast packet */
	if (packetType == BROADCAST_PACKET) {
		/* Check for an ARP Packet if so generate a reply */
		if (Xil_Ntohs(*(rxFramePtr + ETHER_PROTO_TYPE_LOC)) == XEL_ETHER_PROTO_TYPE_ARP) {
			/* IP address of the local machine */
			tempPtr = (u16*) emacLiteLocalIpAddr;

			/* Check destination IP address of the packet with local IP address */
			if (
			  ((*(rxFramePtr + ARP_REQ_DEST_IP_LOC_1)) == *tempPtr++) &&
			  ((*(rxFramePtr + ARP_REQ_DEST_IP_LOC_2)) == *tempPtr++)) {
				/* Check ARP packet type(request/reply) */
				if (Xil_Ntohs(*(rxFramePtr + ARP_REQ_STATUS_LOC)) == ARP_REQUEST) {
					/* Add destination MAC address to the reply packet (i.e) source address of the received packet */
					index = SRC_MAC_ADDR_LOC;
					while (index < (SRC_MAC_ADDR_LOC + MAC_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add source (local) MAC address to the reply packet */
					index = 0;
					tempPtr = (u16*) emacLiteLocalMacAddr;
					while (index < MAC_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add Ethernet proto type H/W type(10/3MBps), H/W address length and protocol address len (i.e)same as in the received packet */
					index = ETHER_PROTO_TYPE_LOC;
					while (index < (ETHER_PROTO_TYPE_LOC + ETHER_PROTO_TYPE_LEN + ARP_HW_TYPE_LEN + ARP_HW_ADD_LEN + ARP_PROTO_ADD_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add ARP reply status to the reply packet */
					*txFramePtr++ = Xil_Htons(ARP_REPLY);

					/* Add local MAC Address to the reply packet */
					tempPtr = (u16*) emacLiteLocalMacAddr;
					index = 0;
					while (index < MAC_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add local IP Address to the reply packet */
					tempPtr = (u16*) emacLiteLocalIpAddr;
					index = 0;
					while (index < IP_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add Destination MAC Address to the reply packet from the received packet */
					index = SRC_MAC_ADDR_LOC;
					while (index < (SRC_MAC_ADDR_LOC + MAC_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add Destination IP Address to the reply packet */
					index = ARP_REQ_SRC_IP_LOC;
					while (index < (ARP_REQ_SRC_IP_LOC + IP_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Fill zeros as per protocol. */
					index = 0;
					while (index < ARP_ZEROS_LEN) {
						*txFramePtr++ = 0x0000;
						index++;
					}

					/* Transmit the Reply Packet */
					XEmacLite_Send(instancePtr, (u8*) &emacLiteTxFrame, ARP_PACKET_SIZE);
				}
			}
		}
	}

	/* Process packets whose MAC address is matched */
	if (packetType == MAC_MATCHED_PACKET) {
		/* Check ICMP packet */
		if (Xil_Ntohs(*(rxFramePtr + ETHER_PROTO_TYPE_LOC)) == XEL_ETHER_PROTO_TYPE_IP) {
			/* Check the IP header checksum */
			checkSum = ethCheckSumCalculation(rxFramePtr, IP_HDR_START_LOC, IP_HDR_LEN);

			/* Check the Data field checksum */
			if (checkSum == CORRECT_CKSUM_VALUE) {
				checkSum = ethCheckSumCalculation(rxFramePtr, ICMP_DATA_START_LOC, ICMP_DATA_FIELD_LEN);
				if (checkSum == CORRECT_CKSUM_VALUE) {
					/* Add destination address to the reply packet (i.e)source address of the received packet */
					index = SRC_MAC_ADDR_LOC;
					while (index < (SRC_MAC_ADDR_LOC + MAC_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add local MAC address to the reply packet */
					index = 0;
					tempPtr = (u16*) emacLiteLocalMacAddr;
					while (index < MAC_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add protocol type header length and, packet length(60 Bytes) to the reply packet */
					index = ETHER_PROTO_TYPE_LOC;
					while (index < (ETHER_PROTO_TYPE_LOC + ETHER_PROTO_TYPE_LEN + IP_VERSION_LEN + IP_PACKET_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Identification field a random number which is set to IDENT_FIELD_VALUE */
					*txFramePtr++ = IDENT_FIELD_VALUE;

					/* Add fragment type, time to live and ICM field. It is same as in the received packet */
					index = IP_FRAG_FIELD_LOC;
					while (index < (IP_FRAG_FIELD_LOC + IP_TTL_ICM_LEN + IP_FRAG_FIELD_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Checksum first set to 0 and added in this field later */
					*txFramePtr++ = 0x0000;

					/* Add Source IP address */
					index = 0;
					tempPtr = (u16*) emacLiteLocalIpAddr;
					while (index < IP_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add Destination IP address */
					index = ICMP_REQ_SRC_IP_LOC;
					while (index < (ICMP_REQ_SRC_IP_LOC + IP_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Calculate checksum, and add it in the appropriate field */
					checkSum = ethCheckSumCalculation((u16*) emacLiteTxFrame, IP_HDR_START_LOC, IP_HDR_LEN);
					checkSum = ~checkSum;
					*(txFramePtr - IP_CSUM_LOC_BACK) = Xil_Htons(checkSum);

					/* Echo reply status & checksum */
					index = ICMP_ECHO_FIELD_LOC;
					while (index < (ICMP_ECHO_FIELD_LOC + ICMP_ECHO_FIELD_LEN)) {
						*txFramePtr++ = 0x0000;
						index++;
					}

					/* Add data to buffer which was received from the packet */
					index = ICMP_DATA_LOC;
					while (index < (ICMP_DATA_LOC + ICMP_DATA_LEN)) {
						*txFramePtr++ = (*(rxFramePtr + index));
						index++;
					}

					/* Generate checksum for the data and add it in the appropriate field */
					checkSum = ethCheckSumCalculation((u16*) emacLiteTxFrame, ICMP_DATA_START_LOC, ICMP_DATA_FIELD_LEN);
					checkSum = ~checkSum;
					*(txFramePtr - ICMP_DATA_CSUM_LOC_BACK) = Xil_Htons(checkSum);

					/* Transmit the frame */
					XEmacLite_Send(instancePtr, (u8*) &emacLiteTxFrame, ICMP_PACKET_SIZE);
				}
			}
		}
	}
}
