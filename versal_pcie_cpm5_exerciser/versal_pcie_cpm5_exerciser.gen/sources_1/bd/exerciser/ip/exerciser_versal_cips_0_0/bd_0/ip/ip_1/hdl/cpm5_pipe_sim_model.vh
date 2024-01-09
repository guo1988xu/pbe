
// The PIPE CDC is designed that as an EP we're responsible to take in clk from the RP.
// As an RP, assumtion that our clk is the reference clk and link partner aligns to us.

/////////////// phy_rdy, rcvr det , speed_change & gt_powerdown ///////////////
always @ (posedge pipe_clk)
begin
  phy_rdy_reg <= {phy_rdy_reg[30:0], perst0n};
  rcvr_det_reg <= {rcvr_det_reg[30:0], pipe_tx0_rcvr_det};
  pipe_rate_reg <= {pipe_rate_reg[8:0], tx_rate_comm[2:0]};
  gt_powerdown_reg <= {gt_powerdown_reg[5:0],pcie0_pipe_tx_0[41:40]};
end 

assign phy_rdy  =  phy_rdy_reg[31];
assign rcvr_det = ~rcvr_det_reg[30] && rcvr_det_reg[29];

assign speed_change = (pipe_rate_reg[11:9] != pipe_rate_reg[8:6])? 1'b1 : 1'b0;
assign gt_powerdown = (gt_powerdown_reg[7:6] == 2'b10 && gt_powerdown_reg[5:4] == 2'b0)? 1'b1 : 1'b0;

/////////////// generate Rx status and Phy status /////////////// 
assign  rx_status  = (pipe_tx0_rcvr_det && rcvr_det) ? 3'b011 : 3'b0;
assign  phy_status = (pipe_tx0_rcvr_det && rcvr_det) || speed_change || gt_powerdown ;

/////////////// generate clocks for pipe mode ///////////////
cpm5_v1_0_12_versal_smsw_sys_clk_gen_ps #(.offset(7500),.halfcycle(500))  clk_gen_1000 (.sys_clk(clk_1000));
cpm5_v1_0_12_versal_smsw_sys_clk_gen_ps #(.offset(7000),.halfcycle(1000)) clk_gen_500  (.sys_clk(clk_500));
cpm5_v1_0_12_versal_smsw_sys_clk_gen_ps #(.offset(6000),.halfcycle(2000)) clk_gen_250  (.sys_clk(clk_250));
cpm5_v1_0_12_versal_smsw_sys_clk_gen_ps #(.offset(4000),.halfcycle(4000)) clk_gen_125  (.sys_clk(clk_125));
cpm5_v1_0_12_versal_smsw_sys_clk_gen_ps #(.offset(0000),.halfcycle(8000)) clk_gen_62_5 (.sys_clk(clk_62_5));

