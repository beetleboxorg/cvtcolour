// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cvtcolor_bgr2hsv_Mat2AxiStream (
        imgOutput0_414_dout,
        imgOutput0_414_empty_n,
        imgOutput0_414_read,
        ldata1_din,
        ldata1_full_n,
        ldata1_write,
        rows_dout,
        rows_empty_n,
        rows_read,
        cols_dout,
        cols_empty_n,
        cols_read,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);


input  [23:0] imgOutput0_414_dout;
input   imgOutput0_414_empty_n;
output   imgOutput0_414_read;
output  [511:0] ldata1_din;
input   ldata1_full_n;
output   ldata1_write;
input  [31:0] rows_dout;
input   rows_empty_n;
output   rows_read;
input  [31:0] cols_dout;
input   cols_empty_n;
output   cols_read;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

wire    last_blk_pxl_width13_U0_ap_start;
wire    last_blk_pxl_width13_U0_ap_done;
wire    last_blk_pxl_width13_U0_ap_continue;
wire    last_blk_pxl_width13_U0_ap_idle;
wire    last_blk_pxl_width13_U0_ap_ready;
wire   [3:0] last_blk_pxl_width13_U0_return_r;
wire    last_blk_pxl_width13_U0_return_r_ap_vld;
wire    last_blk_pxl_width13_U0_rows_read;
wire    last_blk_pxl_width13_U0_cols_read;
wire   [31:0] last_blk_pxl_width13_U0_rows_out_din;
wire    last_blk_pxl_width13_U0_rows_out_write;
wire   [31:0] last_blk_pxl_width13_U0_cols_out_din;
wire    last_blk_pxl_width13_U0_cols_out_write;
wire    last_blk_pxl_width13_U0_ap_ext_blocking_n;
wire    last_blk_pxl_width13_U0_ap_str_blocking_n;
wire    last_blk_pxl_width13_U0_ap_int_blocking_n;
wire    ap_channel_done_p_channel;
wire    p_channel_full_n;
wire    MatStream2AxiStream_U0_ap_start;
wire    MatStream2AxiStream_U0_ap_done;
wire    MatStream2AxiStream_U0_ap_continue;
wire    MatStream2AxiStream_U0_ap_idle;
wire    MatStream2AxiStream_U0_ap_ready;
wire    MatStream2AxiStream_U0_imgOutput0_414_read;
wire   [511:0] MatStream2AxiStream_U0_ldata1_din;
wire    MatStream2AxiStream_U0_ldata1_write;
wire    MatStream2AxiStream_U0_rows_read;
wire    MatStream2AxiStream_U0_cols_bound_per_npc_read;
wire    MatStream2AxiStream_U0_ap_ext_blocking_n;
wire    MatStream2AxiStream_U0_ap_str_blocking_n;
wire    MatStream2AxiStream_U0_ap_int_blocking_n;
wire    ap_sync_continue;
wire   [3:0] p_channel_dout;
wire    p_channel_empty_n;
wire    rows_c_i_full_n;
wire   [31:0] rows_c_i_dout;
wire    rows_c_i_empty_n;
wire    cols_c_i_full_n;
wire   [31:0] cols_c_i_dout;
wire    cols_c_i_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_last_blk_pxl_width13_U0_ap_ready;
wire    ap_sync_last_blk_pxl_width13_U0_ap_ready;
reg   [1:0] last_blk_pxl_width13_U0_ap_ready_count;
reg    ap_sync_reg_MatStream2AxiStream_U0_ap_ready;
wire    ap_sync_MatStream2AxiStream_U0_ap_ready;
reg   [1:0] MatStream2AxiStream_U0_ap_ready_count;
wire    last_blk_pxl_width13_U0_start_full_n;
wire    last_blk_pxl_width13_U0_start_write;
wire    MatStream2AxiStream_U0_start_full_n;
wire    MatStream2AxiStream_U0_start_write;
wire    ap_ext_blocking_cur_n;
wire    ap_str_blocking_cur_n;
wire    ap_int_blocking_cur_n;
wire    ap_ext_blocking_sub_n;
wire    ap_str_blocking_sub_n;
wire    ap_int_blocking_sub_n;

// power-on initialization
initial begin
#0 ap_sync_reg_last_blk_pxl_width13_U0_ap_ready = 1'b0;
#0 last_blk_pxl_width13_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_MatStream2AxiStream_U0_ap_ready = 1'b0;
#0 MatStream2AxiStream_U0_ap_ready_count = 2'd0;
end

