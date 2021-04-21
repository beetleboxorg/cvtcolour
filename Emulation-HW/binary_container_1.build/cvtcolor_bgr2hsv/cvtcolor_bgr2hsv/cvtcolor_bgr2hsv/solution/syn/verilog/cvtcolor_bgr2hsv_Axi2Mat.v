// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cvtcolor_bgr2hsv_Axi2Mat (
        m_axi_gmem1_AWVALID,
        m_axi_gmem1_AWREADY,
        m_axi_gmem1_AWADDR,
        m_axi_gmem1_AWID,
        m_axi_gmem1_AWLEN,
        m_axi_gmem1_AWSIZE,
        m_axi_gmem1_AWBURST,
        m_axi_gmem1_AWLOCK,
        m_axi_gmem1_AWCACHE,
        m_axi_gmem1_AWPROT,
        m_axi_gmem1_AWQOS,
        m_axi_gmem1_AWREGION,
        m_axi_gmem1_AWUSER,
        m_axi_gmem1_WVALID,
        m_axi_gmem1_WREADY,
        m_axi_gmem1_WDATA,
        m_axi_gmem1_WSTRB,
        m_axi_gmem1_WLAST,
        m_axi_gmem1_WID,
        m_axi_gmem1_WUSER,
        m_axi_gmem1_ARVALID,
        m_axi_gmem1_ARREADY,
        m_axi_gmem1_ARADDR,
        m_axi_gmem1_ARID,
        m_axi_gmem1_ARLEN,
        m_axi_gmem1_ARSIZE,
        m_axi_gmem1_ARBURST,
        m_axi_gmem1_ARLOCK,
        m_axi_gmem1_ARCACHE,
        m_axi_gmem1_ARPROT,
        m_axi_gmem1_ARQOS,
        m_axi_gmem1_ARREGION,
        m_axi_gmem1_ARUSER,
        m_axi_gmem1_RVALID,
        m_axi_gmem1_RREADY,
        m_axi_gmem1_RDATA,
        m_axi_gmem1_RLAST,
        m_axi_gmem1_RID,
        m_axi_gmem1_RUSER,
        m_axi_gmem1_RRESP,
        m_axi_gmem1_BVALID,
        m_axi_gmem1_BREADY,
        m_axi_gmem1_BRESP,
        m_axi_gmem1_BID,
        m_axi_gmem1_BUSER,
        imgInput0_413_din,
        imgInput0_413_full_n,
        imgInput0_413_write,
        din,
        rows,
        cols,
        ap_clk,
        ap_rst,
        din_ap_vld,
        rows_ap_vld,
        cols_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


