#include <stdio.h>


#include "xil_types.h"
#include "xparameters.h"


#include "xio.h"
// #include "microblaze_sleep.h"

// #include "xiomodule_l.h"

u32 GPO1_shadow;

// int si5338_init();

#include "te_iic_platform.h"

#ifdef TE_STANDALONE
// #include "te_si534x.h"
#include "te_si5338.h"
#include "te_uart.h"

/*
 *
 *
 *
 *
 */
#define GPO1 XPAR_IOMODULE_SINGLE_BASEADDR+XGO_OUT_OFFSET

int main()
{
	GPO1_shadow = 0x00000003;

    iic_init();

    si5338_init(0x70);


    XIo_Out32(GPO1, 0x80000003);

    return 0;
}
#endif /* TE_STANDALONE */