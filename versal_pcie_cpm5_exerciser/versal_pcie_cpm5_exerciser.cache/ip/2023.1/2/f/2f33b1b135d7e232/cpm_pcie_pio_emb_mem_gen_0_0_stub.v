// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Nov 17 23:22:38 2023
// Host        : matthew-xilinx running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpm_pcie_pio_emb_mem_gen_0_0_stub.v
// Design      : cpm_pcie_pio_emb_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvp1202-vsva2785-2MHP-e-S-es1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "emb_mem_gen_v1_0_7,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clka, rsta, ena, regcea, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="rsta,ena,regcea,wea[3:0],addra[12:0],dina[31:0],douta[31:0]" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [12:0]addra;
  input [31:0]dina;
  output [31:0]douta;
endmodule
