vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axis_dbg_stub_v1_0_0
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/axis_dbg_sync_v1_0_0
vlib questa_lib/msim/axis_ila_intf_v1_0_0
vlib questa_lib/msim/axis_cap_ctrl_v1_0_0
vlib questa_lib/msim/axis_mu_v1_0_0
vlib questa_lib/msim/axis_itct_v1_0_0
vlib questa_lib/msim/axis_ila_pp_v1_0_0
vlib questa_lib/msim/axis_mem_v1_0_0

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axis_dbg_stub_v1_0_0 questa_lib/msim/axis_dbg_stub_v1_0_0
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap axis_dbg_sync_v1_0_0 questa_lib/msim/axis_dbg_sync_v1_0_0
vmap axis_ila_intf_v1_0_0 questa_lib/msim/axis_ila_intf_v1_0_0
vmap axis_cap_ctrl_v1_0_0 questa_lib/msim/axis_cap_ctrl_v1_0_0
vmap axis_mu_v1_0_0 questa_lib/msim/axis_mu_v1_0_0
vmap axis_itct_v1_0_0 questa_lib/msim/axis_itct_v1_0_0
vmap axis_ila_pp_v1_0_0 questa_lib/msim/axis_ila_pp_v1_0_0
vmap axis_mem_v1_0_0 questa_lib/msim/axis_mem_v1_0_0

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L cpm5_v1_0_12 -L cpm4_v1_0_12 -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L versal_cips_ps_vip_v1_0_6 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L cpm5_v1_0_12 -L cpm4_v1_0_12 -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L versal_cips_ps_vip_v1_0_6 -L xilinx_vip "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_dbg_stub_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dbg_stub_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_0/sim/bd_f030_0_axis_dbg_stub_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_1/sim/bd_f030_0_xlconstant_0.v" \

vlog -work axis_dbg_sync_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dbg_sync_v1_0_vl_rfs.v" \

vlog -work axis_ila_intf_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_ila_intf_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_2/sim/bd_f030_0_axis_ila_intf_0.v" \

vlog -work axis_cap_ctrl_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_cap_ctrl_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_3/sim/bd_f030_0_axis_cap_ctrl_0.v" \

vlog -work axis_mu_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_mu_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
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

vlog -work axis_itct_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_itct_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_28/sim/bd_f030_0_axis_itct_0.v" \

vlog -work axis_ila_pp_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_ila_pp_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_29/sim/bd_f030_0_axis_ila_pp_0.v" \

vlog -work axis_mem_v1_0_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_mem_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/ip/ip_30/sim/bd_f030_0_axis_mem_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/bd_0/sim/bd_f030_0.v" \
"../../../../versal_pcie_cpm5_exerciser.gen/sources_1/ip/axis_ila_1/sim/axis_ila_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

