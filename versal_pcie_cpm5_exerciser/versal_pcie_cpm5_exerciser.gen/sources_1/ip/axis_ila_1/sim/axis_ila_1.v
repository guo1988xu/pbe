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


// IP VLNV: xilinx.com:ip:axis_ila:1.2
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module axis_ila_1 (
  clk,
  probe0,
  probe1,
  probe2,
  probe3,
  probe4,
  probe5,
  probe6,
  probe7,
  probe8,
  probe9,
  probe10,
  probe11,
  probe12,
  probe13
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f030_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe0 DATA" *)
input wire [3 : 0] probe0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe1 DATA" *)
input wire [0 : 0] probe1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe2 DATA" *)
input wire [0 : 0] probe2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe3, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe3 DATA" *)
input wire [2 : 0] probe3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe4, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe4 DATA" *)
input wire [31 : 0] probe4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe5, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe5 DATA" *)
input wire [0 : 0] probe5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe6, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe6 DATA" *)
input wire [0 : 0] probe6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe7, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe7 DATA" *)
input wire [0 : 0] probe7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe8, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe8 DATA" *)
input wire [2 : 0] probe8;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe9, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe9 DATA" *)
input wire [31 : 0] probe9;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe10, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe10 DATA" *)
input wire [31 : 0] probe10;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe11, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe11 DATA" *)
input wire [31 : 0] probe11;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe12, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe12 DATA" *)
input wire [0 : 0] probe12;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.probe13, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.probe13 DATA" *)
input wire [31 : 0] probe13;

  bd_f030_0 inst (
    .clk(clk),
    .probe0(probe0),
    .probe1(probe1),
    .probe2(probe2),
    .probe3(probe3),
    .probe4(probe4),
    .probe5(probe5),
    .probe6(probe6),
    .probe7(probe7),
    .probe8(probe8),
    .probe9(probe9),
    .probe10(probe10),
    .probe11(probe11),
    .probe12(probe12),
    .probe13(probe13)
  );
endmodule
