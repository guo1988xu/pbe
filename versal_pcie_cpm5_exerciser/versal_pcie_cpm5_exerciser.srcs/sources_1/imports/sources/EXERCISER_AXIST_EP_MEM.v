// ////////////////////////////////////////////////////////////////////////
// Copyright (C) 2019, Xilinx Inc - All rights reserved
//
// Licensed under the Apache License, Version 2.0 (the "License"). You may
// not use this file except in compliance with the License. A copy of the
// License is located at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// ////////////////////////////////////////////////////////////////////////
`timescale 1ps / 1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_EP_MEM  #(
    parameter NUM_GP_PORTS = 20
)(

   input             clk,                                  // I
   input             rst_n,                                // I

   input  [3:0]	     cfg_neg_max_lnk_width,                // I [3:0]
   input  [1:0]	     cfg_prg_max_payload_size,             // I [1:0]
   input  [2:0]	     cfg_max_rd_req_size,                  // I [2:0]
   input             cfg_bus_mstr_enable,

   input      [6:0]	  a_i,                                  // I [8:0]
   input	          wr_en_i,                              // I
   output reg [31:0]  rd_d_o,                               // O [31:0]
   input      [31:0]  wr_d_i,                               // I [31:0]

   // Local Regs
   output reg          init_rst_o,                           // O
   (*mark_debug*) output reg  mrd_start_o,          // O
   output reg          mrd_int_dis_o,                        // O
   (*mark_debug*) output reg  mrd_done_o,               // O
   output reg [31:0]   mrd_addr_o,                           // O [31:0]
   output reg [15:0]   mrd_len_o,                            // O [31:0]
   output reg [2:0]    mrd_tlp_tc_o,                         // O [2:0]
   output reg          mrd_64b_en_o,                         // O
   output reg          mrd_phant_func_dis1_o,                // O
   output reg [7:0]    mrd_up_addr_o,                        // O [7:0]
   output reg [15:0]   mrd_count_o,                          // O [31:0]
   input            mrd_done_i,                           // I
   output reg          mrd_relaxed_order_o,                  // O
   output reg          mrd_nosnoop_o,                        // O
   output reg [7:0]    mrd_wrr_cnt_o,                        // O [7:0]

   output reg          mwr_start_o,                          // O
   output reg          mwr_int_dis_o,                        // O
   input            mwr_done_i,                           // I
   output reg [31:0]   mwr_addr_o,                           // O [31:0]
   output reg [15:0]   mwr_len_o,                            // O [31:0]
   output reg [2:0]    mwr_tlp_tc_o,                         // O [2:0]
   output reg          mwr_64b_en_o,                         // O
   output reg          mwr_phant_func_dis1_o,                // O
   output reg [7:0]    mwr_up_addr_o,                        // O [7:0]
   output reg [15:0]   mwr_count_o,                          // O [31:0]
   output reg [31:0]   mwr_data_o,                           // O [31:0]
   output reg          mwr_relaxed_order_o,                  // O
   output reg          mwr_nosnoop_o,                        // O
   output reg [7:0]    mwr_wrr_cnt_o,                        // O [7:0]
   output reg          mwr_zerolen_en_o,                     // O
   input      [7:0]	   cpl_ur_found_i,                       // I [7:0]
   input      [7:0]	   cpl_ur_tag_i,                         // I [7:0]

   output reg [31:0]   cpld_data_o,                           // O [31:0]
   input      [31:0]   cpld_found_i,                          // I [31:0]
   input      [31:0]   cpld_data_size_i,                      // I [31:0]
   (* mark_debug *)   input    cpld_malformed_i,   // I
   (* mark_debug *)   input    cpld_data_err_i,    // I
   output reg           rd_metering_o,                         // O
   input                tags_all_back_i,

   output reg           cfg_err_cor_o,

   output reg [31:0]    aer_err_cor_o,
   output reg [31:0]    aer_err_uncor_o,

   output reg [31:0]    aer_control_o,

//input  [(NUM_GP_PORTS*32-1):0] gp_data_upstream,
//output [(NUM_GP_PORTS*32-1):0] gp_data_dnstream,
   output reg [3:0]	    trn_wait_count

);
   reg [31:0]	    mrd_perf;
   reg [31:0]		mwr_perf;

   (*mark_debug*) reg [20:0]	expect_cpld_data_size;  // 2 GB max
   (*mark_debug*) reg [20:0]	cpld_data_size;         // 2 GB max
   (*mark_debug*) reg			cpld_done;

   reg				cpl_streaming_o;

   reg [3:0]		cfg_interrupt_int;
   reg				cfg_interrupt_sent;

   wire [7:0]	    fpga_family;
   wire [3:0]		interface_type;
   wire [7:0]	    version_number;

   assign version_number = 8'h16;
   assign interface_type = 4'b0110;

   assign fpga_family = 8'h15; //FUJI


// Create general purpose I/O. The function of these registers varies by core, and consist of:
//  - an upstream data flow (originating from core user app, consumed by EXERCISER_AXIST software)
//  - a downstream data flow (originating from EXERCISER_AXIST software, consumed by core user app)

// Create downstream registers. These will be read by core user app
/*
   reg [31:0]			  gp_data_dn0;
   reg [31:0]			  gp_data_dn1;
   reg [31:0]			  gp_data_dn2;
   reg [31:0]			  gp_data_dn3;
   reg [31:0]			  gp_data_dn4;
   reg [31:0]			  gp_data_dn5;
   reg [31:0]			  gp_data_dn6;
   reg [31:0]			  gp_data_dn7;
   reg [31:0]			  gp_data_dn8;
   reg [31:0]			  gp_data_dn9;
   reg [31:0]			  gp_data_dn10;
   reg [31:0]			  gp_data_dn11;
   reg [31:0]			  gp_data_dn12;
   reg [31:0]			  gp_data_dn13;
   reg [31:0]			  gp_data_dn14;
   reg [31:0]			  gp_data_dn15;
   reg [31:0]			  gp_data_dn16;
   reg [31:0]			  gp_data_dn17;
   reg [31:0]			  gp_data_dn18;
   reg [31:0]			  gp_data_dn19;

   // Concatinate all registers together into one downstream port for simplicity
   assign gp_data_dnstream = {gp_data_dn19, gp_data_dn18, gp_data_dn17, gp_data_dn16,
                              gp_data_dn15, gp_data_dn14, gp_data_dn13, gp_data_dn12,
                              gp_data_dn11, gp_data_dn10, gp_data_dn9,  gp_data_dn8,
                              gp_data_dn7,  gp_data_dn6,  gp_data_dn5,  gp_data_dn4,
                              gp_data_dn3,  gp_data_dn2,  gp_data_dn1,  gp_data_dn0};


   // Wire in upstream registers. THe registers themselves lie in core user app.
   // Again, concatenate into one big port for simplicity
   wire [31:0]			  gp_data_up0  = gp_data_upstream[31:0];
   wire [31:0]			  gp_data_up1  = gp_data_upstream[63:32];
   wire [31:0]			  gp_data_up2  = gp_data_upstream[95:64];
   wire [31:0]			  gp_data_up3  = gp_data_upstream[127:96];
   wire [31:0]			  gp_data_up4  = gp_data_upstream[159:128];
   wire [31:0]			  gp_data_up5  = gp_data_upstream[191:160];
   wire [31:0]			  gp_data_up6  = gp_data_upstream[223:192];
   wire [31:0]			  gp_data_up7  = gp_data_upstream[255:224];
   wire [31:0]			  gp_data_up8  = gp_data_upstream[287:256];
   wire [31:0]			  gp_data_up9  = gp_data_upstream[319:288];
   wire [31:0]			  gp_data_up10 = gp_data_upstream[351:320];
   wire [31:0]			  gp_data_up11 = gp_data_upstream[383:352];
   wire [31:0]			  gp_data_up12 = gp_data_upstream[415:384];
   wire [31:0]			  gp_data_up13 = gp_data_upstream[447:416];
   wire [31:0]			  gp_data_up14 = gp_data_upstream[479:448];
   wire [31:0]			  gp_data_up15 = gp_data_upstream[511:480];
   wire [31:0]			  gp_data_up16 = gp_data_upstream[543:512];
   wire [31:0]			  gp_data_up17 = gp_data_upstream[575:544];
   wire [31:0]			  gp_data_up18 = gp_data_upstream[607:576];
   wire [31:0]			  gp_data_up19 = gp_data_upstream[639:608];
*/
always @(posedge clk ) begin

   if ( !rst_n ) begin
      init_rst_o            <= 1'b1;
      trn_wait_count        <=4'b0;
      mrd_start_o           <= 1'b0;
      mrd_int_dis_o         <= 1'b0;
      mrd_addr_o            <= 32'b0;
      mrd_len_o             <= 16'b0;
      mrd_count_o           <= 16'b0;
      mrd_tlp_tc_o          <= 3'b0;
      mrd_64b_en_o          <= 1'b0;
      mrd_up_addr_o         <= 8'b0;
      mrd_relaxed_order_o   <= 1'b0;
      mrd_nosnoop_o         <= 1'b0;

      mwr_start_o           <= 1'b0;
      mwr_int_dis_o         <= 1'b0;
      mwr_addr_o            <= 32'b0;
      mwr_len_o             <= 16'b0;
      mwr_count_o           <= 16'b0;
      mwr_data_o            <= 32'b0;
      mwr_tlp_tc_o          <= 3'b0;
      mwr_64b_en_o          <= 1'b0;
      mwr_up_addr_o         <= 8'b0;
      mwr_relaxed_order_o   <= 1'b0;
      mwr_nosnoop_o         <= 1'b0;
      mrd_phant_func_dis1_o <= 1'b0;
      mwr_zerolen_en_o      <= 1'b0;
      mwr_phant_func_dis1_o <= 1'b0;

      cpld_data_o           <= 32'b0;
      rd_metering_o         <= 1'b0;
      mwr_wrr_cnt_o         <= 8'h04;
      mrd_wrr_cnt_o         <= 8'h04;

      cfg_err_cor_o         <= 1'b0;
      aer_err_cor_o         <= 32'b0;
      aer_err_uncor_o       <= 32'b0;
      aer_control_o         <= 32'b0;

/*
         gp_data_dn0  <= 0;
         gp_data_dn1  <= 0;
         gp_data_dn2  <= 0;
         gp_data_dn3  <= 0;
         gp_data_dn4  <= 0;
         gp_data_dn5  <= 0;
         gp_data_dn6  <= 0;
         gp_data_dn7  <= 0;
         gp_data_dn8  <= 0;
         gp_data_dn9  <= 0;
         gp_data_dn10 <= 0;
         gp_data_dn11 <= 0;
         gp_data_dn12 <= 0;
         gp_data_dn13 <= 0;
         gp_data_dn14 <= 0;
         gp_data_dn15 <= 0;
         gp_data_dn16 <= 0;
         gp_data_dn17 <= 0;
         gp_data_dn18 <= 0;
         gp_data_dn19 <= 0;
*/
      end else begin


         case (a_i[6:0])

           // 00-03H : Reg # 0
           // Byte0[0]: Initiator Reset (RW) 0= no reset 1=reset.
           // Byte2[19:16]: Data Path Width
           // Byte3[31:24]: FPGA Family
           7'b0000000: begin
              if (wr_en_i)
                init_rst_o  <= wr_d_i[0];
              rd_d_o <= {fpga_family, {4'b0}, interface_type, version_number, {7'b0}, init_rst_o};
              if (init_rst_o) begin
                 mwr_start_o <= 1'b0;
                 mrd_start_o <= 1'b0;
             end
           end

           // 04-07H :  Reg # 1
           // Byte0[0]: Memory Write Start (RW) 0=no start, 1=start
           // Byte0[7]: Memory Write Inter Disable (RW) 1=disable
           // Byte1[0]: Memory Write Done  (RO) 0=not done, 1=done
           // Byte2[0]: Memory Read Start (RW) 0=no start, 1=start
           // Byte2[7]: Memory Read Inter Disable (RW) 1=disable
           // Byte3[0]: Memory Read Done  (RO) 0=not done, 1=done
           7'b0000001: begin
              if (wr_en_i) begin
                 mwr_start_o  <= wr_d_i[0];
                 mwr_relaxed_order_o <=  wr_d_i[5];
                 mwr_nosnoop_o <= wr_d_i[6];
                 mwr_int_dis_o <= wr_d_i[7];
                 mrd_start_o  <= wr_d_i[16];
                 mrd_relaxed_order_o <=  wr_d_i[21];
                 mrd_nosnoop_o <= wr_d_i[22];
                 mrd_int_dis_o <= wr_d_i[23];
              end
             rd_d_o <= {cpld_data_err_i, 6'b0, mrd_done_i,
                         mrd_int_dis_o, 4'b0, mrd_nosnoop_o, mrd_relaxed_order_o, mrd_start_o,
                         7'b0, mwr_done_i,
                         mwr_int_dis_o, 4'b0, mwr_nosnoop_o, mwr_relaxed_order_o, mwr_start_o};
           end

           // 08-0BH : Reg # 2
           // Memory Write DMA Address (RW)
           7'b0000010: begin
              if (wr_en_i)
                mwr_addr_o  <= wr_d_i;
               rd_d_o <= mwr_addr_o;
           end

           // 0C-0FH : Reg # 3
           // Memory Write length in DWORDs (RW)
           7'b0000011: begin
              if (wr_en_i) begin
                 mwr_len_o  <= wr_d_i[15:0];
                 mwr_tlp_tc_o  <= wr_d_i[18:16];
                 mwr_64b_en_o <= wr_d_i[19];
                 mwr_phant_func_dis1_o <= wr_d_i[20];
                 mwr_up_addr_o <= wr_d_i[31:24];
	             mwr_zerolen_en_o <= wr_d_i[21];
              end
              rd_d_o <= {mwr_up_addr_o,2'b0, mwr_zerolen_en_o, mwr_phant_func_dis1_o,
                         mwr_64b_en_o, mwr_tlp_tc_o,mwr_len_o[15:0]};
           end

           // 10-13H : Reg # 4
           // Memory Write Packet Count (RW)
           7'b0000100: begin
              if (wr_en_i) begin
                 mwr_count_o  <= wr_d_i[15:0];
		         trn_wait_count<=wr_d_i[19:16];
              end
              rd_d_o <= {12'h0,trn_wait_count[3:0],
                         mwr_count_o[15:0]};
           end

           // 14-17H : Reg # 5
           // Memory Write Packet DWORD Data (RW)
           7'b000101: begin
              if (wr_en_i)
                mwr_data_o  <= wr_d_i;
                rd_d_o <= mwr_data_o;
           end

           // 18-1BH : Reg # 6
           // Completion Packet DWORD expected Data (RW)
           7'b000110: begin
              if (wr_en_i)
                cpld_data_o  <= wr_d_i;
                rd_d_o <= cpld_data_o;
           end

           // 1C-1FH : Reg # 7
           // Read DMA Address (RW)
           7'b000111: begin
              if (wr_en_i)
                mrd_addr_o  <= wr_d_i;
                rd_d_o <= mrd_addr_o;
           end

           // 20-23H : Reg # 8
           // Read length in DWORDs (RW)
           7'b001000: begin
              if (wr_en_i) begin
                 mrd_len_o  <= wr_d_i[15:0];
                 mrd_tlp_tc_o  <= wr_d_i[18:16];
                 mrd_64b_en_o <= wr_d_i[19];
                 mrd_phant_func_dis1_o <= wr_d_i[20];
                 mrd_up_addr_o <= wr_d_i[31:24];
              end
              rd_d_o <= {mrd_up_addr_o,
                         3'b0, mrd_phant_func_dis1_o, mrd_64b_en_o, mrd_tlp_tc_o,
                         mrd_len_o[15:0]};
           end

           // 24-27H : Reg # 9
           // Read Packet Count (RW)
           7'b001001: begin

              if (wr_en_i)
                mrd_count_o  <= wr_d_i;
                rd_d_o <= mrd_count_o;
              end

           // 28-2BH : Reg # 10
           // Memory Write Performance (RO)
           7'b001010: begin
              rd_d_o <= mwr_perf;
           end

           // 2C-2FH  : Reg # 11
           // Memory Read  Performance (RO)
           7'b001011: begin
              rd_d_o <= mrd_perf;
           end

           // 30-33H  : Reg # 12
           // Memory Read Completion Status (RO)
           7'b001100: begin
              rd_d_o <= {{15'b0}, cpld_malformed_i, cpl_ur_tag_i, cpl_ur_found_i};
           end

           // 34-37H  : Reg # 13
           // Memory Read Completion with Data Detected (RO)
           7'b001101: begin
              rd_d_o <= {cpld_found_i};
           end

           // 38-3BH  : Reg # 14
           // Memory Read Completion with Data Size (RO)
           7'b001110: begin

              rd_d_o <= {cpld_data_size_i};

           end

           // 3C-3FH : Reg # 15
           // Link Width (RO)
           7'b001111: begin

              rd_d_o <= {16'b0,
                         cfg_neg_max_lnk_width,
                         2'b0 };

           end

           // 40-43H : Reg # 16
           // Link Payload (RO)
           7'b010000: begin

              rd_d_o <= {8'b0,
                         5'b0, cfg_max_rd_req_size,
                         6'b0, cfg_prg_max_payload_size,
                         5'b0 };

           end

           // 44-47H : Reg # 17
           // WRR MWr
           // WRR MRd
           // Rx NP TLP Control
           // Completion Streaming Control (RW)
           // Read Metering Control (RW)


           7'b010001: begin
              if (wr_en_i) begin
                 rd_metering_o <= wr_d_i[1];
                 mwr_wrr_cnt_o <= wr_d_i[23:16];
                 mrd_wrr_cnt_o <= wr_d_i[31:24];
              end
              rd_d_o <= {mrd_wrr_cnt_o,
                         mwr_wrr_cnt_o,
                         6'b0, 1'b0, 1'b0,
                         6'b0, rd_metering_o, 1'b0};
           end


           // 48-4BH : Reg # 18
           // check later FIXME PS

           7'b010010: begin
              if (wr_en_i) begin
                 cfg_interrupt_int[3:0] <= wr_d_i[3:0];
              end
              rd_d_o <= {32'h0};
           end


            // 4c-4FH : Reg # 19
            // PCIe Error Injection
            7'b010011: begin
                if (wr_en_i) begin
                    cfg_err_cor_o  <= wr_d_i[0];
                end
                rd_d_o <= {31'b0, cfg_err_cor_o};
            end

            // 50-53H : Reg # 20
            // PCIe AER COR
            7'b010100: begin
                if (wr_en_i) begin
                    aer_err_cor_o[31:0]  <= wr_d_i[31:0];
                end
                rd_d_o <= {aer_err_cor_o};
            end

            // 54-58H : Reg # 21
            // PCIe AER UNCOR
            7'b010101: begin
                if (wr_en_i) begin
                    aer_err_uncor_o[31:0]  <= wr_d_i[31:0];
                end
                rd_d_o <= {aer_err_uncor_o};
            end

            // 59-5DH : Reg # 22
            // PCIe AER COR
            7'b010110: begin
                if (wr_en_i) begin
                    aer_control_o[31:0]  <= wr_d_i[31:0];
                end
                rd_d_o <= {aer_control_o};
            end

           // 59-63H : Reg # 20-24 - Reserved for future use
           // 7'b010100 - 7'b011000


           // 64-B3H : Reg # 25-44 - GPIO Registers
           //  - These registers are used for error signaling,
           //    debug, etc. These vary by core, since different
           //    cores have different backend debug pins.
           //  - Data is passed TO the app via gp_data_dnstream
           //  - Data is read FROM the app via gp_data_upstream
/*
           // 64-67H : Reg # 25 - General Purpose Register 0
           7'b011001: begin
              if (wr_en_i) gp_data_dn0 <= wr_d_i;
              rd_d_o <= gp_data_up0;
           end

           // 68-6BH : Reg # 26 - General Purpose Register 1
           7'b011010: begin
              if (wr_en_i) gp_data_dn1 <= wr_d_i;
              rd_d_o <= gp_data_up1;
           end

           // 6C-6FH : Reg # 27 - General Purpose Register 2
           7'b011011: begin
              if (wr_en_i) gp_data_dn2 <= wr_d_i;
              rd_d_o <= gp_data_up2;
           end

           // 70-73H : Reg # 28 - General Purpose Register 3
           7'b011100: begin
              if (wr_en_i) gp_data_dn3 <= wr_d_i;
              rd_d_o <= gp_data_up3;
           end

           // 74-77H : Reg # 29 - General Purpose Register 4
           7'b011101: begin
              if (wr_en_i) gp_data_dn4 <= wr_d_i;
              rd_d_o <= gp_data_up4;
           end

           // 78-7BH : Reg # 30 - General Purpose Register 5
           7'b011110: begin
              if (wr_en_i) gp_data_dn5 <= wr_d_i;
              rd_d_o <= gp_data_up5;
           end

           // 7C-7FH : Reg # 31 - General Purpose Register 6
           7'b011111: begin
              if (wr_en_i) gp_data_dn6 <= wr_d_i;
              rd_d_o <= gp_data_up6;
           end

           // 80-83H : Reg # 32 - General Purpose Register 7
           7'b100000: begin
              if (wr_en_i) gp_data_dn7 <= wr_d_i;
              rd_d_o <= gp_data_up7;
           end

           // 84-87H : Reg # 33 - General Purpose Register 8
           7'b100001: begin
              if (wr_en_i) gp_data_dn8 <= wr_d_i;
              rd_d_o <= gp_data_up8;
           end

           // 88-8BH : Reg # 34 - General Purpose Register 9
           7'b100010: begin
              if (wr_en_i) gp_data_dn9 <= wr_d_i;
              rd_d_o <= gp_data_up9;
           end

           // 8C-8FH : Reg # 35 - General Purpose Register 10
           7'b100011: begin
              if (wr_en_i) gp_data_dn10 <= wr_d_i;
              rd_d_o <= gp_data_up10;
           end

           // 90-93H : Reg # 36 - General Purpose Register 11
           7'b100100: begin
              if (wr_en_i) gp_data_dn11 <= wr_d_i;
              rd_d_o <= gp_data_up11;
           end

           // 94-97H : Reg # 37 - General Purpose Register 12
           7'b100101: begin
              if (wr_en_i) gp_data_dn12 <= wr_d_i;
              rd_d_o <= gp_data_up12;
           end

           // 98-9BH : Reg # 38 - General Purpose Register 13
           7'b100110: begin
              if (wr_en_i) gp_data_dn13 <= wr_d_i;
              rd_d_o <= gp_data_up13;
           end

           // 9C-9FH : Reg # 39 - General Purpose Register 14
           7'b100111: begin
              if (wr_en_i) gp_data_dn14 <= wr_d_i;
              rd_d_o <= gp_data_up14;
           end

           // A0-A3H : Reg # 40 - General Purpose Register 15
           7'b101000: begin
              if (wr_en_i) gp_data_dn15 <= wr_d_i;
              rd_d_o <= gp_data_up15;
           end

           // A4-A7H : Reg # 41 - General Purpose Register 16
           7'b101001: begin
              if (wr_en_i) gp_data_dn16 <= wr_d_i;
              rd_d_o <= gp_data_up16;
           end

           // A8-ABH : Reg # 42 - General Purpose Register 17
           7'b101010: begin
              if (wr_en_i) gp_data_dn17 <= wr_d_i;
              rd_d_o <= gp_data_up17;
           end

           // AC-AFH : Reg # 43 - General Purpose Register 18
           7'b101011: begin
              if (wr_en_i) gp_data_dn18 <= wr_d_i;
              rd_d_o <= gp_data_up18;
           end

           // B0-B3H : Reg # 44 - General Purpose Register 19
            7'b101100: begin
               if (wr_en_i) gp_data_dn19 <= wr_d_i;
              rd_d_o <= gp_data_up19;
            end
*/



           // B4-200H : Reserved
           default: begin

              rd_d_o <= 32'b0;

           end

         endcase

      end

   end


   /*
    * Memory Write Performance Instrumentation
    */

   always @(posedge clk ) begin

      if ( !rst_n ) begin

         mwr_perf <= 32'b0;

      end else begin

         if (init_rst_o)
           mwr_perf <= 32'b0;
         else if (mwr_start_o && !mwr_done_i)
           mwr_perf <= mwr_perf + 1'b1;

      end

   end

   /*
    * Memory Read Performance Instrumentation
    */

   always @(posedge clk ) begin

      if ( !rst_n ) begin

         mrd_perf <= 32'b0;

      end else begin

         if (init_rst_o)
           mrd_perf <= 32'b0;
         else if (mrd_start_o && !mrd_done_o)
           mrd_perf <= mrd_perf + 1'b1;

      end

   end


   always @(posedge clk ) begin

      if ( !rst_n ) begin

         expect_cpld_data_size  <=  21'b0;
         cpld_data_size         <=  21'b0;
         cpld_done              <=  1'b0;

      end else begin

         if (init_rst_o) begin

            expect_cpld_data_size <=  21'b0;
            cpld_data_size        <=  21'b0;
            cpld_done             <=  1'b0;

         end else begin

            expect_cpld_data_size <= mrd_len_o[15:0] * mrd_count_o[15:0];
            cpld_data_size        <= cpld_data_size_i[20:0];
            cpld_done             <= (expect_cpld_data_size == cpld_data_size) & tags_all_back_i;

         end

      end

   end

   always @(posedge clk ) begin

      if ( !rst_n )
        mrd_done_o <= 1'b0;
      else
        if (init_rst_o)
          mrd_done_o <= 1'b0;
        else if ( (mrd_start_o) && (!mrd_done_o) && (cpld_done) )
          mrd_done_o <= 1'b1;
   end

endmodule
