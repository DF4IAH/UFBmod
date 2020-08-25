
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = freertos10_xilinx
 PARAMETER OS_VER = 1.6
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER SYSINTC_SPEC = *
 PARAMETER SYSTMR_DEV = *
 PARAMETER SYSTMR_SPEC = true
 PARAMETER max_task_name_len = 30
 PARAMETER stdin = UART0_axi_UART0_uartlite_0
 PARAMETER stdout = UART0_axi_UART0_uartlite_0
 PARAMETER total_heap_size = 131072
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.11
 PARAMETER HW_INSTANCE = microblaze_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = BOOT_PLL_BOOT_PLL_axi_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iic
 PARAMETER DRIVER_VER = 3.6
 PARAMETER HW_INSTANCE = BOOT_PLL_BOOT_PLL_axi_iic_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = spi
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = CFG_CFG_axi_quad_spi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = CLK1B_CW_0_CLK1B_axi_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = clk_wiz
 PARAMETER DRIVER_VER = 1.3
 PARAMETER HW_INSTANCE = CLK1B_CW_0_CLK1B_clk_wiz_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = CLOCK_axi_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emaclite
 PARAMETER DRIVER_VER = 4.5
 PARAMETER HW_INSTANCE = ETH0_ETH0_axi_ethernetlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = EUI48_axi_EUI48_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.11
 PARAMETER HW_INSTANCE = INT_ctrl_microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = PWM_lights_axi_PWM_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = ROTENC_decoder_axi_ROTENC_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = SCOPE_SCOPE_axi_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = SCOPE_SCOPE_axi_gpio_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = spi
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = TRX_TRX_config_TRX_axi_quad_spi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = TRX_TRX_config_axi_TRX_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = TRX_TRX_tx_DDS_unit_TRX_tx_axi_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = UART0_axi_UART0_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.4
 PARAMETER HW_INSTANCE = UART0_axi_UART0_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iic
 PARAMETER DRIVER_VER = 3.6
 PARAMETER HW_INSTANCE = axi_BOARD_iic_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 4.6
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig_7series
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = mig_7series_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = lwip211
 PARAMETER LIBRARY_VER = 1.2
 PARAMETER PROC_INSTANCE = microblaze_0
END


