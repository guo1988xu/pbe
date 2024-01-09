transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axis_dbg_stub_v1_0_0
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/axis_dbg_sync_v1_0_0
vlib activehdl/axis_ila_intf_v1_0_0
vlib activehdl/axis_cap_ctrl_v1_0_0
vlib activehdl/axis_mu_v1_0_0
vlib activehdl/axis_itct_v1_0_0
vlib activehdl/axis_ila_pp_v1_0_0
vlib activehdl/axis_mem_v1_0_0

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_dbg_stub_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_dbg_stub_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_0/sim/bd_f030_0_axis_dbg_stub_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_1/sim/bd_f030_0_xlconstant_0.v" \

vlog -work axis_dbg_sync_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_dbg_sync_v1_0_vl_rfs.v" \

vlog -work axis_ila_intf_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_ila_intf_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_2/sim/bd_f030_0_axis_ila_intf_0.v" \

vlog -work axis_cap_ctrl_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_cap_ctrl_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_3/sim/bd_f030_0_axis_cap_ctrl_0.v" \

vlog -work axis_mu_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_mu_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_4/sim/bd_f030_0_axis_mu0_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_5/sim/bd_f030_0_axis_mu1_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_6/sim/bd_f030_0_axis_mu2_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_7/sim/bd_f030_0_axis_mu3_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_8/sim/bd_f030_0_axis_mu4_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_9/sim/bd_f030_0_axis_mu5_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_10/sim/bd_f030_0_axis_mu6_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_11/sim/bd_f030_0_axis_mu7_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_12/sim/bd_f030_0_axis_mu8_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_13/sim/bd_f030_0_axis_mu9_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_14/sim/bd_f030_0_axis_mu10_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_15/sim/bd_f030_0_axis_mu11_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_16/sim/bd_f030_0_axis_mu12_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_17/sim/bd_f030_0_axis_mu13_0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_18/sim/bd_f030_0_axis_dbg_sync_2_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_19/sim/bd_f030_0_axis_dbg_sync_3_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_20/sim/bd_f030_0_axis_dbg_sync_4_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_21/sim/bd_f030_0_axis_dbg_sync_5_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_22/sim/bd_f030_0_axis_dbg_sync_6_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_23/sim/bd_f030_0_tc_axis_mu0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_24/sim/bd_f030_0_cc_axis_mu0_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_25/sim/bd_f030_0_cc_axis_mu1_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_26/sim/bd_f030_0_cc_axis_mu2_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_27/sim/bd_f030_0_cc_axis_mu3_0.v" \

vlog -work axis_itct_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_itct_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_28/sim/bd_f030_0_axis_itct_0.v" \

vlog -work axis_ila_pp_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_ila_pp_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_29/sim/bd_f030_0_axis_ila_pp_0.v" \

vlog -work axis_mem_v1_0_0  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../ipstatic/hdl/axis_mem_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_0 -l xil_defaultlib -l xlconstant_v1_1_7 -l axis_dbg_sync_v1_0_0 -l axis_ila_intf_v1_0_0 -l axis_cap_ctrl_v1_0_0 -l axis_mu_v1_0_0 -l axis_itct_v1_0_0 -l axis_ila_pp_v1_0_0 -l axis_mem_v1_0_0 \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_30/sim/bd_f030_0_axis_mem_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/sim/bd_f030_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/sim/axis_ila_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

