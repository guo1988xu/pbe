//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : Everest FPGA PCI Express Exerciser
// File       : XERCISER_AXIST_CQ_CC_SHIM.v
// Version    : 1.0
//-----------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_CQ_CC_SHIM (
   //CQ: 1024b from hard block, 512 to user
	input    wire    [464:0]   m_axis_cq_tuser_1024,
	input             [31:0]   m_axis_cq_tkeep_1024,
	input           [1023:0]   m_axis_cq_tdata_1024,
	output   wire    [182:0]   m_axis_cq_tuser_512,
	output   wire     [15:0]   m_axis_cq_tkeep_512,
	output   wire    [511:0]   m_axis_cq_tdata_512,

   //CC: 512b from user, 1024b to hard block
	input            [511:0]   s_axis_cc_tdata_512,
	input             [15:0]   s_axis_cc_tkeep_512,
	input    wire    [80:0]    s_axis_cc_tuser_512,
	output   wire   [1023:0]   s_axis_cc_tdata_1024,
	output   wire     [31:0]   s_axis_cc_tkeep_1024,
	output   wire    [222:0]   s_axis_cc_tuser_1024
);

   //CQ: 1024b from hard block, 512 to user
	assign m_axis_cq_tkeep_512          = m_axis_cq_tkeep_1024[15:0];
	assign m_axis_cq_tdata_512          = m_axis_cq_tdata_1024[511:0];

	assign m_axis_cq_tuser_512[182:119] = m_axis_cq_tuser_1024[304:241];
	assign m_axis_cq_tuser_512[118:103] = m_axis_cq_tuser_1024[224:209];
	assign m_axis_cq_tuser_512 [102:99] = m_axis_cq_tuser_1024[204:201];
	assign m_axis_cq_tuser_512  [98:97] = m_axis_cq_tuser_1024[198:197];
	assign m_axis_cq_tuser_512     [96] = m_axis_cq_tuser_1024[196];
	assign m_axis_cq_tuser_512  [95:92] = m_axis_cq_tuser_1024[184:181];
	assign m_axis_cq_tuser_512  [91:88] = m_axis_cq_tuser_1024[179:176];
	assign m_axis_cq_tuser_512  [87:86] = m_axis_cq_tuser_1024[173:172];
	assign m_axis_cq_tuser_512  [85:84] = m_axis_cq_tuser_1024[167:166];
	assign m_axis_cq_tuser_512  [83:82] = m_axis_cq_tuser_1024[165:164];
	assign m_axis_cq_tuser_512  [81:80] = m_axis_cq_tuser_1024[161:160];
	assign m_axis_cq_tuser_512  [79:16] = m_axis_cq_tuser_1024[63:0];
	assign m_axis_cq_tuser_512   [15:8] = m_axis_cq_tuser_1024[151:144];
	assign m_axis_cq_tuser_512    [7:0] = m_axis_cq_tuser_1024[135:128];

   //CC: 512b from user, 1024b to hard block
	assign s_axis_cc_tkeep_1024         = {16'd0, s_axis_cc_tkeep_512};
	assign s_axis_cc_tdata_1024         = {512'd0, s_axis_cc_tdata_512};

	assign s_axis_cc_tuser_1024[164:37] = {64'd0, m_axis_cq_tuser_512[79:16]};
	assign s_axis_cc_tuser_1024    [36] = s_axis_cc_tuser_512[16];
	assign s_axis_cc_tuser_1024 [35:31] = 5'd0;
	assign s_axis_cc_tuser_1024 [30:26] = 5'd0;
	assign s_axis_cc_tuser_1024 [25:21] = s_axis_cc_tuser_512[15:12];
	assign s_axis_cc_tuser_1024 [20:16] = s_axis_cc_tuser_512[11:8];
	assign s_axis_cc_tuser_1024 [15:12] = {2'd0, s_axis_cc_tuser_512[7:6]};
	assign s_axis_cc_tuser_1024 [11:10] = 2'd0;
	assign s_axis_cc_tuser_1024   [9:8] = 2'd0;
	assign s_axis_cc_tuser_1024   [7:6] = s_axis_cc_tuser_512[5:4];
	assign s_axis_cc_tuser_1024   [5:4] = s_axis_cc_tuser_512[3:2];
	assign s_axis_cc_tuser_1024   [3:0] = {2'd0, s_axis_cc_tuser_512[1:0]};
endmodule