// Versal should not use these generated clocks because BUFGGTs are internal to the CPM SecureIPs.
// Versal should use BUFGGT_DIVs
assign mcap_clk = (C_CPM_PCIE0_USER_CLK_FREQ == "500_MHz" || C_CPM_PCIE0_USER_CLK_FREQ == "250_MHz" || C_CPM_PCIE0_USER_CLK_FREQ == "125_MHz") ? clk_125 : user_clk;
assign pipe_clk_fr = (tx_rate_comm[2]  == 1'b1)? clk_1000 :
                     (tx_rate_comm[1:0] == 2'b0)? clk_125 : 
                     (tx_rate_comm[1:0] == 2'b1)? clk_250 :
                                                  clk_500; // G1 = 125; G2 = 250; G3/G4 = 500; G5 = 1000;

// pipe_clk assigned at the wires file
assign core_clk = (C_CPM_PCIE0_CORE_CLK_FREQ == "1000_MHz") ? clk_1000 :
                  (C_CPM_PCIE0_CORE_CLK_FREQ == "500_MHz")  ? clk_500  :
                                                              clk_250;
                                                              
assign user_clk = (C_CPM_PCIE0_USER_CLK_FREQ == "500_MHz") ? clk_500 :
                  (C_CPM_PCIE0_USER_CLK_FREQ == "250_MHz") ? clk_250 :
                  (C_CPM_PCIE0_USER_CLK_FREQ == "125_MHz") ? clk_125 :
                                                             clk_62_5;

// BUFG_GT DIVs
//generate
if (C_CPM_PCIE0_CORE_CLK_FREQ == "1000_MHz")
begin
  assign txout_clk   = clk_1000;
  assign pipeclk_div = (tx_rate_comm[2]  == 1'b1)? 'd0 :
                       (tx_rate_comm[1:0] == 2'b0)? 'd7 : 
                       (tx_rate_comm[1:0] == 2'b1)? 'd3 :
                                                           'd1; // G1 = 125; G2 = 250; G3/G4 = 500; G5 = 1000;
  assign coreclk_div = 0; // Coreclk = TXoutclk
  assign userclk_div = (C_CPM_PCIE0_USER_CLK_FREQ == "500_MHz") ? 'd1 :
                       (C_CPM_PCIE0_USER_CLK_FREQ == "250_MHz") ? 'd3 :
                       (C_CPM_PCIE0_USER_CLK_FREQ == "125_MHz") ? 'd7 :
                                                                  'd15;
                                                                  
  assign userclk2_div = (C_CPM_PCIE0_USER_CLK2_FREQ == "500_MHz") ? 'd1 :
                        (C_CPM_PCIE0_USER_CLK2_FREQ == "250_MHz") ? 'd3 :
                        (C_CPM_PCIE0_USER_CLK2_FREQ == "125_MHz") ? 'd7 :
                                                                    'd15;
end
if (C_CPM_PCIE0_CORE_CLK_FREQ == "500_MHz") // This frequency doesn't support gen5
begin
  assign txout_clk   = clk_500;
  assign pipeclk_div = (tx_rate_comm[1:0] == 2'b0)? 'd3 : 
                       (tx_rate_comm[1:0] == 2'b1)? 'd1 :
                                                           'd0; // G1 = 125; G2 = 250; G3/G4 = 500; G5 = 1000;
  assign coreclk_div = 0; // Coreclk = TXoutclk
  assign userclk_div = (C_CPM_PCIE0_USER_CLK_FREQ == "500_MHz") ? 'd0 :
                       (C_CPM_PCIE0_USER_CLK_FREQ == "250_MHz") ? 'd1 :
                       (C_CPM_PCIE0_USER_CLK_FREQ == "125_MHz") ? 'd3 :
                                                                  'd7;
  assign userclk2_div = (C_CPM_PCIE0_USER_CLK2_FREQ == "500_MHz") ? 'd0 :
                        (C_CPM_PCIE0_USER_CLK2_FREQ == "250_MHz") ? 'd1 :
                        (C_CPM_PCIE0_USER_CLK2_FREQ == "125_MHz") ? 'd3 :
                                                                    'd7;
end
if (C_CPM_PCIE0_CORE_CLK_FREQ == "250_MHz") // This frequency doesn't support gen3/4/5
begin
  assign txout_clk   = clk_250;
  assign pipeclk_div = (tx_rate_comm[1:0] == 2'b0)? 'd1 : 
                                                           'd0; // G1 = 125; G2 = 250; G3/G4 = 500; G5 = 1000;
  assign coreclk_div = 0; // Coreclk = TXoutclk
  assign userclk_div = (C_CPM_PCIE0_USER_CLK_FREQ == "250_MHz") ? 'd0 :
                       (C_CPM_PCIE0_USER_CLK_FREQ == "125_MHz") ? 'd1 :
                                                                  'd3;
  assign userclk2_div = (C_CPM_PCIE0_USER_CLK2_FREQ == "250_MHz") ? 'd0 :
                        (C_CPM_PCIE0_USER_CLK2_FREQ == "125_MHz") ? 'd1 :
                                                                    'd3;
end
//endgenerate

// BUFG_GT Resets
// Reset once during initial link up. Once more during rate change
always @ (posedge pipe_clk_fr)
begin
  if (phy_rdy_reg[16] == 1'b0) begin
    tx_rate_prev <= 'h0;
    tx_rate_comm <= 'h0;
  end else begin
    tx_rate_prev <= tx_rate_curr;
    tx_rate_comm <= (bufggt_rst_sm == BUFGGT_SM_CEN) ? tx_rate_curr : tx_rate_comm;
  end
end

assign rate_change = (tx_rate_prev != tx_rate_curr) ? 1'b1 : 1'b0;

always @ (posedge pipe_clk_fr)
begin
  if (phy_rdy_reg[16] == 1'b0) begin
    bufggt_rst_sm <= BUFGGT_SM_IDLE;
  end else begin
    case (bufggt_rst_sm)
      BUFGGT_SM_IDLE : bufggt_rst_sm <= (rate_change) ? BUFGGT_SM_CEN : BUFGGT_SM_IDLE;
      BUFGGT_SM_CEN  : bufggt_rst_sm <= BUFGGT_SM_RST;
      BUFGGT_SM_RST  : bufggt_rst_sm <= BUFGGT_SM_CE;
      BUFGGT_SM_CE   : bufggt_rst_sm <= BUFGGT_SM_IDLE;
      default        : bufggt_rst_sm <= BUFGGT_SM_IDLE;
    endcase
  end
end

assign bufggt_ce  = ((perst0n == 1'b0) | (bufggt_rst_sm == BUFGGT_SM_CEN)) ? 1'b0 : 1'b1;
assign bufggt_rst = ((perst0n == 1'b0) | (bufggt_rst_sm == BUFGGT_SM_RST)) ? 1'b1 : 1'b0;
// These masks are required to be held in reset until CDO load completes to ensure clk_en alignment
assign bufggt_rst_mask = (perst0n == 1'b0) ? 4'b0000 : 4'b1110;
assign bufggt_ce_mask  = (perst0n == 1'b0) ? 4'b0000 : 4'b1110;

/////////////// CDC PIPE signals between RP and EP PIPECLK ///////////////
// This is new in Versal which does not take in PIPECLK input
// to allow 3rd party PIPE BFM support. Without this we would
// have to transfer the txoutclk/core_clk along with the BUFG
// signals.

assign local_pipe_clk = pipe_clk;
assign link_pipe_clk  = (C_CPM_PIPESIM_CLK_MASTER == "TRUE") ? pipe_clk : pcie0_pipe_commands_in[0];

xpm_fifo_async #(
  .WAKEUP_TIME(0),
  .READ_MODE("std"),
  .CASCADE_HEIGHT(0),
  .RELATED_CLOCKS(0),
  .SIM_ASSERT_CHK(0),
  .CDC_SYNC_STAGES(2),
  .ECC_MODE("no_ecc"),
  .FULL_RESET_VALUE(0),
  .FIFO_READ_LATENCY(0),
  .FIFO_WRITE_DEPTH(16),
  .PROG_EMPTY_THRESH(8),
  .PROG_FULL_THRESH(10),
  .DOUT_RESET_VALUE("0"),
  .RD_DATA_COUNT_WIDTH(4),
  .WR_DATA_COUNT_WIDTH(4),
  .FIFO_MEMORY_TYPE("auto"),
  .USE_ADV_FEATURES("1707"),
  
  .READ_DATA_WIDTH(C_CPM_COMM_SIGS_WIDTH+(16*C_CPM_PIPE_SIGS_WIDTH)),
  .WRITE_DATA_WIDTH(C_CPM_COMM_SIGS_WIDTH+(16*C_CPM_PIPE_SIGS_WIDTH))
) pipe_tx_async_fifo_inst (
  .wr_ack(),
  .dbiterr(),
  .sbiterr(),
  .overflow(),
  .prog_full(),
  .underflow(),
  .almost_full(),
  .rd_rst_busy(),
  .wr_rst_busy(),
  .almost_empty(),
  .rd_data_count(),
  .wr_data_count(),

  .sleep(1'b0),
  .injectdbiterr(1'b0),
  .injectsbiterr(1'b0),

  .rst(~phy_rdy),
  .rd_clk(link_pipe_clk),
  .wr_clk(local_pipe_clk),
  .din(pipe_tx_cdcfifo_din),
  .dout(pipe_tx_cdcfifo_dout),
  .full(pipe_tx_cdcfifo_full),
  .rd_en(pipe_tx_cdcfifo_rden),
  .wr_en(pipe_tx_cdcfifo_wren),
  .empty(pipe_tx_cdcfifo_empty),
  .data_valid(pipe_tx_cdcfifo_vld),
  .prog_empty(pipe_tx_cdcfifo_pmty)
);
   
// During speed change, FIFO will be filling up or emptying
// Assumption is speed change must be completed in time
// while link is still in Electrical IDLE
assign pipe_tx_cdcfifo_rden = phy_rdy ? pipe_tx_cdcfifo_primed : 1'b0;
assign pipe_tx_cdcfifo_wren = phy_rdy ? ~pipe_tx_cdcfifo_full : 1'b0;

always @(posedge pcie0_pipe_commands_in[0]) begin // rd_clk
  if (!phy_rdy)
    pipe_tx_cdcfifo_primed <= #TCQ 1'b0;
  else begin
    if (!pipe_tx_cdcfifo_pmty)
      pipe_tx_cdcfifo_primed <= #TCQ 1'b1;
    else if (pipe_tx_cdcfifo_empty)
      pipe_tx_cdcfifo_primed <= #TCQ 1'b0;
  end
end

xpm_fifo_async#(
  .WAKEUP_TIME(0),
  .READ_MODE("std"),
  .CASCADE_HEIGHT(0),
  .RELATED_CLOCKS(0),
  .SIM_ASSERT_CHK(0),
  .CDC_SYNC_STAGES(2),
  .ECC_MODE("no_ecc"),
  .FULL_RESET_VALUE(0),
  .FIFO_READ_LATENCY(0),
  .FIFO_WRITE_DEPTH(16),
  .PROG_EMPTY_THRESH(8),
  .PROG_FULL_THRESH(10),
  .DOUT_RESET_VALUE("0"),
  .RD_DATA_COUNT_WIDTH(4),
  .WR_DATA_COUNT_WIDTH(4),
  .FIFO_MEMORY_TYPE("auto"),
  .USE_ADV_FEATURES("1707"),

  .READ_DATA_WIDTH(C_CPM_COMM_SIGS_WIDTH+(16*C_CPM_PIPE_SIGS_WIDTH)),
  .WRITE_DATA_WIDTH(C_CPM_COMM_SIGS_WIDTH+(16*C_CPM_PIPE_SIGS_WIDTH))
) pipe_rx_async_fifo_inst(
  .wr_ack(),
  .dbiterr(),
  .sbiterr(),
  .overflow(),
  .prog_full(),
  .underflow(),
  .almost_full(),
  .rd_rst_busy(),
  .wr_rst_busy(),
  .almost_empty(),
  .rd_data_count(),
  .wr_data_count(),

  .sleep(1'b0),
  .injectdbiterr(1'b0),
  .injectsbiterr(1'b0),

  .rst(~phy_rdy),
  .wr_clk(link_pipe_clk),
  .rd_clk(local_pipe_clk),
  .din(pipe_rx_cdcfifo_din),
  .dout(pipe_rx_cdcfifo_dout),
  .full(pipe_rx_cdcfifo_full),
  .rd_en(pipe_rx_cdcfifo_rden),
  .wr_en(pipe_rx_cdcfifo_wren),
  .empty(pipe_rx_cdcfifo_empty),
  .data_valid(pipe_rx_cdcfifo_vld),
  .prog_empty(pipe_rx_cdcfifo_pmty)
);

// During speed change, FIFO will fill up or emptying
// Assumption is speed change must be completed in time
// while link is in Electrical IDLE
assign pipe_rx_cdcfifo_wren = phy_rdy ? ~pipe_rx_cdcfifo_full : 1'b0;
assign pipe_rx_cdcfifo_rden = phy_rdy ? pipe_rx_cdcfifo_primed : 1'b0;

always @(posedge pcie0_pipe_commands_in[0]) begin // rd_clk
  if (!phy_rdy)
    pipe_rx_cdcfifo_primed <= #TCQ 1'b0;
  else begin
    if (!pipe_rx_cdcfifo_pmty)
      pipe_rx_cdcfifo_primed <= #TCQ 1'b1;
    else if (pipe_rx_cdcfifo_empty)
      pipe_rx_cdcfifo_primed <= #TCQ 1'b0;
  end
end
