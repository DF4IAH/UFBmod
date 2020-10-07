#ifndef ETH_H
#define ETH_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xemaclite.h"

/************************** Constant Definitions ****************************/

#define PHY_REG0_OFFSET				0 		/* Register 0 of PHY device */
#define PHY_REG1_OFFSET 			1 		/* Register 1 of PHY device */

#define PHY_REG0_RESET_MASK			0x8000  /* Reset Phy device */
#define PHY_REG0_LOOPBACK_MASK		0x4000  /* Loopback Enable in Phy */
#define PHY_REG0_SPD_100_MASK		0x2000  /* Speed of 100Mbps for Phy */

#define PHY_REG1_DETECT_MASK		0x1808	/* Mask to detect PHY device */


#define BROADCAST_PACKET			1		/* Broadcast packet */
#define MAC_MATCHED_PACKET			2 		/* Dest MAC matched with local MAC */
#define IP_ADDR_SIZE				4		/* IP Address size in Bytes */
#define ARP_REQUEST 				0x0001	/* ARP Request bits in Rx packet */
#define ARP_REPLY 					0x0002 	/* ARP status bits indicating reply */
#define ARP_PACKET_SIZE 			0x3C    /* ARP packet len 60 Bytes */
#define ICMP_PACKET_SIZE 			0x62    /* ICMP packet length 98 Bytes */
//#define ICMP_PACKET_SIZE 			0x4A    /* ICMP packet length 74 Bytes */
 	 	 	 	 	 	 	 	 	 	 	/* including Src and Dest MAC Address */
#define BROADCAST_ADDR 				0xFFFF  /* Broadcast Address */
#define CORRECT_CKSUM_VALUE			0xFFFF  /* Correct checksum value */
#define IDENT_FIELD_VALUE			0x9263	/* Identification field (random num) */

/*
 * Definitions for the locations and length of some of the fields in a
 * IP packet. The lengths are defined in Half-Words (2 bytes).
 */
#define ETHER_PROTO_TYPE_LEN		1  		/* Ethernet protocol Type length  */
#define SRC_MAC_ADDR_LOC			3  		/* Source MAC address location */
#define MAC_ADDR_LEN 				3  		/* MAC address length */
#define ETHER_PROTO_TYPE_LOC		6  		/* Ethernet Proto type location */

#define ARP_HW_TYPE_LEN 			1  		/* Hardware Type length  */
#define ARP_PROTO_TYPE_LEN			1  		/* Protocol Type length  */
#define ARP_HW_ADD_LEN				1  		/* Hardware address length */
#define ARP_PROTO_ADD_LEN			1  		/* Protocol address length */
#define ARP_ZEROS_LEN				9  		/* Length to be filled with zeros */
#define ARP_REQ_STATUS_LOC 			10 		/* ARP request location */
#define ARP_REQ_SRC_IP_LOC 			14 		/* Src IP address location of ARP request */
#define ARP_REQ_DEST_IP_LOC_1 		19 		/* Destination IP's 1st half word location */
#define ARP_REQ_DEST_IP_LOC_2 		20 		/* Destination IP's 2nd half word location */

#define IP_VERSION_LEN 				1  		/* IP Version length  */
#define IP_PACKET_LEN 				1  		/* IP Packet length field  */
#define IP_FRAG_FIELD_LEN			1  		/* Fragment field len in ICMP packet */
#define IP_TTL_ICM_LEN 				1  		/* Time to live and ICM fields length */
#define IP_ADDR_LEN 				2  		/* Size of IP address in half-words */
#define IP_CSUM_LOC_BACK			5  		/* IP checksum location from end of frame */
#define IP_HDR_START_LOC 			7  		/* IP header start location */
#define IP_HDR_LEN 					10 		/* IP Header length */
#define IP_FRAG_FIELD_LOC 			10 		/* Fragment field location */

#define ICMP_TYPE_LEN 				1  		/* ICMP Type length */
#define ICMP_ECHO_FIELD_LEN 		2  		/* Echo field length in half-words */
#define ICMP_REQ_SRC_IP_LOC 		13 		/* Src IP address location of ICMP request */
#define ICMP_ECHO_FIELD_LOC 		17 		/* Echo field location */
#define ICMP_DATA_START_LOC 		17 		/* Data field start location */
#define ICMP_DATA_LEN 				30 		/* ICMP data length */
#define ICMP_DATA_LOC 				19 		/* ICMP data location including
				      	  	  	  	  	   	 * identifier number and sequence number */
#define ICMP_DATA_CSUM_LOC_BACK 	31 		/* Data checksum location from end of */
									  	   	/* frame */
#define ICMP_DATA_FIELD_LEN 		32 		/* Data field length */


#define EMACLITE_PHY_DELAY_SEC		4U		/* Amount of time to delay waiting on PHY to reset */


/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define EMAC_DEVICE_ID				XPAR_EMACLITE_0_DEVICE_ID


/***************** Macros (Inline Functions) Definitions *********************/

/**************************** Type Definitions ******************************/

/************************** Function Prototypes *****************************/
void emacLitePhyDelay(unsigned int seconds);
u32 emacLitePhyDetect(XEmacLite* instancePtr);
int emacLiteEnablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);
int emacLiteDisablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);



#ifdef __cplusplus
}
#endif

#endif /* ETH_H */