// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

 `timescale 1ns/1ps


`define AUTOTB_DUT      multi_axim
`define AUTOTB_DUT_INST AESL_inst_multi_axim
`define AUTOTB_TOP      apatb_multi_axim_top
`define AUTOTB_LAT_RESULT_FILE "multi_axim.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "multi_axim.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_multi_axim_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_TRANSACTION_NUM  1
`define AUTOTB_CLOCK_PERIOD 10.000000
`define LENGTH_gmem 20
`define LENGTH_x 1
`define LENGTH_y 1
`define LENGTH_ap_return 1

`define   AESL_DEPTH_gmem 1
`define   AESL_DEPTH_x 1
`define   AESL_DEPTH_y 1
`define AUTOTB_TVIN_gmem  "../tv/cdatafile/c.multi_axim.autotvin_gmem.dat"
`define AUTOTB_TVIN_x  "../tv/cdatafile/c.multi_axim.autotvin_x.dat"
`define AUTOTB_TVIN_y  "../tv/cdatafile/c.multi_axim.autotvin_y.dat"
`define AUTOTB_TVIN_gmem_out_wrapc  "../tv/rtldatafile/rtl.multi_axim.autotvin_gmem.dat"
`define AUTOTB_TVIN_x_out_wrapc  "../tv/rtldatafile/rtl.multi_axim.autotvin_x.dat"
`define AUTOTB_TVIN_y_out_wrapc  "../tv/rtldatafile/rtl.multi_axim.autotvin_y.dat"
`define AUTOTB_TVOUT_gmem  "../tv/cdatafile/c.multi_axim.autotvout_gmem.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.multi_axim.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_gmem_out_wrapc  "../tv/rtldatafile/rtl.multi_axim.autotvout_gmem.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.multi_axim.autotvout_ap_return.dat"

