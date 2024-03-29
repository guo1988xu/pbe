// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axis_mu:1.0
// IP Revision: 0

(* X_CORE_INFO = "axis_mu_v1_0_0_axis_mu,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "bd_f170_0_axis_mu9_0_0,axis_mu_v1_0_0_axis_mu,{}" *)
(* CORE_GENERATION_INFO = "bd_f170_0_axis_mu9_0_0,axis_mu_v1_0_0_axis_mu,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_mu,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_WIDTH=16,C_MU_TYPE=3,C_EN_PIPE=0,C_MATCH_OUT_ASYNC=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_f170_0_axis_mu9_0_0 (
  clk,
  cfg_clk,
  resetn,
  ila_resetn,
  cfg_en,
  cfg_din,
  arm,
  data_in,
  match_out,
  cfg_dout
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f170_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cfg_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f170_0_axis_dbg_stub_0_aclk_int, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cfg_clk CLK" *)
input wire cfg_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ila_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ila_resetn RST" *)
input wire ila_resetn;
input wire cfg_en;
input wire cfg_din;
input wire arm;
input wire [15 : 0] data_in;
output wire match_out;
output wire cfg_dout;

  axis_mu_v1_0_0_axis_mu #(
    .C_WIDTH(16),
    .C_MU_TYPE(3),
    .C_EN_PIPE(0),
    .C_MATCH_OUT_ASYNC(0)
  ) inst (
    .clk(clk),
    .cfg_clk(cfg_clk),
    .resetn(resetn),
    .ila_resetn(ila_resetn),
    .cfg_en(cfg_en),
    .cfg_din(cfg_din),
    .arm(arm),
    .data_in(data_in),
    .match_out(match_out),
    .cfg_dout(cfg_dout)
  );
endmodule
