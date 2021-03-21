#include "netif/xtopology.h"
#include "xparameters.h"

struct xtopology_t xtopology[] = {
	{
		0x47080000,
		xemac_type_xps_emaclite,
		0x400A0000,
		4,
		0x0,
		0x0,
	},
};

int xtopology_n_emacs = 1;