cvtcolor_bgr2hsv_last_blk_pxl_width13 last_blk_pxl_width13_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(last_blk_pxl_width13_U0_ap_start),
    .ap_done(last_blk_pxl_width13_U0_ap_done),
    .ap_continue(last_blk_pxl_width13_U0_ap_continue),
    .ap_idle(last_blk_pxl_width13_U0_ap_idle),
    .ap_ready(last_blk_pxl_width13_U0_ap_ready),
    .return_r(last_blk_pxl_width13_U0_return_r),
    .return_r_ap_vld(last_blk_pxl_width13_U0_return_r_ap_vld),
    .rows_dout(rows_dout),
    .rows_empty_n(rows_empty_n),
    .rows_read(last_blk_pxl_width13_U0_rows_read),
    .cols_dout(cols_dout),
    .cols_empty_n(cols_empty_n),
    .cols_read(last_blk_pxl_width13_U0_cols_read),
    .rows_out_din(last_blk_pxl_width13_U0_rows_out_din),
    .rows_out_full_n(rows_c_i_full_n),
    .rows_out_write(last_blk_pxl_width13_U0_rows_out_write),
    .cols_out_din(last_blk_pxl_width13_U0_cols_out_din),
    .cols_out_full_n(cols_c_i_full_n),
    .cols_out_write(last_blk_pxl_width13_U0_cols_out_write),
    .ap_ext_blocking_n(last_blk_pxl_width13_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(last_blk_pxl_width13_U0_ap_str_blocking_n),
    .ap_int_blocking_n(last_blk_pxl_width13_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_MatStream2AxiStream MatStream2AxiStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(MatStream2AxiStream_U0_ap_start),
    .ap_done(MatStream2AxiStream_U0_ap_done),
    .ap_continue(MatStream2AxiStream_U0_ap_continue),
    .ap_idle(MatStream2AxiStream_U0_ap_idle),
    .ap_ready(MatStream2AxiStream_U0_ap_ready),
    .imgOutput0_414_dout(imgOutput0_414_dout),
    .imgOutput0_414_empty_n(imgOutput0_414_empty_n),
    .imgOutput0_414_read(MatStream2AxiStream_U0_imgOutput0_414_read),
    .ldata1_din(MatStream2AxiStream_U0_ldata1_din),
    .ldata1_full_n(ldata1_full_n),
    .ldata1_write(MatStream2AxiStream_U0_ldata1_write),
    .rows_dout(rows_c_i_dout),
    .rows_empty_n(rows_c_i_empty_n),
    .rows_read(MatStream2AxiStream_U0_rows_read),
    .cols_bound_per_npc_dout(cols_c_i_dout),
    .cols_bound_per_npc_empty_n(cols_c_i_empty_n),
    .cols_bound_per_npc_read(MatStream2AxiStream_U0_cols_bound_per_npc_read),
    .last_blk_width(p_channel_dout),
    .ap_ext_blocking_n(MatStream2AxiStream_U0_ap_ext_blocking_n),
    .ap_str_blocking_n(MatStream2AxiStream_U0_ap_str_blocking_n),
    .ap_int_blocking_n(MatStream2AxiStream_U0_ap_int_blocking_n)
);

cvtcolor_bgr2hsv_fifo_w4_d2_S p_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(last_blk_pxl_width13_U0_return_r),
    .if_full_n(p_channel_full_n),
    .if_write(last_blk_pxl_width13_U0_ap_done),
    .if_dout(p_channel_dout),
    .if_empty_n(p_channel_empty_n),
    .if_read(MatStream2AxiStream_U0_ap_ready)
);

cvtcolor_bgr2hsv_fifo_w32_d2_S_x rows_c_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(last_blk_pxl_width13_U0_rows_out_din),
    .if_full_n(rows_c_i_full_n),
    .if_write(last_blk_pxl_width13_U0_rows_out_write),
    .if_dout(rows_c_i_dout),
    .if_empty_n(rows_c_i_empty_n),
    .if_read(MatStream2AxiStream_U0_rows_read)
);