output   m_axi_gmem1_AWVALID;
input   m_axi_gmem1_AWREADY;
output  [63:0] m_axi_gmem1_AWADDR;
output  [0:0] m_axi_gmem1_AWID;
output  [31:0] m_axi_gmem1_AWLEN;
output  [2:0] m_axi_gmem1_AWSIZE;
output  [1:0] m_axi_gmem1_AWBURST;
output  [1:0] m_axi_gmem1_AWLOCK;
output  [3:0] m_axi_gmem1_AWCACHE;
output  [2:0] m_axi_gmem1_AWPROT;
output  [3:0] m_axi_gmem1_AWQOS;
output  [3:0] m_axi_gmem1_AWREGION;
output  [0:0] m_axi_gmem1_AWUSER;
output   m_axi_gmem1_WVALID;
input   m_axi_gmem1_WREADY;
output  [511:0] m_axi_gmem1_WDATA;
output  [63:0] m_axi_gmem1_WSTRB;
output   m_axi_gmem1_WLAST;
output  [0:0] m_axi_gmem1_WID;
output  [0:0] m_axi_gmem1_WUSER;
output   m_axi_gmem1_ARVALID;
input   m_axi_gmem1_ARREADY;
output  [63:0] m_axi_gmem1_ARADDR;
output  [0:0] m_axi_gmem1_ARID;
output  [31:0] m_axi_gmem1_ARLEN;
output  [2:0] m_axi_gmem1_ARSIZE;
output  [1:0] m_axi_gmem1_ARBURST;
output  [1:0] m_axi_gmem1_ARLOCK;
output  [3:0] m_axi_gmem1_ARCACHE;
output  [2:0] m_axi_gmem1_ARPROT;
output  [3:0] m_axi_gmem1_ARQOS;
output  [3:0] m_axi_gmem1_ARREGION;
output  [0:0] m_axi_gmem1_ARUSER;
input   m_axi_gmem1_RVALID;
output   m_axi_gmem1_RREADY;
input  [511:0] m_axi_gmem1_RDATA;
input   m_axi_gmem1_RLAST;
input  [0:0] m_axi_gmem1_RID;
input  [0:0] m_axi_gmem1_RUSER;
input  [1:0] m_axi_gmem1_RRESP;
input   m_axi_gmem1_BVALID;
output   m_axi_gmem1_BREADY;
input  [1:0] m_axi_gmem1_BRESP;
input  [0:0] m_axi_gmem1_BID;
input  [0:0] m_axi_gmem1_BUSER;
output  [23:0] imgInput0_413_din;
input   imgInput0_413_full_n;
output   imgInput0_413_write;
input  [63:0] din;
input  [31:0] rows;
input  [31:0] cols;
input   ap_clk;
input   ap_rst;
input   din_ap_vld;
input   rows_ap_vld;
input   cols_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire    Axi2Mat_entry3_U0_ap_start;
wire    Axi2Mat_entry3_U0_ap_done;
wire    Axi2Mat_entry3_U0_ap_continue;
wire    Axi2Mat_entry3_U0_ap_idle;
wire    Axi2Mat_entry3_U0_ap_ready;
wire    Axi2Mat_entry3_U0_start_out;
wire    Axi2Mat_entry3_U0_start_write;
wire   [63:0] Axi2Mat_entry3_U0_din_out_din;
wire    Axi2Mat_entry3_U0_din_out_write;
wire   [31:0] Axi2Mat_entry3_U0_rows_out_din;
wire    Axi2Mat_entry3_U0_rows_out_write;
wire   [31:0] Axi2Mat_entry3_U0_cols_out_din;
wire    Axi2Mat_entry3_U0_cols_out_write;
wire    Axi2Mat_entry3_U0_ap_ext_blocking_n;
wire    Axi2Mat_entry3_U0_ap_str_blocking_n;
wire    Axi2Mat_entry3_U0_ap_int_blocking_n;
wire    Axi2Mat_entry7_U0_ap_start;
wire    Axi2Mat_entry7_U0_ap_done;
wire    Axi2Mat_entry7_U0_ap_continue;
wire    Axi2Mat_entry7_U0_ap_idle;
wire    Axi2Mat_entry7_U0_ap_ready;
wire    Axi2Mat_entry7_U0_start_out;
wire    Axi2Mat_entry7_U0_start_write;
wire    Axi2Mat_entry7_U0_din_read;
wire    Axi2Mat_entry7_U0_rows_read;
wire    Axi2Mat_entry7_U0_cols_read;
wire   [63:0] Axi2Mat_entry7_U0_din_out_din;
wire    Axi2Mat_entry7_U0_din_out_write;
wire   [31:0] Axi2Mat_entry7_U0_rows_out_din;
wire    Axi2Mat_entry7_U0_rows_out_write;
wire   [31:0] Axi2Mat_entry7_U0_cols_out_din;
wire    Axi2Mat_entry7_U0_cols_out_write;
wire    Axi2Mat_entry7_U0_ap_ext_blocking_n;
wire    Axi2Mat_entry7_U0_ap_str_blocking_n;
wire    Axi2Mat_entry7_U0_ap_int_blocking_n;
wire    last_blk_pxl_width3_U0_ap_start;
wire    last_blk_pxl_width3_U0_ap_done;
wire    last_blk_pxl_width3_U0_ap_continue;
wire    last_blk_pxl_width3_U0_ap_idle;
wire    last_blk_pxl_width3_U0_ap_ready;
wire    last_blk_pxl_width3_U0_start_out;
wire    last_blk_pxl_width3_U0_start_write;
wire   [3:0] last_blk_pxl_width3_U0_ret_out_din;
wire    last_blk_pxl_width3_U0_ret_out_write;
wire    last_blk_pxl_width3_U0_ap_ext_blocking_n;
wire    last_blk_pxl_width3_U0_ap_str_blocking_n;
wire    last_blk_pxl_width3_U0_ap_int_blocking_n;
wire    addrbound4_U0_ap_start;
wire    addrbound4_U0_ap_done;
wire    addrbound4_U0_ap_continue;
wire    addrbound4_U0_ap_idle;
wire    addrbound4_U0_ap_ready;
wire   [17:0] addrbound4_U0_return_r;
wire    addrbound4_U0_return_r_ap_vld;
wire    addrbound4_U0_rows_read;
wire    addrbound4_U0_cols_read;
wire   [31:0] addrbound4_U0_rows_out_din;
wire    addrbound4_U0_rows_out_write;
wire   [31:0] addrbound4_U0_cols_out_din;
wire    addrbound4_U0_cols_out_write;
wire    addrbound4_U0_ap_ext_blocking_n;
wire    addrbound4_U0_ap_str_blocking_n;
wire    addrbound4_U0_ap_int_blocking_n;
wire    ap_channel_done_p_channel;
wire    p_channel_full_n;
wire    Axi2Mat_Block_split26_proc_U0_ap_start;
wire    Axi2Mat_Block_split26_proc_U0_ap_done;
wire    Axi2Mat_Block_split26_proc_U0_ap_continue;
wire    Axi2Mat_Block_split26_proc_U0_ap_idle;
wire    Axi2Mat_Block_split26_proc_U0_ap_ready;
wire   [17:0] Axi2Mat_Block_split26_proc_U0_ap_return;
wire    Axi2Mat_Block_split26_proc_U0_ap_ext_blocking_n;
wire    Axi2Mat_Block_split26_proc_U0_ap_str_blocking_n;
wire    Axi2Mat_Block_split26_proc_U0_ap_int_blocking_n;
wire    ap_channel_done_axibound_V;
wire    axibound_V_full_n;
wire    Axi2AxiStream_U0_ap_start;
wire    Axi2AxiStream_U0_ap_done;
wire    Axi2AxiStream_U0_ap_continue;
wire    Axi2AxiStream_U0_ap_idle;
wire    Axi2AxiStream_U0_ap_ready;
wire    Axi2AxiStream_U0_m_axi_gmem1_AWVALID;
wire   [63:0] Axi2AxiStream_U0_m_axi_gmem1_AWADDR;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_AWID;
wire   [31:0] Axi2AxiStream_U0_m_axi_gmem1_AWLEN;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_AWSIZE;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_AWBURST;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_AWLOCK;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_AWCACHE;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_AWPROT;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_AWQOS;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_AWREGION;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_AWUSER;
wire    Axi2AxiStream_U0_m_axi_gmem1_WVALID;
wire   [511:0] Axi2AxiStream_U0_m_axi_gmem1_WDATA;
wire   [63:0] Axi2AxiStream_U0_m_axi_gmem1_WSTRB;
wire    Axi2AxiStream_U0_m_axi_gmem1_WLAST;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_WID;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_WUSER;
wire    Axi2AxiStream_U0_m_axi_gmem1_ARVALID;
wire   [63:0] Axi2AxiStream_U0_m_axi_gmem1_ARADDR;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_ARID;
wire   [31:0] Axi2AxiStream_U0_m_axi_gmem1_ARLEN;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_ARSIZE;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_ARBURST;
wire   [1:0] Axi2AxiStream_U0_m_axi_gmem1_ARLOCK;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_ARCACHE;
wire   [2:0] Axi2AxiStream_U0_m_axi_gmem1_ARPROT;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_ARQOS;
wire   [3:0] Axi2AxiStream_U0_m_axi_gmem1_ARREGION;
wire   [0:0] Axi2AxiStream_U0_m_axi_gmem1_ARUSER;
wire    Axi2AxiStream_U0_m_axi_gmem1_RREADY;
wire    Axi2AxiStream_U0_m_axi_gmem1_BREADY;
wire   [511:0] Axi2AxiStream_U0_ldata1_din;
wire    Axi2AxiStream_U0_ldata1_write;
wire    Axi2AxiStream_U0_din_read;
wire    Axi2AxiStream_U0_ap_ext_blocking_n;
wire    Axi2AxiStream_U0_ap_str_blocking_n;
wire    Axi2AxiStream_U0_ap_int_blocking_n;
wire    AxiStream2MatStream_U0_ap_start;
wire    AxiStream2MatStream_U0_ap_done;
wire    AxiStream2MatStream_U0_ap_continue;
wire    AxiStream2MatStream_U0_ap_idle;
wire    AxiStream2MatStream_U0_ap_ready;
wire    AxiStream2MatStream_U0_ldata1_read;
wire   [23:0] AxiStream2MatStream_U0_imgInput0_413_din;
wire    AxiStream2MatStream_U0_imgInput0_413_write;
wire    AxiStream2MatStream_U0_rows_read;
wire    AxiStream2MatStream_U0_cols_bound_per_npc_read;
wire    AxiStream2MatStream_U0_last_blk_width_read;
wire    AxiStream2MatStream_U0_ap_ext_blocking_n;
wire    AxiStream2MatStream_U0_ap_str_blocking_n;
wire    AxiStream2MatStream_U0_ap_int_blocking_n;
wire    ap_sync_continue;
wire    din_c1_full_n;
wire   [63:0] din_c1_dout;
wire    din_c1_empty_n;
wire    rows_c2_full_n;
wire   [31:0] rows_c2_dout;
wire    rows_c2_empty_n;
wire    cols_c3_full_n;
wire   [31:0] cols_c3_dout;
wire    cols_c3_empty_n;
wire    din_c_full_n;
wire   [63:0] din_c_dout;
wire    din_c_empty_n;
wire    rows_c_full_n;
wire   [31:0] rows_c_dout;
wire    rows_c_empty_n;
wire    cols_c_full_n;
wire   [31:0] cols_c_dout;
wire    cols_c_empty_n;
wire    last_blk_width_c_full_n;
wire   [3:0] last_blk_width_c_dout;
wire    last_blk_width_c_empty_n;
wire   [17:0] p_channel_dout;
wire    p_channel_empty_n;
wire    rows_c14_full_n;
wire   [31:0] rows_c14_dout;
wire    rows_c14_empty_n;
wire    cols_c15_full_n;
wire   [31:0] cols_c15_dout;
wire    cols_c15_empty_n;
wire   [17:0] axibound_V_dout;
wire    axibound_V_empty_n;
wire    ldata_full_n;
wire   [511:0] ldata_dout;
wire    ldata_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_Axi2Mat_entry3_U0_ap_ready;
wire    ap_sync_Axi2Mat_entry3_U0_ap_ready;
reg   [1:0] Axi2Mat_entry3_U0_ap_ready_count;
reg    ap_sync_reg_last_blk_pxl_width3_U0_ap_ready;
wire    ap_sync_last_blk_pxl_width3_U0_ap_ready;
reg   [1:0] last_blk_pxl_width3_U0_ap_ready_count;
reg    ap_sync_reg_Axi2AxiStream_U0_ap_ready;
wire    ap_sync_Axi2AxiStream_U0_ap_ready;
reg   [1:0] Axi2AxiStream_U0_ap_ready_count;
wire   [0:0] start_for_Axi2Mat_entry7_U0_din;
wire    start_for_Axi2Mat_entry7_U0_full_n;
wire   [0:0] start_for_Axi2Mat_entry7_U0_dout;
wire    start_for_Axi2Mat_entry7_U0_empty_n;
wire   [0:0] start_for_addrbound4_U0_din;
wire    start_for_addrbound4_U0_full_n;
wire   [0:0] start_for_addrbound4_U0_dout;
wire    start_for_addrbound4_U0_empty_n;
wire   [0:0] start_for_AxiStream2MatStream_U0_din;
wire    start_for_AxiStream2MatStream_U0_full_n;
wire   [0:0] start_for_AxiStream2MatStream_U0_dout;
wire    start_for_AxiStream2MatStream_U0_empty_n;
wire    addrbound4_U0_start_full_n;
wire    addrbound4_U0_start_write;
wire    Axi2Mat_Block_split26_proc_U0_start_full_n;
wire    Axi2Mat_Block_split26_proc_U0_start_write;
wire    Axi2AxiStream_U0_start_full_n;
wire    Axi2AxiStream_U0_start_write;
wire    AxiStream2MatStream_U0_start_full_n;
wire    AxiStream2MatStream_U0_start_write;
wire    ap_ext_blocking_cur_n;
wire    ap_str_blocking_cur_n;
wire    ap_int_blocking_cur_n;
wire    ap_ext_blocking_sub_n;
wire    ap_str_blocking_sub_n;
wire    ap_int_blocking_sub_n;