module `AUTOTB_TOP;
task read_token;
    input integer fp;
    output reg [199 : 0] token;
    reg [7:0] c;
    reg intoken;
    reg done;
    begin
        token = "";
        intoken = 0;
        done = 0;
        while (!done) begin
            c = $fgetc(fp);
            if (c == 8'hff) begin   // EOF
                done = 1;
            end
            else if (c == " " || c == "\011" || c == "\012" || c == "\015") begin   // blank
                if (intoken) begin
                    done = 1;
                end
            end
            else begin              // valid character
                intoken = 1;
                token = (token << 8) | c;
            end
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
reg [31 : 0] AESL_mLatCnterIn [0 : `AUTOTB_TRANSACTION_NUM + 1];
reg [31 : 0] AESL_mLatCnterIn_addr;
reg [31 : 0] AESL_mLatCnterOut [0 : `AUTOTB_TRANSACTION_NUM + 1];
reg [31 : 0] AESL_mLatCnterOut_addr ;
reg [31 : 0] AESL_clk_counter ;
reg [6 - 1 : 0] AESL_clk_ready[0 : `AUTOTB_TRANSACTION_NUM + 1];
reg [6 - 1 : 0] AESL_clk_done[0 : `AUTOTB_TRANSACTION_NUM + 1];

reg reported_stuck = 0;
reg reported_stuck_cnt = 0;
wire  s_axi_AXILiteS_AWVALID;
wire  s_axi_AXILiteS_AWREADY;
wire [5 : 0] s_axi_AXILiteS_AWADDR;
wire  s_axi_AXILiteS_WVALID;
wire  s_axi_AXILiteS_WREADY;
wire [31 : 0] s_axi_AXILiteS_WDATA;
wire [3 : 0] s_axi_AXILiteS_WSTRB;
wire  s_axi_AXILiteS_ARVALID;
wire  s_axi_AXILiteS_ARREADY;
wire [5 : 0] s_axi_AXILiteS_ARADDR;
wire  s_axi_AXILiteS_RVALID;
wire  s_axi_AXILiteS_RREADY;
wire [31 : 0] s_axi_AXILiteS_RDATA;
wire [1 : 0] s_axi_AXILiteS_RRESP;
wire  s_axi_AXILiteS_BVALID;
wire  s_axi_AXILiteS_BREADY;
wire [1 : 0] s_axi_AXILiteS_BRESP;
wire ap_clk;
wire ap_rst_n;
wire  m_axi_gmem_AWVALID;
wire  m_axi_gmem_AWREADY;
wire [31 : 0] m_axi_gmem_AWADDR;
wire [0 : 0] m_axi_gmem_AWID;
wire [7 : 0] m_axi_gmem_AWLEN;
wire [2 : 0] m_axi_gmem_AWSIZE;
wire [1 : 0] m_axi_gmem_AWBURST;
wire [1 : 0] m_axi_gmem_AWLOCK;
wire [3 : 0] m_axi_gmem_AWCACHE;
wire [2 : 0] m_axi_gmem_AWPROT;
wire [3 : 0] m_axi_gmem_AWQOS;
wire [3 : 0] m_axi_gmem_AWREGION;
wire [0 : 0] m_axi_gmem_AWUSER;
wire  m_axi_gmem_WVALID;
wire  m_axi_gmem_WREADY;
wire [31 : 0] m_axi_gmem_WDATA;
wire [3 : 0] m_axi_gmem_WSTRB;
wire  m_axi_gmem_WLAST;
wire [0 : 0] m_axi_gmem_WID;
wire [0 : 0] m_axi_gmem_WUSER;
wire  m_axi_gmem_ARVALID;
wire  m_axi_gmem_ARREADY;
wire [31 : 0] m_axi_gmem_ARADDR;
wire [0 : 0] m_axi_gmem_ARID;
wire [7 : 0] m_axi_gmem_ARLEN;
wire [2 : 0] m_axi_gmem_ARSIZE;
wire [1 : 0] m_axi_gmem_ARBURST;
wire [1 : 0] m_axi_gmem_ARLOCK;
wire [3 : 0] m_axi_gmem_ARCACHE;
wire [2 : 0] m_axi_gmem_ARPROT;
wire [3 : 0] m_axi_gmem_ARQOS;
wire [3 : 0] m_axi_gmem_ARREGION;
wire [0 : 0] m_axi_gmem_ARUSER;
wire  m_axi_gmem_RVALID;
wire  m_axi_gmem_RREADY;
wire [31 : 0] m_axi_gmem_RDATA;
wire  m_axi_gmem_RLAST;
wire [0 : 0] m_axi_gmem_RID;
wire [0 : 0] m_axi_gmem_RUSER;
wire [1 : 0] m_axi_gmem_RRESP;
wire  m_axi_gmem_BVALID;
wire  m_axi_gmem_BREADY;
wire [1 : 0] m_axi_gmem_BRESP;
wire [0 : 0] m_axi_gmem_BID;
wire [0 : 0] m_axi_gmem_BUSER;
wire  interrupt;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AXILiteS_read_data_finish;
wire AXILiteS_write_data_finish;
wire AESL_slave_start;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;

`AUTOTB_DUT `AUTOTB_DUT_INST(
.s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
.s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
.s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
.s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
.s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
.s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
.s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
.s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
.s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
.s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
.s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
.s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
.s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
.s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
.s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
.s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
.s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
.ap_clk(ap_clk),
.ap_rst_n(ap_rst_n),
.m_axi_gmem_AWVALID(m_axi_gmem_AWVALID),
.m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
.m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
.m_axi_gmem_AWID(m_axi_gmem_AWID),
.m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
.m_axi_gmem_AWSIZE(m_axi_gmem_AWSIZE),
.m_axi_gmem_AWBURST(m_axi_gmem_AWBURST),
.m_axi_gmem_AWLOCK(m_axi_gmem_AWLOCK),
.m_axi_gmem_AWCACHE(m_axi_gmem_AWCACHE),
.m_axi_gmem_AWPROT(m_axi_gmem_AWPROT),
.m_axi_gmem_AWQOS(m_axi_gmem_AWQOS),
.m_axi_gmem_AWREGION(m_axi_gmem_AWREGION),
.m_axi_gmem_AWUSER(m_axi_gmem_AWUSER),
.m_axi_gmem_WVALID(m_axi_gmem_WVALID),
.m_axi_gmem_WREADY(m_axi_gmem_WREADY),
.m_axi_gmem_WDATA(m_axi_gmem_WDATA),
.m_axi_gmem_WSTRB(m_axi_gmem_WSTRB),
.m_axi_gmem_WLAST(m_axi_gmem_WLAST),
.m_axi_gmem_WID(m_axi_gmem_WID),
.m_axi_gmem_WUSER(m_axi_gmem_WUSER),
.m_axi_gmem_ARVALID(m_axi_gmem_ARVALID),
.m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
.m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
.m_axi_gmem_ARID(m_axi_gmem_ARID),
.m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
.m_axi_gmem_ARSIZE(m_axi_gmem_ARSIZE),
.m_axi_gmem_ARBURST(m_axi_gmem_ARBURST),
.m_axi_gmem_ARLOCK(m_axi_gmem_ARLOCK),
.m_axi_gmem_ARCACHE(m_axi_gmem_ARCACHE),
.m_axi_gmem_ARPROT(m_axi_gmem_ARPROT),
.m_axi_gmem_ARQOS(m_axi_gmem_ARQOS),
.m_axi_gmem_ARREGION(m_axi_gmem_ARREGION),
.m_axi_gmem_ARUSER(m_axi_gmem_ARUSER),
.m_axi_gmem_RVALID(m_axi_gmem_RVALID),
.m_axi_gmem_RREADY(m_axi_gmem_RREADY),
.m_axi_gmem_RDATA(m_axi_gmem_RDATA),
.m_axi_gmem_RLAST(m_axi_gmem_RLAST),
.m_axi_gmem_RID(m_axi_gmem_RID),
.m_axi_gmem_RUSER(m_axi_gmem_RUSER),
.m_axi_gmem_RRESP(m_axi_gmem_RRESP),
.m_axi_gmem_BVALID(m_axi_gmem_BVALID),
.m_axi_gmem_BREADY(m_axi_gmem_BREADY),
.m_axi_gmem_BRESP(m_axi_gmem_BRESP),
.m_axi_gmem_BID(m_axi_gmem_BID),
.m_axi_gmem_BUSER(m_axi_gmem_BUSER),
.interrupt(interrupt)
);

// Assignment for control signal
  assign ap_clk = AESL_clock;
  assign ap_rst_n = AESL_reset;
  assign ap_rst_n_n = ~AESL_reset;
  assign AESL_reset = rst;
  assign AESL_start = start;
  assign AESL_ce = ce;
  assign AESL_continue = continue;
  assign AESL_slave_write_start_in = slave_start_status  & AXILiteS_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & AXILiteS_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end



wire	AESL_axi_master_gmem_ready;
wire	AESL_axi_master_gmem_done;
wire [32 - 1 : 0] x;
wire [32 - 1 : 0] y;
AESL_axi_master_gmem AESL_AXI_MASTER_gmem(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem_AWVALID (m_axi_gmem_AWVALID),
    .TRAN_gmem_AWREADY (m_axi_gmem_AWREADY),
    .TRAN_gmem_AWADDR (m_axi_gmem_AWADDR),
    .TRAN_gmem_AWID (m_axi_gmem_AWID),
    .TRAN_gmem_AWLEN (m_axi_gmem_AWLEN),
    .TRAN_gmem_AWSIZE (m_axi_gmem_AWSIZE),
    .TRAN_gmem_AWBURST (m_axi_gmem_AWBURST),
    .TRAN_gmem_AWLOCK (m_axi_gmem_AWLOCK),
    .TRAN_gmem_AWCACHE (m_axi_gmem_AWCACHE),
    .TRAN_gmem_AWPROT (m_axi_gmem_AWPROT),
    .TRAN_gmem_AWQOS (m_axi_gmem_AWQOS),
    .TRAN_gmem_AWREGION (m_axi_gmem_AWREGION),
    .TRAN_gmem_AWUSER (m_axi_gmem_AWUSER),
    .TRAN_gmem_WVALID (m_axi_gmem_WVALID),
    .TRAN_gmem_WREADY (m_axi_gmem_WREADY),
    .TRAN_gmem_WDATA (m_axi_gmem_WDATA),
    .TRAN_gmem_WSTRB (m_axi_gmem_WSTRB),
    .TRAN_gmem_WLAST (m_axi_gmem_WLAST),
    .TRAN_gmem_WID (m_axi_gmem_WID),
    .TRAN_gmem_WUSER (m_axi_gmem_WUSER),
    .TRAN_gmem_ARVALID (m_axi_gmem_ARVALID),
    .TRAN_gmem_ARREADY (m_axi_gmem_ARREADY),
    .TRAN_gmem_ARADDR (m_axi_gmem_ARADDR),
    .TRAN_gmem_ARID (m_axi_gmem_ARID),
    .TRAN_gmem_ARLEN (m_axi_gmem_ARLEN),
    .TRAN_gmem_ARSIZE (m_axi_gmem_ARSIZE),
    .TRAN_gmem_ARBURST (m_axi_gmem_ARBURST),
    .TRAN_gmem_ARLOCK (m_axi_gmem_ARLOCK),
    .TRAN_gmem_ARCACHE (m_axi_gmem_ARCACHE),
    .TRAN_gmem_ARPROT (m_axi_gmem_ARPROT),
    .TRAN_gmem_ARQOS (m_axi_gmem_ARQOS),
    .TRAN_gmem_ARREGION (m_axi_gmem_ARREGION),
    .TRAN_gmem_ARUSER (m_axi_gmem_ARUSER),
    .TRAN_gmem_RVALID (m_axi_gmem_RVALID),
    .TRAN_gmem_RREADY (m_axi_gmem_RREADY),
    .TRAN_gmem_RDATA (m_axi_gmem_RDATA),
    .TRAN_gmem_RLAST (m_axi_gmem_RLAST),
    .TRAN_gmem_RID (m_axi_gmem_RID),
    .TRAN_gmem_RUSER (m_axi_gmem_RUSER),
    .TRAN_gmem_RRESP (m_axi_gmem_RRESP),
    .TRAN_gmem_BVALID (m_axi_gmem_BVALID),
    .TRAN_gmem_BREADY (m_axi_gmem_BREADY),
    .TRAN_gmem_BRESP (m_axi_gmem_BRESP),
    .TRAN_gmem_BID (m_axi_gmem_BID),
    .TRAN_gmem_BUSER (m_axi_gmem_BUSER),
    .TRAN_gmem_x (x),
    .TRAN_gmem_y (y),
    .ready (AESL_axi_master_gmem_ready),
    .done  (AESL_axi_master_gmem_done)
);
assign	AESL_axi_master_gmem_ready	=   ready;
assign	AESL_axi_master_gmem_done	=   AESL_done_delay;

AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (s_axi_AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (s_axi_AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (s_axi_AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (s_axi_AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (s_axi_AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (s_axi_AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (s_axi_AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (s_axi_AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (s_axi_AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (s_axi_AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (s_axi_AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (s_axi_AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (s_axi_AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (s_axi_AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (s_axi_AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (s_axi_AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (s_axi_AXILiteS_BRESP),
    .TRAN_x (x),
    .TRAN_y (y),
    .TRAN_AXILiteS_read_data_finish(AXILiteS_read_data_finish),
    .TRAN_AXILiteS_write_data_finish(AXILiteS_write_data_finish),
    .TRAN_AXILiteS_ready_out (AESL_ready),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_out (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_out (AESL_idle),
    .TRAN_AXILiteS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_AXILiteS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_interrupt  (interrupt),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);

// Write "[[[runtime]]]" and "[[[/runtime]]]" for output-only transactor 
initial begin : write_output_transactor_ap_return_runtime_process
    integer fp;
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc, "w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait(done_cnt == `AUTOTB_TRANSACTION_NUM)
	  repeat(2) @(posedge AESL_clock);
    # 0.2;
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc, "a");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != `AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

initial begin : generate_ready_cnt_proc
    ready_cnt = 0;
    wait(AESL_reset === 1);
    while(ready_cnt != `AUTOTB_TRANSACTION_NUM) begin
        while(ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        ready_cnt = ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

initial begin : generate_done_cnt_proc
    done_cnt = 0;
    wait(AESL_reset === 1);
    while(done_cnt != `AUTOTB_TRANSACTION_NUM) begin
        while(AESL_done !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        done_cnt = done_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
    @(posedge AESL_clock);
    # 0.4;
    $finish;
end

initial fork
    AESL_clock = 0;
    forever #(`AUTOTB_CLOCK_PERIOD/2) AESL_clock = ~AESL_clock;
join

initial begin : initial_process
    integer rand;
    rst = 0;
    # 100;
	  repeat(3) @(posedge AESL_clock);
    rst = 1;
end

initial begin : start_process
  integer rand;
  start = 0;
  ce = 1;
    wait(AESL_reset === 1);
  @(posedge AESL_clock);
  start <= 1;
  while(ready_cnt != `AUTOTB_TRANSACTION_NUM + 1) begin
      @(posedge AESL_clock);
      if(AESL_ready == 1) begin
          start <= 0;
          start <= 1;
      end
  end
  start <= 0;
end

always @(AESL_done)
begin
    continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == `AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt != `AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < `AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == `AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
// Write "[[[runtime]]]" and "[[[/runtime]]]" for output-only transactor 
initial begin : write_output_transactor_gmem_runtime_process
    integer fp;
    fp = $fopen(`AUTOTB_TVOUT_gmem_out_wrapc, "w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait(done_cnt == `AUTOTB_TRANSACTION_NUM)
	  repeat(2) @(posedge AESL_clock);
    # 0.2;
    fp = $fopen(`AUTOTB_TVOUT_gmem_out_wrapc, "a");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_gmem_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end

always @ (negedge AESL_clock) begin
    if(AESL_reset === 0)
    begin
        AESL_clk_counter <= 0;
    end 
    else begin
        AESL_clk_counter = AESL_clk_counter + 1;
    end    
end

always @ (posedge AESL_clock or negedge AESL_reset) begin
    if(AESL_reset === 0)
    begin
        AESL_mLatCnterOut_addr = 0;
        AESL_mLatCnterOut[AESL_mLatCnterOut_addr] = AESL_clk_counter + 1;
        reported_stuck_cnt <= 0;
    end
    else if (AESL_done && AESL_mLatCnterOut_addr < `AUTOTB_TRANSACTION_NUM + 1) begin
        AESL_mLatCnterOut[AESL_mLatCnterOut_addr] = AESL_clk_counter;
        AESL_mLatCnterOut_addr = AESL_mLatCnterOut_addr + 1;
        reported_stuck <= 0;
    end
end

always @ (posedge AESL_clock or negedge AESL_reset) begin
    if(AESL_reset === 0)
    begin
        AESL_mLatCnterIn_addr = 0;
    end
    else if (AESL_slave_write_start_finish && AESL_mLatCnterIn_addr < `AUTOTB_TRANSACTION_NUM + 1) begin
        AESL_mLatCnterIn[AESL_mLatCnterIn_addr] = AESL_clk_counter;
        AESL_mLatCnterIn_addr = AESL_mLatCnterIn_addr + 1;
    end
end

initial begin : performance_check
	integer transaction_counter;
	integer i;
	integer fp;

	integer latthistime;
	integer lattotal;
	integer latmax;
	integer latmin;


	integer thrthistime;
	integer thrtotal;
	integer thrmax;
	integer thrmin;

	integer lataver;
	integer thraver;
	reg [31 : 0] lat_array [0 : `AUTOTB_TRANSACTION_NUM];
	reg [31 : 0] thr_array [0 : `AUTOTB_TRANSACTION_NUM];


	i = 0;
	lattotal = 0;
	latmax = 0;
	latmin = 32'h 7fffffff;
	lataver = 0;

	thrtotal = 0;
	thrmax = 0;
	thrmin = 32'h 7fffffff;
	thraver = 0;

	@(negedge AESL_clock);
	@(posedge AESL_reset);
	while (done_cnt != `AUTOTB_TRANSACTION_NUM) begin
		@(posedge AESL_clock);
	end

	#0.001

	if (AESL_mLatCnterIn_addr == 0) begin
		latmax  = 0;
		latmin  = 0;
		lataver = 0;
		thrmax  = 0;
		thrmin  = 0;
		thraver = 0;
		lat_array[0] = 0;
		thr_array[0] = 0;
	end else if (AESL_mLatCnterOut_addr == 1 || AESL_mLatCnterOut_addr == 0 ) begin
		latmax  = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
		latmin  = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
		lataver = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
		thrmax  = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
		thrmin  = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
		thraver = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
		lat_array[0] = lataver;
		thr_array[0] = thraver;
	end else begin
		// LATENCY
		for (i = 0; i < AESL_mLatCnterOut_addr; i = i + 1) begin
			latthistime = AESL_mLatCnterOut[i] - AESL_mLatCnterIn[i];
			lattotal = lattotal + latthistime;
			lat_array[i] = latthistime;
			if (latthistime > latmax) latmax = latthistime;
			if (latthistime < latmin) latmin = latthistime;
		end
		// II
		for (i = 0; i < AESL_mLatCnterIn_addr - 1; i = i + 1) begin
			thrthistime = AESL_mLatCnterOut[i] - AESL_mLatCnterIn[i] ;
			thrtotal = thrtotal + thrthistime;
			thr_array[i] = thrthistime;
			if (thrthistime > thrmax) thrmax = thrthistime;
			if (thrthistime < thrmin) thrmin = thrthistime;
		end

		thr_array[AESL_mLatCnterIn_addr - 1] = 0;
		lataver = lattotal / (AESL_mLatCnterOut_addr);
		thraver = thrtotal / (AESL_mLatCnterIn_addr - 1);
	end

	fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

	$fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latmax);
	$fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latmin);
	$fdisplay(fp, "$AVER_LATENCY = \"%0d\"", lataver);
	$fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", latmax);
	$fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", latmin);
	$fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", lataver);
	$fclose(fp);
	fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");
	$fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
	for (i = 0; i < AESL_mLatCnterOut_addr; i = i + 1) begin
		$fdisplay(fp, "transaction%8d:%16d%16d", i, lat_array[i], thr_array[i]);
	end

	$fclose(fp);
end
endmodule
