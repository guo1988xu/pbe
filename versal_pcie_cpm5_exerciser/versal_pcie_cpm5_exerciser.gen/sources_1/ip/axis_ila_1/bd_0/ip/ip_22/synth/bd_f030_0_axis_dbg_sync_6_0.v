// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:axis_dbg_sync:1.0
// IP Revision: 0

(* X_CORE_INFO = "axis_dbg_sync_v1_0_0_axis_dbg_sync,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "bd_f030_0_axis_dbg_sync_6_0,axis_dbg_sync_v1_0_0_axis_dbg_sync,{}" *)
(* CORE_GENERATION_INFO = "bd_f030_0_axis_dbg_sync_6_0,axis_dbg_sync_v1_0_0_axis_dbg_sync,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_dbg_sync,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,MODE=Async_rst_sync,DEST_SYNC_FF=2,INIT_SYNC_FF=0,RST_ACTIVE_HIGH=0,DEST_EXT_HSK=0,SRC_SYNC_FF=2,WIDTH=32,REG_OUTPUT=0,RST_USED=0,SRC_INPUT_REG=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_f030_0_axis_dbg_sync_6_0 (
  dest_clk_in,
  src_rst_in,
  dest_arst
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_clk_in, ASSOCIATED_RESET dest_rst_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f030_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dest_clk_in CLK" *)
input wire dest_clk_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_rst_in, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 src_rst_in RST" *)
input wire src_rst_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_arst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dest_arst RST" *)
output wire dest_arst;

  axis_dbg_sync_v1_0_0_axis_dbg_sync #(
    .MODE("Async_rst_sync"),
    .DEST_SYNC_FF(2),
    .INIT_SYNC_FF(0),
    .RST_ACTIVE_HIGH(0),
    .DEST_EXT_HSK(0),
    .SRC_SYNC_FF(2),
    .WIDTH(32),
    .REG_OUTPUT(0),
    .RST_USED(0),
    .SRC_INPUT_REG(0)
  ) inst (
    .src_clk_in(1'B0),
    .dest_clk_in(dest_clk_in),
    .src_rst_in(src_rst_in),
    .dest_rst_in(1'B0),
    .src_in_bus(32'B0),
    .src_in(1'B0),
    .dest_ack(1'B0),
    .src_send(1'B0),
    .dest_arst(dest_arst),
    .dest_out_bus(),
    .dest_out(),
    .src_rcv(),
    .dest_req()
  );
endmodule