// power-on initialization
initial begin
#0 ap_sync_reg_Axi2Mat_entry3_U0_ap_ready = 1'b0;
#0 Axi2Mat_entry3_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_last_blk_pxl_width3_U0_ap_ready = 1'b0;
#0 last_blk_pxl_width3_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Axi2AxiStream_U0_ap_ready = 1'b0;
#0 Axi2AxiStream_U0_ap_ready_count = 2'd0;
end

cvtcolor_bgr2hsv_Axi2Mat_entry3 Axi2Mat_entry3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Axi2Mat_entry3_U0_ap_start),
    .start_full_n(start_for_Axi2Mat_entry7_U0_full_n),
    .ap_done(Axi2Mat_entry3_U0_ap_done),
    .ap_continue(Axi2Mat_entry3_U0_ap_continue),
    .ap_idle(Axi2Mat_entry3_U0_ap_idle),
    .ap_ready(Axi2Mat_entry3_U0_ap_ready),
    .start_out(Axi2Mat_entry3_U0_start_out),
    .start_write(Axi2Mat_entry3_U0_start_write),
    .din(din),
    .rows(rows),
    .cols(cols),
    .din_out_din(Axi2Mat_entry3_U0_din_out_din),
    .din_out_full_n(din_c1_full_n),
    .din_out_write(Axi2Mat_entry3_U0_din_out_write),
    .rows_out_din(Axi2Mat_entry3_U0_rows_out_din),
    .rows_out_full_n(rows_c2_full_n),
    .rows_out_write(Axi2Mat_entry3_U0_rows_out_write),
    .cols_out_din(Axi2Mat_entry3_U0_cols_out_din),
    .cols_out_full_n(cols_c3_full_n),
    .cols_out_write(Axi2Mat_entry3_U0_cols_out_write),
    .ap_ext_blocking_n(Axi2Mat_entry3_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Axi2Mat_entry3_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Axi2Mat_entry3_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_Axi2Mat_entry7 Axi2Mat_entry7_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Axi2Mat_entry7_U0_ap_start),
    .start_full_n(start_for_addrbound4_U0_full_n),
    .ap_done(Axi2Mat_entry7_U0_ap_done),
    .ap_continue(Axi2Mat_entry7_U0_ap_continue),
    .ap_idle(Axi2Mat_entry7_U0_ap_idle),
    .ap_ready(Axi2Mat_entry7_U0_ap_ready),
    .start_out(Axi2Mat_entry7_U0_start_out),
    .start_write(Axi2Mat_entry7_U0_start_write),
    .din_dout(din_c1_dout),
    .din_empty_n(din_c1_empty_n),
    .din_read(Axi2Mat_entry7_U0_din_read),
    .rows_dout(rows_c2_dout),
    .rows_empty_n(rows_c2_empty_n),
    .rows_read(Axi2Mat_entry7_U0_rows_read),
    .cols_dout(cols_c3_dout),
    .cols_empty_n(cols_c3_empty_n),
    .cols_read(Axi2Mat_entry7_U0_cols_read),
    .din_out_din(Axi2Mat_entry7_U0_din_out_din),
    .din_out_full_n(din_c_full_n),
    .din_out_write(Axi2Mat_entry7_U0_din_out_write),
    .rows_out_din(Axi2Mat_entry7_U0_rows_out_din),
    .rows_out_full_n(rows_c_full_n),
    .rows_out_write(Axi2Mat_entry7_U0_rows_out_write),
    .cols_out_din(Axi2Mat_entry7_U0_cols_out_din),
    .cols_out_full_n(cols_c_full_n),
    .cols_out_write(Axi2Mat_entry7_U0_cols_out_write),
    .ap_ext_blocking_n(Axi2Mat_entry7_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Axi2Mat_entry7_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Axi2Mat_entry7_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_last_blk_pxl_width3 last_blk_pxl_width3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(last_blk_pxl_width3_U0_ap_start),
    .start_full_n(start_for_AxiStream2MatStream_U0_full_n),
    .ap_done(last_blk_pxl_width3_U0_ap_done),
    .ap_continue(last_blk_pxl_width3_U0_ap_continue),
    .ap_idle(last_blk_pxl_width3_U0_ap_idle),
    .ap_ready(last_blk_pxl_width3_U0_ap_ready),
    .start_out(last_blk_pxl_width3_U0_start_out),
    .start_write(last_blk_pxl_width3_U0_start_write),
    .ret_out_din(last_blk_pxl_width3_U0_ret_out_din),
    .ret_out_full_n(last_blk_width_c_full_n),
    .ret_out_write(last_blk_pxl_width3_U0_ret_out_write),
    .ap_ext_blocking_n(last_blk_pxl_width3_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(last_blk_pxl_width3_U0_ap_str_blocking_n),
    .ap_int_blocking_n(last_blk_pxl_width3_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_addrbound4 addrbound4_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(addrbound4_U0_ap_start),
    .ap_done(addrbound4_U0_ap_done),
    .ap_continue(addrbound4_U0_ap_continue),
    .ap_idle(addrbound4_U0_ap_idle),
    .ap_ready(addrbound4_U0_ap_ready),
    .return_r(addrbound4_U0_return_r),
    .return_r_ap_vld(addrbound4_U0_return_r_ap_vld),
    .rows_dout(rows_c_dout),
    .rows_empty_n(rows_c_empty_n),
    .rows_read(addrbound4_U0_rows_read),
    .cols_dout(cols_c_dout),
    .cols_empty_n(cols_c_empty_n),
    .cols_read(addrbound4_U0_cols_read),
    .rows_out_din(addrbound4_U0_rows_out_din),
    .rows_out_full_n(rows_c14_full_n),
    .rows_out_write(addrbound4_U0_rows_out_write),
    .cols_out_din(addrbound4_U0_cols_out_din),
    .cols_out_full_n(cols_c15_full_n),
    .cols_out_write(addrbound4_U0_cols_out_write),
    .ap_ext_blocking_n(addrbound4_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(addrbound4_U0_ap_str_blocking_n),
    .ap_int_blocking_n(addrbound4_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_Axi2Mat_Block_split26_proc Axi2Mat_Block_split26_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Axi2Mat_Block_split26_proc_U0_ap_start),
    .ap_done(Axi2Mat_Block_split26_proc_U0_ap_done),
    .ap_continue(Axi2Mat_Block_split26_proc_U0_ap_continue),
    .ap_idle(Axi2Mat_Block_split26_proc_U0_ap_idle),
    .ap_ready(Axi2Mat_Block_split26_proc_U0_ap_ready),
    .axibound_V_2(p_channel_dout),
    .ap_return(Axi2Mat_Block_split26_proc_U0_ap_return),
    .ap_ext_blocking_n(Axi2Mat_Block_split26_proc_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Axi2Mat_Block_split26_proc_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Axi2Mat_Block_split26_proc_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_Axi2AxiStream Axi2AxiStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Axi2AxiStream_U0_ap_start),
    .ap_done(Axi2AxiStream_U0_ap_done),
    .ap_continue(Axi2AxiStream_U0_ap_continue),
    .ap_idle(Axi2AxiStream_U0_ap_idle),
    .ap_ready(Axi2AxiStream_U0_ap_ready),
    .m_axi_gmem1_AWVALID(Axi2AxiStream_U0_m_axi_gmem1_AWVALID),
    .m_axi_gmem1_AWREADY(1'b0),
    .m_axi_gmem1_AWADDR(Axi2AxiStream_U0_m_axi_gmem1_AWADDR),
    .m_axi_gmem1_AWID(Axi2AxiStream_U0_m_axi_gmem1_AWID),
    .m_axi_gmem1_AWLEN(Axi2AxiStream_U0_m_axi_gmem1_AWLEN),
    .m_axi_gmem1_AWSIZE(Axi2AxiStream_U0_m_axi_gmem1_AWSIZE),
    .m_axi_gmem1_AWBURST(Axi2AxiStream_U0_m_axi_gmem1_AWBURST),
    .m_axi_gmem1_AWLOCK(Axi2AxiStream_U0_m_axi_gmem1_AWLOCK),
    .m_axi_gmem1_AWCACHE(Axi2AxiStream_U0_m_axi_gmem1_AWCACHE),
    .m_axi_gmem1_AWPROT(Axi2AxiStream_U0_m_axi_gmem1_AWPROT),
    .m_axi_gmem1_AWQOS(Axi2AxiStream_U0_m_axi_gmem1_AWQOS),
    .m_axi_gmem1_AWREGION(Axi2AxiStream_U0_m_axi_gmem1_AWREGION),
    .m_axi_gmem1_AWUSER(Axi2AxiStream_U0_m_axi_gmem1_AWUSER),
    .m_axi_gmem1_WVALID(Axi2AxiStream_U0_m_axi_gmem1_WVALID),
    .m_axi_gmem1_WREADY(1'b0),
    .m_axi_gmem1_WDATA(Axi2AxiStream_U0_m_axi_gmem1_WDATA),
    .m_axi_gmem1_WSTRB(Axi2AxiStream_U0_m_axi_gmem1_WSTRB),
    .m_axi_gmem1_WLAST(Axi2AxiStream_U0_m_axi_gmem1_WLAST),
    .m_axi_gmem1_WID(Axi2AxiStream_U0_m_axi_gmem1_WID),
    .m_axi_gmem1_WUSER(Axi2AxiStream_U0_m_axi_gmem1_WUSER),
    .m_axi_gmem1_ARVALID(Axi2AxiStream_U0_m_axi_gmem1_ARVALID),
    .m_axi_gmem1_ARREADY(m_axi_gmem1_ARREADY),
    .m_axi_gmem1_ARADDR(Axi2AxiStream_U0_m_axi_gmem1_ARADDR),
    .m_axi_gmem1_ARID(Axi2AxiStream_U0_m_axi_gmem1_ARID),
    .m_axi_gmem1_ARLEN(Axi2AxiStream_U0_m_axi_gmem1_ARLEN),
    .m_axi_gmem1_ARSIZE(Axi2AxiStream_U0_m_axi_gmem1_ARSIZE),
    .m_axi_gmem1_ARBURST(Axi2AxiStream_U0_m_axi_gmem1_ARBURST),
    .m_axi_gmem1_ARLOCK(Axi2AxiStream_U0_m_axi_gmem1_ARLOCK),
    .m_axi_gmem1_ARCACHE(Axi2AxiStream_U0_m_axi_gmem1_ARCACHE),
    .m_axi_gmem1_ARPROT(Axi2AxiStream_U0_m_axi_gmem1_ARPROT),
    .m_axi_gmem1_ARQOS(Axi2AxiStream_U0_m_axi_gmem1_ARQOS),
    .m_axi_gmem1_ARREGION(Axi2AxiStream_U0_m_axi_gmem1_ARREGION),
    .m_axi_gmem1_ARUSER(Axi2AxiStream_U0_m_axi_gmem1_ARUSER),
    .m_axi_gmem1_RVALID(m_axi_gmem1_RVALID),
    .m_axi_gmem1_RREADY(Axi2AxiStream_U0_m_axi_gmem1_RREADY),
    .m_axi_gmem1_RDATA(m_axi_gmem1_RDATA),
    .m_axi_gmem1_RLAST(m_axi_gmem1_RLAST),
    .m_axi_gmem1_RID(m_axi_gmem1_RID),
    .m_axi_gmem1_RUSER(m_axi_gmem1_RUSER),
    .m_axi_gmem1_RRESP(m_axi_gmem1_RRESP),
    .m_axi_gmem1_BVALID(1'b0),
    .m_axi_gmem1_BREADY(Axi2AxiStream_U0_m_axi_gmem1_BREADY),
    .m_axi_gmem1_BRESP(2'd0),
    .m_axi_gmem1_BID(1'd0),
    .m_axi_gmem1_BUSER(1'd0),
    .ldata1_din(Axi2AxiStream_U0_ldata1_din),
    .ldata1_full_n(ldata_full_n),
    .ldata1_write(Axi2AxiStream_U0_ldata1_write),
    .din_dout(din_c_dout),
    .din_empty_n(din_c_empty_n),
    .din_read(Axi2AxiStream_U0_din_read),
    .addrbound_V_read(axibound_V_dout),
    .ap_ext_blocking_n(Axi2AxiStream_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(Axi2AxiStream_U0_ap_str_blocking_n),
    .ap_int_blocking_n(Axi2AxiStream_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_AxiStream2MatStream AxiStream2MatStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AxiStream2MatStream_U0_ap_start),
    .ap_done(AxiStream2MatStream_U0_ap_done),
    .ap_continue(AxiStream2MatStream_U0_ap_continue),
    .ap_idle(AxiStream2MatStream_U0_ap_idle),
    .ap_ready(AxiStream2MatStream_U0_ap_ready),
    .ldata1_dout(ldata_dout),
    .ldata1_empty_n(ldata_empty_n),
    .ldata1_read(AxiStream2MatStream_U0_ldata1_read),
    .imgInput0_413_din(AxiStream2MatStream_U0_imgInput0_413_din),
    .imgInput0_413_full_n(imgInput0_413_full_n),
    .imgInput0_413_write(AxiStream2MatStream_U0_imgInput0_413_write),
    .rows_dout(rows_c14_dout),
    .rows_empty_n(rows_c14_empty_n),
    .rows_read(AxiStream2MatStream_U0_rows_read),
    .cols_bound_per_npc_dout(cols_c15_dout),
    .cols_bound_per_npc_empty_n(cols_c15_empty_n),
    .cols_bound_per_npc_read(AxiStream2MatStream_U0_cols_bound_per_npc_read),
    .last_blk_width_dout(last_blk_width_c_dout),
    .last_blk_width_empty_n(last_blk_width_c_empty_n),
    .last_blk_width_read(AxiStream2MatStream_U0_last_blk_width_read),
    .ap_ext_blocking_n(AxiStream2MatStream_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(AxiStream2MatStream_U0_ap_str_blocking_n),
    .ap_int_blocking_n(AxiStream2MatStream_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_fifo_w64_d2_S din_c1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_entry3_U0_din_out_din),
    .if_full_n(din_c1_full_n),
    .if_write(Axi2Mat_entry3_U0_din_out_write),
    .if_dout(din_c1_dout),
    .if_empty_n(din_c1_empty_n),
    .if_read(Axi2Mat_entry7_U0_din_read)
);

cvtcolor_bgr2hsv_fifo_w32_d2_S rows_c2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_entry3_U0_rows_out_din),
    .if_full_n(rows_c2_full_n),
    .if_write(Axi2Mat_entry3_U0_rows_out_write),
    .if_dout(rows_c2_dout),
    .if_empty_n(rows_c2_empty_n),
    .if_read(Axi2Mat_entry7_U0_rows_read)
);

cvtcolor_bgr2hsv_fifo_w32_d2_S cols_c3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_entry3_U0_cols_out_din),
    .if_full_n(cols_c3_full_n),
    .if_write(Axi2Mat_entry3_U0_cols_out_write),
    .if_dout(cols_c3_dout),
    .if_empty_n(cols_c3_empty_n),
    .if_read(Axi2Mat_entry7_U0_cols_read)
);

cvtcolor_bgr2hsv_fifo_w64_d4_S din_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_entry7_U0_din_out_din),
    .if_full_n(din_c_full_n),
    .if_write(Axi2Mat_entry7_U0_din_out_write),
    .if_dout(din_c_dout),
    .if_empty_n(din_c_empty_n),
    .if_read(Axi2AxiStream_U0_din_read)
);

cvtcolor_bgr2hsv_fifo_w32_d2_S rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_entry7_U0_rows_out_din),
    .if_full_n(rows_c_full_n),
    .if_write(Axi2Mat_entry7_U0_rows_out_write),
    .if_dout(rows_c_dout),
    .if_empty_n(rows_c_empty_n),
    .if_read(addrbound4_U0_rows_read)
);

cvtcolor_bgr2hsv_fifo_w32_d2_S cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_entry7_U0_cols_out_din),
    .if_full_n(cols_c_full_n),
    .if_write(Axi2Mat_entry7_U0_cols_out_write),
    .if_dout(cols_c_dout),
    .if_empty_n(cols_c_empty_n),
    .if_read(addrbound4_U0_cols_read)
);

cvtcolor_bgr2hsv_fifo_w4_d6_S last_blk_width_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(last_blk_pxl_width3_U0_ret_out_din),
    .if_full_n(last_blk_width_c_full_n),
    .if_write(last_blk_pxl_width3_U0_ret_out_write),
    .if_dout(last_blk_width_c_dout),
    .if_empty_n(last_blk_width_c_empty_n),
    .if_read(AxiStream2MatStream_U0_last_blk_width_read)
);