cvtcolor_bgr2hsv_fifo_w32_d2_S_x cols_c_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(last_blk_pxl_width13_U0_cols_out_din),
    .if_full_n(cols_c_i_full_n),
    .if_write(last_blk_pxl_width13_U0_cols_out_write),
    .if_dout(cols_c_i_dout),
    .if_empty_n(cols_c_i_empty_n),
    .if_read(MatStream2AxiStream_U0_cols_bound_per_npc_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_MatStream2AxiStream_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_MatStream2AxiStream_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_MatStream2AxiStream_U0_ap_ready <= ap_sync_MatStream2AxiStream_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_last_blk_pxl_width13_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_last_blk_pxl_width13_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_last_blk_pxl_width13_U0_ap_ready <= ap_sync_last_blk_pxl_width13_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == MatStream2AxiStream_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        MatStream2AxiStream_U0_ap_ready_count <= (MatStream2AxiStream_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == MatStream2AxiStream_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        MatStream2AxiStream_U0_ap_ready_count <= (MatStream2AxiStream_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((last_blk_pxl_width13_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        last_blk_pxl_width13_U0_ap_ready_count <= (last_blk_pxl_width13_U0_ap_ready_count - 2'd1);
    end else if (((last_blk_pxl_width13_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        last_blk_pxl_width13_U0_ap_ready_count <= (last_blk_pxl_width13_U0_ap_ready_count + 2'd1);
    end
end

assign MatStream2AxiStream_U0_ap_continue = ap_continue;

assign MatStream2AxiStream_U0_ap_start = (p_channel_empty_n & (ap_sync_reg_MatStream2AxiStream_U0_ap_ready ^ 1'b1) & ap_start);

assign MatStream2AxiStream_U0_start_full_n = 1'b1;

assign MatStream2AxiStream_U0_start_write = 1'b0;

assign ap_channel_done_p_channel = last_blk_pxl_width13_U0_ap_done;

assign ap_done = MatStream2AxiStream_U0_ap_done;

assign ap_ext_blocking_cur_n = 1'b1;

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & ap_ext_blocking_cur_n);

assign ap_ext_blocking_sub_n = (last_blk_pxl_width13_U0_ap_ext_blocking_n & MatStream2AxiStream_U0_ap_ext_blocking_n);

assign ap_idle = (last_blk_pxl_width13_U0_ap_idle & (p_channel_empty_n ^ 1'b1) & MatStream2AxiStream_U0_ap_idle);

assign ap_int_blocking_cur_n = 1'b1;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_int_blocking_sub_n = (last_blk_pxl_width13_U0_ap_int_blocking_n & MatStream2AxiStream_U0_ap_int_blocking_n);

assign ap_ready = ap_sync_ready;

assign ap_str_blocking_cur_n = 1'b1;

assign ap_str_blocking_n = (ap_str_blocking_sub_n & ap_str_blocking_cur_n);

assign ap_str_blocking_sub_n = (last_blk_pxl_width13_U0_ap_str_blocking_n & MatStream2AxiStream_U0_ap_str_blocking_n);

assign ap_sync_MatStream2AxiStream_U0_ap_ready = (ap_sync_reg_MatStream2AxiStream_U0_ap_ready | MatStream2AxiStream_U0_ap_ready);

assign ap_sync_continue = ap_continue;

assign ap_sync_done = MatStream2AxiStream_U0_ap_done;

assign ap_sync_last_blk_pxl_width13_U0_ap_ready = (last_blk_pxl_width13_U0_ap_ready | ap_sync_reg_last_blk_pxl_width13_U0_ap_ready);

assign ap_sync_ready = (ap_sync_last_blk_pxl_width13_U0_ap_ready & ap_sync_MatStream2AxiStream_U0_ap_ready);

assign cols_read = last_blk_pxl_width13_U0_cols_read;

assign imgOutput0_414_read = MatStream2AxiStream_U0_imgOutput0_414_read;

assign last_blk_pxl_width13_U0_ap_continue = p_channel_full_n;

assign last_blk_pxl_width13_U0_ap_start = ((ap_sync_reg_last_blk_pxl_width13_U0_ap_ready ^ 1'b1) & ap_start);

assign last_blk_pxl_width13_U0_start_full_n = 1'b1;

assign last_blk_pxl_width13_U0_start_write = 1'b0;

assign ldata1_din = MatStream2AxiStream_U0_ldata1_din;

assign ldata1_write = MatStream2AxiStream_U0_ldata1_write;

assign rows_read = last_blk_pxl_width13_U0_rows_read;

endmodule //cvtcolor_bgr2hsv_Mat2AxiStream
