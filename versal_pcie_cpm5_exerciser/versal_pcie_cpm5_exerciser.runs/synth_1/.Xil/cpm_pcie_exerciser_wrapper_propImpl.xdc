set_property SRC_FILE_INFO {cfile:/root/xuguo/xilinx_pro/vpk120/versal_pcie_cpm5_exerciser/versal_pcie_cpm5_exerciser.gen/sources_1/bd/exerciser/ip/exerciser_versal_cips_0_0/bd_0/ip/ip_1/ip_1/bd_6f6a_cpm_0_0_gt_quad_3.xdc rfile:../../../versal_pcie_cpm5_exerciser.gen/sources_1/bd/exerciser/ip/exerciser_versal_cips_0_0/bd_0/ip/ip_1/ip_1/bd_6f6a_cpm_0_0_gt_quad_3.xdc id:1 order:EARLY scoped_inst:exerciser_i/versal_cips_0/inst/cpm_0/inst/gt_quad_inst3/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/root/xuguo/xilinx_pro/vpk120/versal_pcie_cpm5_exerciser/versal_pcie_cpm5_exerciser.gen/sources_1/bd/exerciser/ip/exerciser_versal_cips_0_0/bd_0/ip/ip_1/ip_0/bd_6f6a_cpm_0_0_gt_quad_2.xdc rfile:../../../versal_pcie_cpm5_exerciser.gen/sources_1/bd/exerciser/ip/exerciser_versal_cips_0_0/bd_0/ip/ip_1/ip_0/bd_6f6a_cpm_0_0_gt_quad_2.xdc id:2 order:EARLY scoped_inst:exerciser_i/versal_cips_0/inst/cpm_0/inst/gt_quad_inst2/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/root/xuguo/xilinx_pro/vpk120/versal_pcie_cpm5_exerciser/versal_pcie_cpm5_exerciser.gen/sources_1/bd/exerciser/ip/exerciser_versal_cips_0_0/bd_0/ip/ip_1/ip_cpm5.xdc rfile:../../../versal_pcie_cpm5_exerciser.gen/sources_1/bd/exerciser/ip/exerciser_versal_cips_0_0/bd_0/ip/ip_1/ip_cpm5.xdc id:3 order:EARLY scoped_inst:exerciser_i/versal_cips_0/inst/cpm_0/inst} [current_design]
current_instance exerciser_i/versal_cips_0/inst/cpm_0/inst/gt_quad_inst3/inst
set_property src_info {type:SCOPED_XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-11} -user "gt_quad_base" -tags "1126726" -desc "Synchronizer on the TX rate port to latch on APB3CLK exsist.The CDC-11 warning is waived as it is safe" -to [get_pins -hier -filter {NAME =~ */ch*_*x_function_inst/synch_vec_*xrate[*].*XRATE_xpm_internal_sync/syncstages_ff_reg[*]/D }]
current_instance
current_instance exerciser_i/versal_cips_0/inst/cpm_0/inst/gt_quad_inst2/inst
set_property src_info {type:SCOPED_XDC file:2 line:42 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-11} -user "gt_quad_base" -tags "1126726" -desc "Synchronizer on the TX rate port to latch on APB3CLK exsist.The CDC-11 warning is waived as it is safe" -to [get_pins -hier -filter {NAME =~ */ch*_*x_function_inst/synch_vec_*xrate[*].*XRATE_xpm_internal_sync/syncstages_ff_reg[*]/D }]
current_instance
current_instance exerciser_i/versal_cips_0/inst/cpm_0/inst
set_property src_info {type:SCOPED_XDC file:3 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTYP_QUAD_X0Y4 [get_cells gt_quad_inst2/inst/quad_inst]
set_property src_info {type:SCOPED_XDC file:3 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTYP_QUAD_X0Y5 [get_cells gt_quad_inst3/inst/quad_inst]
set_property src_info {type:SCOPED_XDC file:3 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTYP_REFCLK_X0Y8 [get_cells IBUFDS_GTE5_PCIeA1_inst]
set_property src_info {type:SCOPED_XDC file:3 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_?XPD[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XUSRCLK]
set_property src_info {type:SCOPED_XDC file:3 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XLATCLK]
set_property src_info {type:SCOPED_XDC file:3 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_?XRATE[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XPOLARITY]
set_property src_info {type:SCOPED_XDC file:3 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_?XPRBSSEL[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/APB3*]
set_property src_info {type:SCOPED_XDC file:3 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/AXISCLK]
set_property src_info {type:SCOPED_XDC file:3 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/*_AXIS_*]
set_property src_info {type:SCOPED_XDC file:3 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGIN*]
set_property src_info {type:SCOPED_XDC file:3 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/PCIELTSSM[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/DEBUGTRACECLK]
set_property src_info {type:SCOPED_XDC file:3 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/DEBUGTRACEREADY]
set_property src_info {type:SCOPED_XDC file:3 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/REFCLK?_CLKTESTSIG]
set_property src_info {type:SCOPED_XDC file:3 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXSLIDE]
set_property src_info {type:SCOPED_XDC file:3 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCOMSAS]
set_property src_info {type:SCOPED_XDC file:3 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_DMONITORCLK]
set_property src_info {type:SCOPED_XDC file:3 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_EYESCANTRIGGER]
set_property src_info {type:SCOPED_XDC file:3 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCOMINIT]
set_property src_info {type:SCOPED_XDC file:3 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCOMWAKE]
set_property src_info {type:SCOPED_XDC file:3 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXINHIBIT]
set_property src_info {type:SCOPED_XDC file:3 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXPIPPMEN]
set_property src_info {type:SCOPED_XDC file:3 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_TXDATA[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXDETECTRX]
set_property src_info {type:SCOPED_XDC file:3 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXELECIDLE]
set_property src_info {type:SCOPED_XDC file:3 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_TXCTRL*[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_TXHEADER[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXONESZEROS]
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_TXSEQUENCE[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXPRBSFORCEERR]
set_property src_info {type:SCOPED_XDC file:3 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_TXPIPPMSTEPSIZE[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins {gt_quad_inst*/inst/quad_inst/CH?_RXCHBONDI[*]}]
set_property src_info {type:SCOPED_XDC file:3 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXEQTRAINING]
set_property src_info {type:SCOPED_XDC file:3 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXGEARBOXSLIP]
set_property src_info {type:SCOPED_XDC file:3 line:66 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type Methodology -id TIMING-3 -tags 1118802 -scoped -internal -description "Waive off Clock generation" -objects [get_clocks GT_REFCLK*]
set_property src_info {type:SCOPED_XDC file:3 line:67 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type Methodology -id TIMING-4 -tags 1118802 -scoped -internal -description "Waive off Downstream Clock re-declaration" -objects [get_clocks dpll?_dco_clk]
