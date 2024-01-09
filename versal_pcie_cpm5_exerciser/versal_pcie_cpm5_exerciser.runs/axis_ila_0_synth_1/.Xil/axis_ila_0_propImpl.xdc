set_property SRC_FILE_INFO {cfile:/root/xuguo/xilinx_pro/vpk120/versal_pcie_cpm5_exerciser/versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_0/axis_ila_v1_2/constraints/axis_ila.xdc rfile:../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_0/axis_ila_v1_2/constraints/axis_ila.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:2 order:LATE scoped_inst:inst/axis_ila_intf/inst/u_core_reg/u_done_sync/genblk1_0.xpm_cdc_handshake_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../../../tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:3 order:LATE scoped_inst:inst/axis_mem/inst/u_trace_mem/BRAM.XPM_1.sdpram unmanaged:yes} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id CDC-1 -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter {NAME =~ "*axis_mu*/inst/ALLX.drive_srl*"}]] -to [get_pins -filter {REF_PIN_NAME=~D} -of_objects [get_cells -hierarchical -filter {NAME =~ "*axis_mu*/inst/ALLX.u_allx_carry/co_temp_reg"}]] -user "axis_ila" -description {This CDC is coming in Match unit of ILA. After the source gets updated, there is very large time after which the destination get the value.} -tags "1052662" -scope -internal
current_instance
current_instance inst/axis_ila_intf/inst/u_core_reg/u_done_sync/genblk1_0.xpm_cdc_handshake_inst
set_property src_info {type:SCOPED_XDC file:2 line:30 export:INPUT save:NONE read:READ} [current_design]
create_waiver -internal -scoped -type CDC -id {CDC-15} -user "xpm_cdc" -tags "1009444" -desc "The CDC-15 warning is waived as it is safe in the context of XPM_CDC_HANDSHAKE." -from [get_pins -quiet {src_hsdata_ff_reg*/C}] -to [get_pins -quiet {dest_hsdata_ff_reg*/D}]
current_instance
current_instance inst/axis_mem/inst/u_trace_mem/BRAM.XPM_1.sdpram
set_property src_info {type:SCOPED_XDC file:3 line:11 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