cvtcolor_bgr2hsv_fifo_w18_d2_S p_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(addrbound4_U0_return_r),
    .if_full_n(p_channel_full_n),
    .if_write(addrbound4_U0_ap_done),
    .if_dout(p_channel_dout),
    .if_empty_n(p_channel_empty_n),
    .if_read(Axi2Mat_Block_split26_proc_U0_ap_ready)
);

cvtcolor_bgr2hsv_fifo_w32_d4_S rows_c14_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(addrbound4_U0_rows_out_din),
    .if_full_n(rows_c14_full_n),
    .if_write(addrbound4_U0_rows_out_write),
    .if_dout(rows_c14_dout),
    .if_empty_n(rows_c14_empty_n),
    .if_read(AxiStream2MatStream_U0_rows_read)
);

cvtcolor_bgr2hsv_fifo_w32_d4_S cols_c15_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(addrbound4_U0_cols_out_din),
    .if_full_n(cols_c15_full_n),
    .if_write(addrbound4_U0_cols_out_write),
    .if_dout(cols_c15_dout),
    .if_empty_n(cols_c15_empty_n),
    .if_read(AxiStream2MatStream_U0_cols_bound_per_npc_read)
);

cvtcolor_bgr2hsv_fifo_w18_d2_S axibound_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2Mat_Block_split26_proc_U0_ap_return),
    .if_full_n(axibound_V_full_n),
    .if_write(Axi2Mat_Block_split26_proc_U0_ap_done),
    .if_dout(axibound_V_dout),
    .if_empty_n(axibound_V_empty_n),
    .if_read(Axi2AxiStream_U0_ap_ready)
);

