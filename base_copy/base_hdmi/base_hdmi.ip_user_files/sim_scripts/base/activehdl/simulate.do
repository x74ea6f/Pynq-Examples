onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+base -L xilinx_vip -L xpm -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_23 -L xlconcat_v2_1_3 -L xlconstant_v1_1_7 -L lib_pkg_v1_0_2 -L axi_iic_v2_0_24 -L axi_intc_v4_1_14 -L lmb_v10_v3_0_11 -L blk_mem_gen_v8_4_4 -L lmb_bram_if_cntlr_v4_0_18 -L microblaze_v11_0_3 -L axi_bram_ctrl_v4_1_3 -L proc_sys_reset_v5_0_13 -L dist_mem_gen_v8_0_13 -L lib_srl_fifo_v1_0_2 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L axi_quad_spi_v3_2_20 -L xlslice_v1_0_2 -L axi_timer_v2_0_23 -L axi_uartlite_v2_0_25 -L mdm_v3_2_18 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L axi_datamover_v5_1_23 -L axi_sg_v4_1_13 -L axi_dma_v7_1_22 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_3 -L lib_bmg_v1_0_13 -L axi_vdma_v6_3_9 -L axis_register_slice_v1_1_21 -L v_vid_in_axi4s_v4_0_9 -L v_tc_v6_2_0 -L v_tc_v6_1_13 -L v_axi4s_vid_out_v4_0_10 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_21 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L axi_protocol_converter_v2_1_21 -L axi_clock_converter_v2_1_20 -L axi_dwidth_converter_v2_1_21 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.base xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {base.udo}

run -all

endsim

quit -force
