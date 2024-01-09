transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+axis_ila_1  -L xilinx_vip -L xpm -L axis_dbg_stub_v1_0_0 -L xil_defaultlib -L xlconstant_v1_1_7 -L axis_dbg_sync_v1_0_0 -L axis_ila_intf_v1_0_0 -L axis_cap_ctrl_v1_0_0 -L axis_mu_v1_0_0 -L axis_itct_v1_0_0 -L axis_ila_pp_v1_0_0 -L axis_mem_v1_0_0 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.axis_ila_1 xil_defaultlib.glbl

do {axis_ila_1.udo}

run

endsim

quit -force