cvtcolor_bgr2hsv_fifo_w512_d2_S ldata_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Axi2AxiStream_U0_ldata1_din),
    .if_full_n(ldata_full_n),
    .if_write(Axi2AxiStream_U0_ldata1_write),
    .if_dout(ldata_dout),
    .if_empty_n(ldata_empty_n),
    .if_read(AxiStream2MatStream_U0_ldata1_read)
);

cvtcolor_bgr2hsv_start_for_Axi2Mat_entry7_U0 start_for_Axi2Mat_entry7_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Axi2Mat_entry7_U0_din),
    .if_full_n(start_for_Axi2Mat_entry7_U0_full_n),
    .if_write(Axi2Mat_entry3_U0_start_write),
    .if_dout(start_for_Axi2Mat_entry7_U0_dout),
    .if_empty_n(start_for_Axi2Mat_entry7_U0_empty_n),
    .if_read(Axi2Mat_entry7_U0_ap_ready)
);

cvtcolor_bgr2hsv_start_for_addrbound4_U0 start_for_addrbound4_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_addrbound4_U0_din),
    .if_full_n(start_for_addrbound4_U0_full_n),
    .if_write(Axi2Mat_entry7_U0_start_write),
    .if_dout(start_for_addrbound4_U0_dout),
    .if_empty_n(start_for_addrbound4_U0_empty_n),
    .if_read(addrbound4_U0_ap_ready)
);

