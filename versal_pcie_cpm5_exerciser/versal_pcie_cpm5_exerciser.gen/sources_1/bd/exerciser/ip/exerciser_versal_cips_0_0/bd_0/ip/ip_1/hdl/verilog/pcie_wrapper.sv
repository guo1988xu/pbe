//-----------------------------------------------------------------------------
//
// (c) Copyright 2020-2024 Xilinx, Inc. All rights reserved.
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
// Project : Xilinx Versal ACAP CPM 5
// File    : pcie_wrapper.sv
// Version : 1.0
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

module cpm5_v1_0_12_pcie_wrapper # (
  parameter         TCQ = 100,
  parameter         C_AXISTEN_IF_WIDTH = 512,
  parameter [3:0]   C_TL_PF_ENABLE_REG = 4'h0,
  parameter [3:0]   C_SRIOV_CAP_ENABLE = 4'h0,

  parameter [15:0]  C_PF0_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF1_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF2_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF3_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF4_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF5_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF6_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF7_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF8_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF9_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF10_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF11_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF12_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF13_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF14_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF15_SRIOV_CAP_TOTAL_VF= 16'h0,
  parameter [15:0]  C_PF0_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF1_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF2_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF3_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF4_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF5_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF6_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF7_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF8_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF9_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF10_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF11_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF12_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF13_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF14_SRIOV_FIRST_VF_OFFSET= 16'h0,
  parameter [15:0]  C_PF15_SRIOV_FIRST_VF_OFFSET= 16'h0,


  parameter C_PF0_ATS_CAP_ON = 0,
  parameter C_VFG0_ATS_CAP_ON = 0,
  parameter C_PF1_ATS_CAP_ON = 0,
  parameter C_VFG1_ATS_CAP_ON = 0,
  parameter C_PF2_ATS_CAP_ON = 0,
  parameter C_VFG2_ATS_CAP_ON = 0,
  parameter C_PF3_ATS_CAP_ON = 0,
  parameter C_VFG3_ATS_CAP_ON = 0,
  parameter C_PF4_ATS_CAP_ON = 0,
  parameter C_VFG4_ATS_CAP_ON = 0,
  parameter C_PF5_ATS_CAP_ON = 0,
  parameter C_VFG5_ATS_CAP_ON = 0,
  parameter C_PF6_ATS_CAP_ON = 0,
  parameter C_VFG6_ATS_CAP_ON = 0,
  parameter C_PF7_ATS_CAP_ON = 0,
  parameter C_VFG7_ATS_CAP_ON = 0,
  parameter C_PF8_ATS_CAP_ON = 0,
  parameter C_VFG8_ATS_CAP_ON = 0,
  parameter C_PF9_ATS_CAP_ON = 0,
  parameter C_VFG9_ATS_CAP_ON = 0,
  parameter C_PF10_ATS_CAP_ON = 0,
  parameter C_VFG10_ATS_CAP_ON = 0,
  parameter C_PF11_ATS_CAP_ON = 0,
  parameter C_VFG11_ATS_CAP_ON = 0,
  parameter C_PF12_ATS_CAP_ON = 0,
  parameter C_VFG12_ATS_CAP_ON = 0,
  parameter C_PF13_ATS_CAP_ON = 0,
  parameter C_VFG13_ATS_CAP_ON = 0,
  parameter C_PF14_ATS_CAP_ON = 0,
  parameter C_VFG14_ATS_CAP_ON = 0,
  parameter C_PF15_ATS_CAP_ON = 0,
  parameter C_VFG15_ATS_CAP_ON = 0,
  parameter C_PF0_PRI_CAP_ON = 0,
  parameter C_VFG0_PRI_CAP_ON = 0,
  parameter C_PF1_PRI_CAP_ON = 0,
  parameter C_VFG1_PRI_CAP_ON = 0,
  parameter C_PF2_PRI_CAP_ON = 0,
  parameter C_VFG2_PRI_CAP_ON = 0,
  parameter C_PF3_PRI_CAP_ON = 0,
  parameter C_VFG3_PRI_CAP_ON = 0,
  parameter C_PF4_PRI_CAP_ON = 0,
  parameter C_VFG4_PRI_CAP_ON = 0,
  parameter C_PF5_PRI_CAP_ON = 0,
  parameter C_VFG5_PRI_CAP_ON = 0,
  parameter C_PF6_PRI_CAP_ON = 0,
  parameter C_VFG6_PRI_CAP_ON = 0,
  parameter C_PF7_PRI_CAP_ON = 0,
  parameter C_VFG7_PRI_CAP_ON = 0,
  parameter C_PF8_PRI_CAP_ON = 0,
  parameter C_VFG8_PRI_CAP_ON = 0,
  parameter C_PF9_PRI_CAP_ON = 0,
  parameter C_VFG9_PRI_CAP_ON = 0,
  parameter C_PF10_PRI_CAP_ON = 0,
  parameter C_VFG10_PRI_CAP_ON = 0,
  parameter C_PF11_PRI_CAP_ON = 0,
  parameter C_VFG11_PRI_CAP_ON = 0,
  parameter C_PF12_PRI_CAP_ON = 0,
  parameter C_VFG12_PRI_CAP_ON = 0,
  parameter C_PF13_PRI_CAP_ON = 0,
  parameter C_VFG13_PRI_CAP_ON = 0,
  parameter C_PF14_PRI_CAP_ON = 0,
  parameter C_VFG14_PRI_CAP_ON = 0,
  parameter C_PF15_PRI_CAP_ON = 0,
  parameter C_VFG15_PRI_CAP_ON = 0,


  parameter C_PASID_CAP_ON = 0,
  parameter C_ARI_CAP_ENABLE = 0
)
(

  input       user_clk,
  output reg  user_reset,
  output reg  user_lnk_up,

  input phy_rdy,
  
  input  [15:0] cfg_ext_function_number,
  input         cfg_ext_read_received,
  input  [9:0]  cfg_ext_register_number,
  input  [3:0]  cfg_ext_write_byte_enable,
  input  [31:0] cfg_ext_write_data,
  input         cfg_ext_write_received,  

  output [15:0] cfg_ats_control_enable,
  input  [3:0]  cfg_flr_in_process,
  input         cfg_hot_reset_out,
  input  [5:0]  cfg_ltssm_state,
  output [79:0] cfg_max_pasid_width_control,
  output [47:0] cfg_pasid_control,
  input         cfg_phy_link_down,
  input  [1:0]  cfg_phy_link_status,
  output [31:0] cfg_pri_control,
  
  output [239:0]  cfg_msix_vf_enable,
  output [239:0]  cfg_msix_vf_mask,

  output [239:0]      cfg_vf_ats_control_enable,
  input               cfg_vf_flr_done,
  input  [7:0]        cfg_vf_flr_func_num, 
  output [239:0]      cfg_vf_flr_in_process,
  output [3*240-1:0]  cfg_vf_power_state,
  output [2*240-1:0]  cfg_vf_status,
  output [239:0]      cfg_vf_tph_requester_enable,
  output [3*240-1:0]  cfg_vf_tph_st_mode,  

  input   attr_pl_upstream_facing_i,
  output  pl_eq_mismatch_o,
  output  pl_redo_eq_pending_o,
  input   pl_gen34_eq_mismatch_i,
  input   pl_gen34_redo_eq_speed_i,
  output  pl_gen34_redo_eq_speed_o,
  input   pl_gen34_redo_equalization_i,
  output  pl_gen34_redo_equalization_o
);

  wire [3:0]  attr_tl_pf_enable_reg;
  wire [3:0]  attr_sriov_cap_enable;
  wire        attr_ari_cap_enable;

  wire attr_pf0_ats_cap_on; 
  wire attr_vfg0_ats_cap_on; 
  wire attr_pf1_ats_cap_on; 
  wire attr_vfg1_ats_cap_on; 
  wire attr_pf2_ats_cap_on; 
  wire attr_vfg2_ats_cap_on; 
  wire attr_pf3_ats_cap_on; 
  wire attr_vfg3_ats_cap_on; 
  wire attr_pf4_ats_cap_on; 
  wire attr_vfg4_ats_cap_on; 
  wire attr_pf5_ats_cap_on; 
  wire attr_vfg5_ats_cap_on; 
  wire attr_pf6_ats_cap_on; 
  wire attr_vfg6_ats_cap_on; 
  wire attr_pf7_ats_cap_on; 
  wire attr_vfg7_ats_cap_on; 
  wire attr_pf8_ats_cap_on; 
  wire attr_vfg8_ats_cap_on; 
  wire attr_pf9_ats_cap_on; 
  wire attr_vfg9_ats_cap_on; 
  wire attr_pf10_ats_cap_on; 
  wire attr_vfg10_ats_cap_on; 
  wire attr_pf11_ats_cap_on; 
  wire attr_vfg11_ats_cap_on; 
  wire attr_pf12_ats_cap_on; 
  wire attr_vfg12_ats_cap_on; 
  wire attr_pf13_ats_cap_on; 
  wire attr_vfg13_ats_cap_on; 
  wire attr_pf14_ats_cap_on; 
  wire attr_vfg14_ats_cap_on; 
  wire attr_pf15_ats_cap_on; 
  wire attr_vfg15_ats_cap_on; 
  wire attr_pf0_pri_cap_on; 
  wire attr_vfg0_pri_cap_on; 
  wire attr_pf1_pri_cap_on; 
  wire attr_vfg1_pri_cap_on; 
  wire attr_pf2_pri_cap_on; 
  wire attr_vfg2_pri_cap_on; 
  wire attr_pf3_pri_cap_on; 
  wire attr_vfg3_pri_cap_on; 
  wire attr_pf4_pri_cap_on; 
  wire attr_vfg4_pri_cap_on; 
  wire attr_pf5_pri_cap_on; 
  wire attr_vfg5_pri_cap_on; 
  wire attr_pf6_pri_cap_on; 
  wire attr_vfg6_pri_cap_on; 
  wire attr_pf7_pri_cap_on; 
  wire attr_vfg7_pri_cap_on; 
  wire attr_pf8_pri_cap_on; 
  wire attr_vfg8_pri_cap_on; 
  wire attr_pf9_pri_cap_on; 
  wire attr_vfg9_pri_cap_on; 
  wire attr_pf10_pri_cap_on; 
  wire attr_vfg10_pri_cap_on; 
  wire attr_pf11_pri_cap_on; 
  wire attr_vfg11_pri_cap_on; 
  wire attr_pf12_pri_cap_on; 
  wire attr_vfg12_pri_cap_on; 
  wire attr_pf13_pri_cap_on; 
  wire attr_vfg13_pri_cap_on; 
  wire attr_pf14_pri_cap_on; 
  wire attr_vfg14_pri_cap_on; 
  wire attr_pf15_pri_cap_on; 
  wire attr_vfg15_pri_cap_on; 


  wire [15:0] attr_pf0_sriov_cap_total_vf; 
  wire [15:0] attr_pf1_sriov_cap_total_vf; 
  wire [15:0] attr_pf2_sriov_cap_total_vf; 
  wire [15:0] attr_pf3_sriov_cap_total_vf; 
  wire [15:0] attr_pf4_sriov_cap_total_vf; 
  wire [15:0] attr_pf5_sriov_cap_total_vf; 
  wire [15:0] attr_pf6_sriov_cap_total_vf; 
  wire [15:0] attr_pf7_sriov_cap_total_vf; 
  wire [15:0] attr_pf8_sriov_cap_total_vf; 
  wire [15:0] attr_pf9_sriov_cap_total_vf; 
  wire [15:0] attr_pf10_sriov_cap_total_vf; 
  wire [15:0] attr_pf11_sriov_cap_total_vf; 
  wire [15:0] attr_pf12_sriov_cap_total_vf; 
  wire [15:0] attr_pf13_sriov_cap_total_vf; 
  wire [15:0] attr_pf14_sriov_cap_total_vf; 
  wire [15:0] attr_pf15_sriov_cap_total_vf; 
  wire [15:0] attr_pf0_sriov_first_vf_offset; 
  wire [15:0] attr_pf1_sriov_first_vf_offset; 
  wire [15:0] attr_pf2_sriov_first_vf_offset; 
  wire [15:0] attr_pf3_sriov_first_vf_offset; 
  wire [15:0] attr_pf4_sriov_first_vf_offset; 
  wire [15:0] attr_pf5_sriov_first_vf_offset; 
  wire [15:0] attr_pf6_sriov_first_vf_offset; 
  wire [15:0] attr_pf7_sriov_first_vf_offset; 
  wire [15:0] attr_pf8_sriov_first_vf_offset; 
  wire [15:0] attr_pf9_sriov_first_vf_offset; 
  wire [15:0] attr_pf10_sriov_first_vf_offset; 
  wire [15:0] attr_pf11_sriov_first_vf_offset; 
  wire [15:0] attr_pf12_sriov_first_vf_offset; 
  wire [15:0] attr_pf13_sriov_first_vf_offset; 
  wire [15:0] attr_pf14_sriov_first_vf_offset; 
  wire [15:0] attr_pf15_sriov_first_vf_offset; 

 
  wire        attr_pf0_pasid_cap_on;

  wire m_axis_cq_credit;
  wire m_axis_rc_credit;

  assign attr_ari_cap_enable = C_ARI_CAP_ENABLE;
  assign attr_pf0_pasid_cap_on = C_PASID_CAP_ON;
  assign attr_tl_pf_enable_reg = C_TL_PF_ENABLE_REG;
  assign attr_sriov_cap_enable = C_SRIOV_CAP_ENABLE;

  assign attr_pf0_sriov_cap_total_vf= C_PF0_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf1_sriov_cap_total_vf= C_PF1_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf2_sriov_cap_total_vf= C_PF2_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf3_sriov_cap_total_vf= C_PF3_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf4_sriov_cap_total_vf= C_PF4_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf5_sriov_cap_total_vf= C_PF5_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf6_sriov_cap_total_vf= C_PF6_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf7_sriov_cap_total_vf= C_PF7_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf8_sriov_cap_total_vf= C_PF8_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf9_sriov_cap_total_vf= C_PF9_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf10_sriov_cap_total_vf= C_PF10_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf11_sriov_cap_total_vf= C_PF11_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf12_sriov_cap_total_vf= C_PF12_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf13_sriov_cap_total_vf= C_PF13_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf14_sriov_cap_total_vf= C_PF14_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf15_sriov_cap_total_vf= C_PF15_SRIOV_CAP_TOTAL_VF; 
  assign attr_pf0_sriov_first_vf_offset= C_PF0_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf1_sriov_first_vf_offset= C_PF1_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf2_sriov_first_vf_offset= C_PF2_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf3_sriov_first_vf_offset= C_PF3_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf4_sriov_first_vf_offset= C_PF4_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf5_sriov_first_vf_offset= C_PF5_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf6_sriov_first_vf_offset= C_PF6_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf7_sriov_first_vf_offset= C_PF7_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf8_sriov_first_vf_offset= C_PF8_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf9_sriov_first_vf_offset= C_PF9_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf10_sriov_first_vf_offset= C_PF10_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf11_sriov_first_vf_offset= C_PF11_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf12_sriov_first_vf_offset= C_PF12_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf13_sriov_first_vf_offset= C_PF13_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf14_sriov_first_vf_offset= C_PF14_SRIOV_FIRST_VF_OFFSET; 
  assign attr_pf15_sriov_first_vf_offset= C_PF15_SRIOV_FIRST_VF_OFFSET; 

  
  assign attr_pf0_ats_cap_on = C_PF0_ATS_CAP_ON; 
  assign attr_vfg0_ats_cap_on = C_VFG0_ATS_CAP_ON; 
  assign attr_pf1_ats_cap_on = C_PF1_ATS_CAP_ON; 
  assign attr_vfg1_ats_cap_on = C_VFG1_ATS_CAP_ON; 
  assign attr_pf2_ats_cap_on = C_PF2_ATS_CAP_ON; 
  assign attr_vfg2_ats_cap_on = C_VFG2_ATS_CAP_ON; 
  assign attr_pf3_ats_cap_on = C_PF3_ATS_CAP_ON; 
  assign attr_vfg3_ats_cap_on = C_VFG3_ATS_CAP_ON; 
  assign attr_pf4_ats_cap_on = C_PF4_ATS_CAP_ON; 
  assign attr_vfg4_ats_cap_on = C_VFG4_ATS_CAP_ON; 
  assign attr_pf5_ats_cap_on = C_PF5_ATS_CAP_ON; 
  assign attr_vfg5_ats_cap_on = C_VFG5_ATS_CAP_ON; 
  assign attr_pf6_ats_cap_on = C_PF6_ATS_CAP_ON; 
  assign attr_vfg6_ats_cap_on = C_VFG6_ATS_CAP_ON; 
  assign attr_pf7_ats_cap_on = C_PF7_ATS_CAP_ON; 
  assign attr_vfg7_ats_cap_on = C_VFG7_ATS_CAP_ON; 
  assign attr_pf8_ats_cap_on = C_PF8_ATS_CAP_ON; 
  assign attr_vfg8_ats_cap_on = C_VFG8_ATS_CAP_ON; 
  assign attr_pf9_ats_cap_on = C_PF9_ATS_CAP_ON; 
  assign attr_vfg9_ats_cap_on = C_VFG9_ATS_CAP_ON; 
  assign attr_pf10_ats_cap_on = C_PF10_ATS_CAP_ON; 
  assign attr_vfg10_ats_cap_on = C_VFG10_ATS_CAP_ON; 
  assign attr_pf11_ats_cap_on = C_PF11_ATS_CAP_ON; 
  assign attr_vfg11_ats_cap_on = C_VFG11_ATS_CAP_ON; 
  assign attr_pf12_ats_cap_on = C_PF12_ATS_CAP_ON; 
  assign attr_vfg12_ats_cap_on = C_VFG12_ATS_CAP_ON; 
  assign attr_pf13_ats_cap_on = C_PF13_ATS_CAP_ON; 
  assign attr_vfg13_ats_cap_on = C_VFG13_ATS_CAP_ON; 
  assign attr_pf14_ats_cap_on = C_PF14_ATS_CAP_ON; 
  assign attr_vfg14_ats_cap_on = C_VFG14_ATS_CAP_ON; 
  assign attr_pf15_ats_cap_on = C_PF15_ATS_CAP_ON; 
  assign attr_vfg15_ats_cap_on = C_VFG15_ATS_CAP_ON; 
  assign attr_pf0_pri_cap_on = C_PF0_PRI_CAP_ON; 
  assign attr_vfg0_pri_cap_on = C_VFG0_PRI_CAP_ON; 
  assign attr_pf1_pri_cap_on = C_PF1_PRI_CAP_ON; 
  assign attr_vfg1_pri_cap_on = C_VFG1_PRI_CAP_ON; 
  assign attr_pf2_pri_cap_on = C_PF2_PRI_CAP_ON; 
  assign attr_vfg2_pri_cap_on = C_VFG2_PRI_CAP_ON; 
  assign attr_pf3_pri_cap_on = C_PF3_PRI_CAP_ON; 
  assign attr_vfg3_pri_cap_on = C_VFG3_PRI_CAP_ON; 
  assign attr_pf4_pri_cap_on = C_PF4_PRI_CAP_ON; 
  assign attr_vfg4_pri_cap_on = C_VFG4_PRI_CAP_ON; 
  assign attr_pf5_pri_cap_on = C_PF5_PRI_CAP_ON; 
  assign attr_vfg5_pri_cap_on = C_VFG5_PRI_CAP_ON; 
  assign attr_pf6_pri_cap_on = C_PF6_PRI_CAP_ON; 
  assign attr_vfg6_pri_cap_on = C_VFG6_PRI_CAP_ON; 
  assign attr_pf7_pri_cap_on = C_PF7_PRI_CAP_ON; 
  assign attr_vfg7_pri_cap_on = C_VFG7_PRI_CAP_ON; 
  assign attr_pf8_pri_cap_on = C_PF8_PRI_CAP_ON; 
  assign attr_vfg8_pri_cap_on = C_VFG8_PRI_CAP_ON; 
  assign attr_pf9_pri_cap_on = C_PF9_PRI_CAP_ON; 
  assign attr_vfg9_pri_cap_on = C_VFG9_PRI_CAP_ON; 
  assign attr_pf10_pri_cap_on = C_PF10_PRI_CAP_ON; 
  assign attr_vfg10_pri_cap_on = C_VFG10_PRI_CAP_ON; 
  assign attr_pf11_pri_cap_on = C_PF11_PRI_CAP_ON; 
  assign attr_vfg11_pri_cap_on = C_VFG11_PRI_CAP_ON; 
  assign attr_pf12_pri_cap_on = C_PF12_PRI_CAP_ON; 
  assign attr_vfg12_pri_cap_on = C_VFG12_PRI_CAP_ON; 
  assign attr_pf13_pri_cap_on = C_PF13_PRI_CAP_ON; 
  assign attr_vfg13_pri_cap_on = C_VFG13_PRI_CAP_ON; 
  assign attr_pf14_pri_cap_on = C_PF14_PRI_CAP_ON; 
  assign attr_vfg14_pri_cap_on = C_VFG14_PRI_CAP_ON; 
  assign attr_pf15_pri_cap_on = C_PF15_PRI_CAP_ON; 
  assign attr_vfg15_pri_cap_on = C_VFG15_PRI_CAP_ON; 


  wire sys_or_hot_rst;
  wire user_reset_int;
  wire user_lnk_up_int;
  reg  user_reset_cdc_o;
  reg  user_lnk_up_cdc_o;

  assign user_lnk_up_int = (cfg_phy_link_status == 2'b11 ) ? 1'b1 : 1'b0;
  assign sys_or_hot_rst = !phy_rdy ||  cfg_hot_reset_out;

  // CDC for the user_lnk_up output
  // this will deassert asynchronously with phy_ready and assert synchronously
  xpm_cdc_async_rst #(
    .DEST_SYNC_FF   (2),
    .RST_ACTIVE_HIGH(0)
  ) user_lnk_up_cdc (
    .src_arst (user_lnk_up_int),
    .dest_arst(user_lnk_up_cdc_o),
    .dest_clk (user_clk)
  );

  // Additional reset register that can be replicated by the tools to facilitate timing closure
  always @(posedge user_clk or negedge user_lnk_up_int) begin
    if(!user_lnk_up_int) begin
      user_lnk_up <= 1'b0;
    end else begin
      user_lnk_up <= user_lnk_up_cdc_o;
    end
  end

  // CDC for the user_reset output
  // this will assert asynchronously with phy_ready and deassert synchronously
  assign user_reset_int = sys_or_hot_rst || cfg_phy_link_down || !cfg_phy_link_status[1];

  xpm_cdc_async_rst #(
    .DEST_SYNC_FF   (2),
    .RST_ACTIVE_HIGH(1)
  ) user_reset_cdc (
    .src_arst (user_reset_int),
    .dest_arst(user_reset_cdc_o),
    .dest_clk (user_clk)
  );
  // Additional reset register that can be replicated by the tools to facilitate timing closure
  always @(posedge user_clk or posedge user_reset_int) begin
    if(user_reset_int) begin
      user_reset <= 1'b1;
    end else begin
      user_reset <= user_reset_cdc_o;
    end
  end

  // VF Decode0 Module

  cpm5_v1_0_12_pcie_4_0_vf_decode_attr #(
    .TCQ         (TCQ),
    .NUM_PFS     (16),
    .NUM_VFS     (240)
  ) pcie_4_0_vf_decode_inst (

    .clk_i(user_clk),
    .reset_i(!phy_rdy),
    .link_down_i(cfg_phy_link_down),

    .cfg_ext_write_data_i(cfg_ext_write_data),
    .cfg_ext_write_received_i(cfg_ext_write_received),
    .cfg_ext_register_number_i(cfg_ext_register_number),
    .cfg_ext_function_number_i(cfg_ext_function_number),
    .cfg_ext_write_byte_enable_i(cfg_ext_write_byte_enable),
    
    .cfg_pri_control_o(cfg_pri_control),
    .cfg_pasid_control_o(cfg_pasid_control),
    .cfg_flr_in_process_i(cfg_flr_in_process),
    .cfg_interrupt_msix_vf_mask_o(cfg_msix_vf_mask),
    .cfg_ats_control_enable_o(cfg_ats_control_enable),
    .cfg_interrupt_msix_vf_enable_o(cfg_msix_vf_enable),
    
    .cfg_vf_status_o(cfg_vf_status),
    .cfg_vf_flr_done_i(cfg_vf_flr_done), 
    .cfg_vf_power_state_o(cfg_vf_power_state),
    .cfg_vf_tph_st_mode_o(cfg_vf_tph_st_mode),
    .cfg_vf_flr_func_num_i(cfg_vf_flr_func_num),
    .cfg_vf_flr_in_process_o(cfg_vf_flr_in_process),
    .cfg_vf_ats_control_enable_o(cfg_vf_ats_control_enable),
    .cfg_max_pasid_width_control_o(cfg_max_pasid_width_control),
    .cfg_vf_tph_requester_enable_o(cfg_vf_tph_requester_enable),

    .attr_tl_pf_enable_reg_i(attr_tl_pf_enable_reg),

    .attr_pf0_pri_cap_on_i(attr_pf0_pri_cap_on),
    .attr_pf0_ats_cap_on_i(attr_pf0_ats_cap_on),
    .attr_vfg0_ats_cap_on_i(attr_vfg0_ats_cap_on),
    .attr_pf0_sriov_cap_total_vf_i(attr_pf0_sriov_cap_total_vf),
    .attr_pf0_sriov_first_vf_offset_i(attr_pf0_sriov_first_vf_offset),
    .attr_pf1_pri_cap_on_i(attr_pf1_pri_cap_on),
    .attr_pf1_ats_cap_on_i(attr_pf1_ats_cap_on),
    .attr_vfg1_ats_cap_on_i(attr_vfg1_ats_cap_on),
    .attr_pf1_sriov_cap_total_vf_i(attr_pf1_sriov_cap_total_vf),
    .attr_pf1_sriov_first_vf_offset_i(attr_pf1_sriov_first_vf_offset),
    .attr_pf2_pri_cap_on_i(attr_pf2_pri_cap_on),
    .attr_pf2_ats_cap_on_i(attr_pf2_ats_cap_on),
    .attr_vfg2_ats_cap_on_i(attr_vfg2_ats_cap_on),
    .attr_pf2_sriov_cap_total_vf_i(attr_pf2_sriov_cap_total_vf),
    .attr_pf2_sriov_first_vf_offset_i(attr_pf2_sriov_first_vf_offset),
    .attr_pf3_pri_cap_on_i(attr_pf3_pri_cap_on),
    .attr_pf3_ats_cap_on_i(attr_pf3_ats_cap_on),
    .attr_vfg3_ats_cap_on_i(attr_vfg3_ats_cap_on),
    .attr_pf3_sriov_cap_total_vf_i(attr_pf3_sriov_cap_total_vf),
    .attr_pf3_sriov_first_vf_offset_i(attr_pf3_sriov_first_vf_offset),
    .attr_pf4_pri_cap_on_i(attr_pf4_pri_cap_on),
    .attr_pf4_ats_cap_on_i(attr_pf4_ats_cap_on),
    .attr_vfg4_ats_cap_on_i(attr_vfg4_ats_cap_on),
    .attr_pf4_sriov_cap_total_vf_i(attr_pf4_sriov_cap_total_vf),
    .attr_pf4_sriov_first_vf_offset_i(attr_pf4_sriov_first_vf_offset),
    .attr_pf5_pri_cap_on_i(attr_pf5_pri_cap_on),
    .attr_pf5_ats_cap_on_i(attr_pf5_ats_cap_on),
    .attr_vfg5_ats_cap_on_i(attr_vfg5_ats_cap_on),
    .attr_pf5_sriov_cap_total_vf_i(attr_pf5_sriov_cap_total_vf),
    .attr_pf5_sriov_first_vf_offset_i(attr_pf5_sriov_first_vf_offset),
    .attr_pf6_pri_cap_on_i(attr_pf6_pri_cap_on),
    .attr_pf6_ats_cap_on_i(attr_pf6_ats_cap_on),
    .attr_vfg6_ats_cap_on_i(attr_vfg6_ats_cap_on),
    .attr_pf6_sriov_cap_total_vf_i(attr_pf6_sriov_cap_total_vf),
    .attr_pf6_sriov_first_vf_offset_i(attr_pf6_sriov_first_vf_offset),
    .attr_pf7_pri_cap_on_i(attr_pf7_pri_cap_on),
    .attr_pf7_ats_cap_on_i(attr_pf7_ats_cap_on),
    .attr_vfg7_ats_cap_on_i(attr_vfg7_ats_cap_on),
    .attr_pf7_sriov_cap_total_vf_i(attr_pf7_sriov_cap_total_vf),
    .attr_pf7_sriov_first_vf_offset_i(attr_pf7_sriov_first_vf_offset),
    .attr_pf8_pri_cap_on_i(attr_pf8_pri_cap_on),
    .attr_pf8_ats_cap_on_i(attr_pf8_ats_cap_on),
    .attr_vfg8_ats_cap_on_i(attr_vfg8_ats_cap_on),
    .attr_pf8_sriov_cap_total_vf_i(attr_pf8_sriov_cap_total_vf),
    .attr_pf8_sriov_first_vf_offset_i(attr_pf8_sriov_first_vf_offset),
    .attr_pf9_pri_cap_on_i(attr_pf9_pri_cap_on),
    .attr_pf9_ats_cap_on_i(attr_pf9_ats_cap_on),
    .attr_vfg9_ats_cap_on_i(attr_vfg9_ats_cap_on),
    .attr_pf9_sriov_cap_total_vf_i(attr_pf9_sriov_cap_total_vf),
    .attr_pf9_sriov_first_vf_offset_i(attr_pf9_sriov_first_vf_offset),
    .attr_pf10_pri_cap_on_i(attr_pf10_pri_cap_on),
    .attr_pf10_ats_cap_on_i(attr_pf10_ats_cap_on),
    .attr_vfg10_ats_cap_on_i(attr_vfg10_ats_cap_on),
    .attr_pf10_sriov_cap_total_vf_i(attr_pf10_sriov_cap_total_vf),
    .attr_pf10_sriov_first_vf_offset_i(attr_pf10_sriov_first_vf_offset),
    .attr_pf11_pri_cap_on_i(attr_pf11_pri_cap_on),
    .attr_pf11_ats_cap_on_i(attr_pf11_ats_cap_on),
    .attr_vfg11_ats_cap_on_i(attr_vfg11_ats_cap_on),
    .attr_pf11_sriov_cap_total_vf_i(attr_pf11_sriov_cap_total_vf),
    .attr_pf11_sriov_first_vf_offset_i(attr_pf11_sriov_first_vf_offset),
    .attr_pf12_pri_cap_on_i(attr_pf12_pri_cap_on),
    .attr_pf12_ats_cap_on_i(attr_pf12_ats_cap_on),
    .attr_vfg12_ats_cap_on_i(attr_vfg12_ats_cap_on),
    .attr_pf12_sriov_cap_total_vf_i(attr_pf12_sriov_cap_total_vf),
    .attr_pf12_sriov_first_vf_offset_i(attr_pf12_sriov_first_vf_offset),
    .attr_pf13_pri_cap_on_i(attr_pf13_pri_cap_on),
    .attr_pf13_ats_cap_on_i(attr_pf13_ats_cap_on),
    .attr_vfg13_ats_cap_on_i(attr_vfg13_ats_cap_on),
    .attr_pf13_sriov_cap_total_vf_i(attr_pf13_sriov_cap_total_vf),
    .attr_pf13_sriov_first_vf_offset_i(attr_pf13_sriov_first_vf_offset),
    .attr_pf14_pri_cap_on_i(attr_pf14_pri_cap_on),
    .attr_pf14_ats_cap_on_i(attr_pf14_ats_cap_on),
    .attr_vfg14_ats_cap_on_i(attr_vfg14_ats_cap_on),
    .attr_pf14_sriov_cap_total_vf_i(attr_pf14_sriov_cap_total_vf),
    .attr_pf14_sriov_first_vf_offset_i(attr_pf14_sriov_first_vf_offset),
    .attr_pf15_pri_cap_on_i(attr_pf15_pri_cap_on),
    .attr_pf15_ats_cap_on_i(attr_pf15_ats_cap_on),
    .attr_vfg15_ats_cap_on_i(attr_vfg15_ats_cap_on),
    .attr_pf15_sriov_cap_total_vf_i(attr_pf15_sriov_cap_total_vf),
    .attr_pf15_sriov_first_vf_offset_i(attr_pf15_sriov_first_vf_offset),


    .attr_ari_cap_enable_i(attr_ari_cap_enable),
    .attr_sriov_cap_enable_i(attr_sriov_cap_enable),
    .attr_pf0_pasid_cap_on_i(attr_pf0_pasid_cap_on)
  );


  // PL EQ0 Interface Module
  cpm5_v1_0_12_pcie_4_0_pl_eq_attr # (
    .TCQ(TCQ)
  ) pcie_4_0_pl_eq_inst (
    .clk_i(user_clk),
    .reset_i (!phy_rdy),

    .link_down_reset_i(cfg_phy_link_down),
    .cfg_ltssm_state_i(cfg_ltssm_state[5:0]),

    .pl_redo_eq_i(pl_gen34_redo_equalization_i),
    .pl_redo_eq_speed_i(pl_gen34_redo_eq_speed_i),
    .pl_gen34_eq_mismatch_i(pl_gen34_eq_mismatch_i),

    .pl_eq_mismatch_o(pl_eq_mismatch_o),
    .pl_redo_eq_pending_o(pl_redo_eq_pending_o),
    .pl_gen34_redo_eq_speed_o(pl_gen34_redo_eq_speed_o),
    .pl_gen34_redo_equalization_o(pl_gen34_redo_equalization_o),

    .attr_pl_upstream_facing_i(attr_pl_upstream_facing_i)
  );  
  
endmodule