cvtcolor_bgr2hsv_start_for_AxiStream2MatStream_U0 start_for_AxiStream2MatStream_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AxiStream2MatStream_U0_din),
    .if_full_n(start_for_AxiStream2MatStream_U0_full_n),
    .if_write(last_blk_pxl_width3_U0_start_write),
    .if_dout(start_for_AxiStream2MatStream_U0_dout),
    .if_empty_n(start_for_AxiStream2MatStream_U0_empty_n),
    .if_read(AxiStream2MatStream_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Axi2AxiStream_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Axi2AxiStream_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Axi2AxiStream_U0_ap_ready <= ap_sync_Axi2AxiStream_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Axi2Mat_entry3_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Axi2Mat_entry3_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Axi2Mat_entry3_U0_ap_ready <= ap_sync_Axi2Mat_entry3_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_last_blk_pxl_width3_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_last_blk_pxl_width3_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_last_blk_pxl_width3_U0_ap_ready <= ap_sync_last_blk_pxl_width3_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Axi2AxiStream_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Axi2AxiStream_U0_ap_ready_count <= (Axi2AxiStream_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Axi2AxiStream_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Axi2AxiStream_U0_ap_ready_count <= (Axi2AxiStream_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Axi2Mat_entry3_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Axi2Mat_entry3_U0_ap_ready_count <= (Axi2Mat_entry3_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Axi2Mat_entry3_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Axi2Mat_entry3_U0_ap_ready_count <= (Axi2Mat_entry3_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (last_blk_pxl_width3_U0_ap_ready == 1'b0))) begin
        last_blk_pxl_width3_U0_ap_ready_count <= (last_blk_pxl_width3_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (last_blk_pxl_width3_U0_ap_ready == 1'b1))) begin
        last_blk_pxl_width3_U0_ap_ready_count <= (last_blk_pxl_width3_U0_ap_ready_count + 2'd1);
    end
end

assign Axi2AxiStream_U0_ap_continue = 1'b1;

assign Axi2AxiStream_U0_ap_start = ((ap_sync_reg_Axi2AxiStream_U0_ap_ready ^ 1'b1) & axibound_V_empty_n & ap_start);

assign Axi2AxiStream_U0_start_full_n = 1'b1;

assign Axi2AxiStream_U0_start_write = 1'b0;

assign Axi2Mat_Block_split26_proc_U0_ap_continue = axibound_V_full_n;

assign Axi2Mat_Block_split26_proc_U0_ap_start = p_channel_empty_n;

assign Axi2Mat_Block_split26_proc_U0_start_full_n = 1'b1;

assign Axi2Mat_Block_split26_proc_U0_start_write = 1'b0;

assign Axi2Mat_entry3_U0_ap_continue = 1'b1;

assign Axi2Mat_entry3_U0_ap_start = ((ap_sync_reg_Axi2Mat_entry3_U0_ap_ready ^ 1'b1) & ap_start);

assign Axi2Mat_entry7_U0_ap_continue = 1'b1;

assign Axi2Mat_entry7_U0_ap_start = start_for_Axi2Mat_entry7_U0_empty_n;

assign AxiStream2MatStream_U0_ap_continue = ap_continue;

assign AxiStream2MatStream_U0_ap_start = start_for_AxiStream2MatStream_U0_empty_n;

assign AxiStream2MatStream_U0_start_full_n = 1'b1;

assign AxiStream2MatStream_U0_start_write = 1'b0;

assign addrbound4_U0_ap_continue = p_channel_full_n;

assign addrbound4_U0_ap_start = start_for_addrbound4_U0_empty_n;

assign addrbound4_U0_start_full_n = 1'b1;

assign addrbound4_U0_start_write = 1'b0;

assign ap_channel_done_axibound_V = Axi2Mat_Block_split26_proc_U0_ap_done;

assign ap_channel_done_p_channel = addrbound4_U0_ap_done;

assign ap_done = AxiStream2MatStream_U0_ap_done;

assign ap_ext_blocking_cur_n = 1'b1;

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & ap_ext_blocking_cur_n);

assign ap_ext_blocking_sub_n = (last_blk_pxl_width3_U0_ap_ext_blocking_n & addrbound4_U0_ap_ext_blocking_n & AxiStream2MatStream_U0_ap_ext_blocking_n & Axi2Mat_entry7_U0_ap_ext_blocking_n & Axi2Mat_entry3_U0_ap_ext_blocking_n & Axi2Mat_Block_split26_proc_U0_ap_ext_blocking_n & Axi2AxiStream_U0_ap_ext_blocking_n);

assign ap_idle = (last_blk_pxl_width3_U0_ap_idle & (axibound_V_empty_n ^ 1'b1) & (p_channel_empty_n ^ 1'b1) & addrbound4_U0_ap_idle & AxiStream2MatStream_U0_ap_idle & Axi2Mat_entry7_U0_ap_idle & Axi2Mat_entry3_U0_ap_idle & Axi2Mat_Block_split26_proc_U0_ap_idle & Axi2AxiStream_U0_ap_idle);

assign ap_int_blocking_cur_n = 1'b1;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_int_blocking_sub_n = (last_blk_pxl_width3_U0_ap_int_blocking_n & addrbound4_U0_ap_int_blocking_n & AxiStream2MatStream_U0_ap_int_blocking_n & Axi2Mat_entry7_U0_ap_int_blocking_n & Axi2Mat_entry3_U0_ap_int_blocking_n & Axi2Mat_Block_split26_proc_U0_ap_int_blocking_n & Axi2AxiStream_U0_ap_int_blocking_n);

assign ap_ready = ap_sync_ready;

assign ap_str_blocking_cur_n = 1'b1;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & ap_str_blocking_cur_n);

assign ap_str_blocking_sub_n = (last_blk_pxl_width3_U0_ap_str_blocking_n & addrbound4_U0_ap_str_blocking_n & AxiStream2MatStream_U0_ap_str_blocking_n & Axi2Mat_entry7_U0_ap_str_blocking_n & Axi2Mat_entry3_U0_ap_str_blocking_n & Axi2Mat_Block_split26_proc_U0_ap_str_blocking_n & Axi2AxiStream_U0_ap_str_blocking_n);

assign ap_sync_Axi2AxiStream_U0_ap_ready = (ap_sync_reg_Axi2AxiStream_U0_ap_ready | Axi2AxiStream_U0_ap_ready);

assign ap_sync_Axi2Mat_entry3_U0_ap_ready = (ap_sync_reg_Axi2Mat_entry3_U0_ap_ready | Axi2Mat_entry3_U0_ap_ready);

assign ap_sync_continue = ap_continue;

assign ap_sync_done = AxiStream2MatStream_U0_ap_done;

assign ap_sync_last_blk_pxl_width3_U0_ap_ready = (last_blk_pxl_width3_U0_ap_ready | ap_sync_reg_last_blk_pxl_width3_U0_ap_ready);

assign ap_sync_ready = (ap_sync_last_blk_pxl_width3_U0_ap_ready & ap_sync_Axi2Mat_entry3_U0_ap_ready & ap_sync_Axi2AxiStream_U0_ap_ready);

assign imgInput0_413_din = AxiStream2MatStream_U0_imgInput0_413_din;

assign imgInput0_413_write = AxiStream2MatStream_U0_imgInput0_413_write;

assign last_blk_pxl_width3_U0_ap_continue = 1'b1;

assign last_blk_pxl_width3_U0_ap_start = ((ap_sync_reg_last_blk_pxl_width3_U0_ap_ready ^ 1'b1) & ap_start);

assign m_axi_gmem1_ARADDR = Axi2AxiStream_U0_m_axi_gmem1_ARADDR;

assign m_axi_gmem1_ARBURST = Axi2AxiStream_U0_m_axi_gmem1_ARBURST;

assign m_axi_gmem1_ARCACHE = Axi2AxiStream_U0_m_axi_gmem1_ARCACHE;

assign m_axi_gmem1_ARID = Axi2AxiStream_U0_m_axi_gmem1_ARID;

assign m_axi_gmem1_ARLEN = Axi2AxiStream_U0_m_axi_gmem1_ARLEN;

assign m_axi_gmem1_ARLOCK = Axi2AxiStream_U0_m_axi_gmem1_ARLOCK;

assign m_axi_gmem1_ARPROT = Axi2AxiStream_U0_m_axi_gmem1_ARPROT;

assign m_axi_gmem1_ARQOS = Axi2AxiStream_U0_m_axi_gmem1_ARQOS;

assign m_axi_gmem1_ARREGION = Axi2AxiStream_U0_m_axi_gmem1_ARREGION;

assign m_axi_gmem1_ARSIZE = Axi2AxiStream_U0_m_axi_gmem1_ARSIZE;

assign m_axi_gmem1_ARUSER = Axi2AxiStream_U0_m_axi_gmem1_ARUSER;

assign m_axi_gmem1_ARVALID = Axi2AxiStream_U0_m_axi_gmem1_ARVALID;

assign m_axi_gmem1_AWADDR = 64'd0;

assign m_axi_gmem1_AWBURST = 2'd0;

assign m_axi_gmem1_AWCACHE = 4'd0;

assign m_axi_gmem1_AWID = 1'd0;

assign m_axi_gmem1_AWLEN = 32'd0;

assign m_axi_gmem1_AWLOCK = 2'd0;

assign m_axi_gmem1_AWPROT = 3'd0;

assign m_axi_gmem1_AWQOS = 4'd0;

assign m_axi_gmem1_AWREGION = 4'd0;

assign m_axi_gmem1_AWSIZE = 3'd0;

assign m_axi_gmem1_AWUSER = 1'd0;

assign m_axi_gmem1_AWVALID = 1'b0;

assign m_axi_gmem1_BREADY = 1'b0;

assign m_axi_gmem1_RREADY = Axi2AxiStream_U0_m_axi_gmem1_RREADY;

assign m_axi_gmem1_WDATA = 512'd0;

assign m_axi_gmem1_WID = 1'd0;

assign m_axi_gmem1_WLAST = 1'b0;

assign m_axi_gmem1_WSTRB = 64'd0;

assign m_axi_gmem1_WUSER = 1'd0;

assign m_axi_gmem1_WVALID = 1'b0;

assign start_for_Axi2Mat_entry7_U0_din = 1'b1;

assign start_for_AxiStream2MatStream_U0_din = 1'b1;

assign start_for_addrbound4_U0_din = 1'b1;

endmodule //cvtcolor_bgr2hsv_Axi2Mat
