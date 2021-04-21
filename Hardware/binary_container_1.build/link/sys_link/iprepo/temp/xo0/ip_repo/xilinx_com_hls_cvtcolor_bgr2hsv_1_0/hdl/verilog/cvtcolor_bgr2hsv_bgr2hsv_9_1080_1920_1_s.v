// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cvtcolor_bgr2hsv_bgr2hsv_9_1080_1920_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        imgInput0_413_dout,
        imgInput0_413_empty_n,
        imgInput0_413_read,
        imgOutput0_414_din,
        imgOutput0_414_full_n,
        imgOutput0_414_write,
        p_src_mat_1_dout,
        p_src_mat_1_empty_n,
        p_src_mat_1_read,
        p_src_mat_2_dout,
        p_src_mat_2_empty_n,
        p_src_mat_2_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state11 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] imgInput0_413_dout;
input   imgInput0_413_empty_n;
output   imgInput0_413_read;
output  [23:0] imgOutput0_414_din;
input   imgOutput0_414_full_n;
output   imgOutput0_414_write;
input  [31:0] p_src_mat_1_dout;
input   p_src_mat_1_empty_n;
output   p_src_mat_1_read;
input  [31:0] p_src_mat_2_dout;
input   p_src_mat_2_empty_n;
output   p_src_mat_2_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgInput0_413_read;
reg imgOutput0_414_write;
reg p_src_mat_1_read;
reg p_src_mat_2_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] xf_cv_icvSaturate8u_cv_address0;
reg    xf_cv_icvSaturate8u_cv_ce0;
wire   [7:0] xf_cv_icvSaturate8u_cv_q0;
wire   [9:0] xf_cv_icvSaturate8u_cv_address1;
reg    xf_cv_icvSaturate8u_cv_ce1;
wire   [7:0] xf_cv_icvSaturate8u_cv_q1;
wire   [9:0] xf_cv_icvSaturate8u_cv_address2;
reg    xf_cv_icvSaturate8u_cv_ce2;
wire   [7:0] xf_cv_icvSaturate8u_cv_q2;
wire   [9:0] xf_cv_icvSaturate8u_cv_address3;
reg    xf_cv_icvSaturate8u_cv_ce3;
wire   [7:0] xf_cv_icvSaturate8u_cv_q3;
wire   [7:0] void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_address0;
reg    void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_ce0;
wire   [31:0] void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_q0;
wire   [7:0] void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_address0;
reg    void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_ce0;
wire   [31:0] void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_q0;
reg    imgInput0_413_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln124_reg_675;
reg    imgOutput0_414_blk_n;
reg    ap_enable_reg_pp0_iter7;
reg   [0:0] icmp_ln124_reg_675_pp0_iter6_reg;
reg    p_src_mat_1_blk_n;
reg    p_src_mat_2_blk_n;
reg   [63:0] indvar_flatten_reg_220;
reg   [31:0] p_src_mat_1_read_reg_660;
reg    ap_block_state1;
reg   [31:0] p_src_mat_2_read_reg_665;
wire   [63:0] mul_ln73_fu_237_p2;
reg   [63:0] mul_ln73_reg_670;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln124_fu_243_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
wire    ap_block_state8_pp0_stage0_iter5;
wire    ap_block_state9_pp0_stage0_iter6;
reg    ap_block_state10_pp0_stage0_iter7;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln124_reg_675_pp0_iter1_reg;
reg   [0:0] icmp_ln124_reg_675_pp0_iter2_reg;
reg   [0:0] icmp_ln124_reg_675_pp0_iter3_reg;
reg   [0:0] icmp_ln124_reg_675_pp0_iter4_reg;
reg   [0:0] icmp_ln124_reg_675_pp0_iter5_reg;
wire   [63:0] add_ln124_fu_248_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] v_fu_254_p1;
reg   [7:0] v_reg_684;
reg   [7:0] v_reg_684_pp0_iter2_reg;
wire   [7:0] p_Result_1_i_fu_258_p4;
reg   [7:0] p_Result_1_i_reg_690;
reg   [7:0] p_Result_1_i_reg_690_pp0_iter2_reg;
reg   [7:0] p_Result_2_i_reg_695;
wire   [8:0] zext_ln119_fu_278_p1;
reg   [8:0] zext_ln119_reg_701;
reg   [8:0] zext_ln119_reg_701_pp0_iter2_reg;
wire   [8:0] zext_ln215_fu_282_p1;
reg   [8:0] zext_ln215_reg_708;
reg   [8:0] zext_ln215_reg_708_pp0_iter2_reg;
reg   [7:0] xf_cv_icvSaturate8u_cv_load_reg_724;
reg    ap_enable_reg_pp0_iter2;
wire   [9:0] zext_ln119_1_fu_329_p1;
reg   [9:0] zext_ln119_1_reg_729;
wire   [9:0] zext_ln215_1_fu_333_p1;
reg   [9:0] zext_ln215_1_reg_734;
wire   [7:0] sub_ln696_fu_353_p2;
reg   [7:0] sub_ln696_reg_744;
wire   [8:0] zext_ln1351_fu_362_p1;
reg   [8:0] zext_ln1351_reg_749;
wire   [7:0] add_ln216_2_fu_396_p2;
reg   [7:0] add_ln216_2_reg_760;
reg   [7:0] add_ln216_2_reg_760_pp0_iter4_reg;
reg   [7:0] add_ln216_2_reg_760_pp0_iter5_reg;
reg   [7:0] add_ln216_2_reg_760_pp0_iter6_reg;
wire   [7:0] add_ln216_1_fu_406_p2;
reg   [7:0] add_ln216_1_reg_765;
wire   [0:0] vr_fu_412_p2;
reg   [0:0] vr_reg_770;
wire   [0:0] vg_fu_420_p2;
reg   [0:0] vg_reg_776;
wire   [8:0] sub_ln1351_4_fu_431_p2;
reg   [8:0] sub_ln1351_4_reg_787;
wire   [10:0] add_ln151_fu_455_p2;
reg   [10:0] add_ln151_reg_792;
wire   [11:0] add_ln151_1_fu_481_p2;
reg   [11:0] add_ln151_1_reg_797;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
wire   [63:0] zext_ln538_fu_298_p1;
wire   [63:0] zext_ln538_1_fu_315_p1;
wire  signed [63:0] sext_ln538_fu_348_p1;
wire   [63:0] zext_ln538_2_fu_377_p1;
wire   [63:0] zext_ln150_fu_426_p1;
wire   [63:0] zext_ln538_3_fu_487_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] mul_ln73_fu_237_p0;
wire   [31:0] mul_ln73_fu_237_p1;
wire   [8:0] sub_ln1351_fu_286_p2;
wire   [8:0] add_ln1350_fu_292_p2;
wire   [8:0] sub_ln1351_2_fu_303_p2;
wire   [8:0] xor_ln1350_fu_309_p2;
wire   [8:0] zext_ln141_fu_320_p1;
wire   [8:0] v_1_fu_324_p2;
wire   [9:0] sub_ln1351_1_fu_336_p2;
wire   [9:0] add_ln1350_1_fu_342_p2;
wire   [8:0] zext_ln215_2_fu_358_p1;
wire   [8:0] sub_ln1351_3_fu_365_p2;
wire   [8:0] xor_ln1350_1_fu_371_p2;
wire   [9:0] zext_ln142_fu_382_p1;
wire   [7:0] add_ln216_fu_391_p2;
wire   [7:0] sub_ln216_fu_401_p2;
wire   [9:0] v_2_fu_386_p2;
wire   [9:0] zext_ln874_fu_417_p1;
wire   [8:0] sub_ln1351_5_fu_435_p2;
wire   [8:0] shl_ln_fu_443_p3;
wire  signed [10:0] sext_ln151_1_fu_439_p1;
wire   [10:0] zext_ln151_fu_451_p1;
wire   [8:0] sub_ln1351_6_fu_461_p2;
wire   [9:0] shl_ln151_1_fu_469_p3;
wire  signed [11:0] sext_ln151_3_fu_465_p1;
wire   [11:0] zext_ln151_1_fu_477_p1;
wire   [8:0] select_ln122_fu_492_p3;
wire  signed [8:0] and_ln1352_fu_513_p2;
wire   [0:0] xor_ln151_fu_522_p2;
wire   [10:0] select_ln122_1_fu_499_p3;
wire   [10:0] and_ln151_fu_535_p2;
wire   [0:0] xor_ln151_1_fu_544_p2;
wire   [11:0] select_ln1351_1_fu_549_p3;
wire   [11:0] and_ln151_1_fu_557_p2;
wire  signed [12:0] sext_ln151_2_fu_540_p1;
wire  signed [12:0] sext_ln151_4_fu_562_p1;
wire   [12:0] add_ln151_2_fu_566_p2;
wire   [12:0] select_ln1351_fu_527_p3;
wire  signed [12:0] and_ln151_2_fu_572_p2;
wire   [16:0] trunc_ln152_fu_582_p1;
wire  signed [19:0] grp_fu_639_p3;
wire  signed [29:0] grp_fu_648_p4;
wire   [0:0] tmp_fu_608_p3;
wire   [7:0] select_ln153_fu_615_p3;
wire   [7:0] trunc_ln1_fu_599_p4;
wire   [7:0] op_assign_1_fu_590_p4;
wire   [7:0] add_ln155_fu_623_p2;
wire   [7:0] grp_fu_639_p0;
wire  signed [19:0] grp_fu_639_p1;
wire   [12:0] grp_fu_639_p2;
wire   [16:0] grp_fu_648_p2;
wire   [12:0] grp_fu_648_p3;
reg    grp_fu_639_ce;
reg    grp_fu_648_ce;
wire    ap_CS_fsm_state11;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [19:0] grp_fu_639_p00;
wire   [29:0] grp_fu_648_p20;
wire   [63:0] mul_ln73_fu_237_p00;
wire   [63:0] mul_ln73_fu_237_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
end

cvtcolor_bgr2hsv_bgr2hsv_9_1080_1920_1_s_xf_cv_icvSaturate8u_cv #(
    .DataWidth( 8 ),
    .AddressRange( 769 ),
    .AddressWidth( 10 ))
xf_cv_icvSaturate8u_cv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(xf_cv_icvSaturate8u_cv_address0),
    .ce0(xf_cv_icvSaturate8u_cv_ce0),
    .q0(xf_cv_icvSaturate8u_cv_q0),
    .address1(xf_cv_icvSaturate8u_cv_address1),
    .ce1(xf_cv_icvSaturate8u_cv_ce1),
    .q1(xf_cv_icvSaturate8u_cv_q1),
    .address2(xf_cv_icvSaturate8u_cv_address2),
    .ce2(xf_cv_icvSaturate8u_cv_ce2),
    .q2(xf_cv_icvSaturate8u_cv_q2),
    .address3(xf_cv_icvSaturate8u_cv_address3),
    .ce3(xf_cv_icvSaturate8u_cv_ce3),
    .q3(xf_cv_icvSaturate8u_cv_q3)
);

cvtcolor_bgr2hsv_bgr2hsv_9_1080_1920_1_s_void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_bkb #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_address0),
    .ce0(void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_ce0),
    .q0(void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_q0)
);

cvtcolor_bgr2hsv_bgr2hsv_9_1080_1920_1_s_void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_cud #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_address0),
    .ce0(void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_ce0),
    .q0(void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_q0)
);

cvtcolor_bgr2hsv_mul_32ns_32ns_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32ns_32ns_64_1_1_U70(
    .din0(mul_ln73_fu_237_p0),
    .din1(mul_ln73_fu_237_p1),
    .dout(mul_ln73_fu_237_p2)
);

cvtcolor_bgr2hsv_mac_muladd_8ns_20s_13ns_20_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 20 ),
    .din2_WIDTH( 13 ),
    .dout_WIDTH( 20 ))
mac_muladd_8ns_20s_13ns_20_4_1_U71(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_639_p0),
    .din1(grp_fu_639_p1),
    .din2(grp_fu_639_p2),
    .ce(grp_fu_639_ce),
    .dout(grp_fu_639_p3)
);

cvtcolor_bgr2hsv_ama_addmuladd_9s_13s_17ns_13ns_30_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 13 ),
    .din2_WIDTH( 17 ),
    .din3_WIDTH( 13 ),
    .dout_WIDTH( 30 ))
ama_addmuladd_9s_13s_17ns_13ns_30_4_1_U72(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(and_ln1352_fu_513_p2),
    .din1(and_ln151_2_fu_572_p2),
    .din2(grp_fu_648_p2),
    .din3(grp_fu_648_p3),
    .ce(grp_fu_648_ce),
    .dout(grp_fu_648_p4)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln124_fu_243_p2 == 1'd0))) begin
        indvar_flatten_reg_220 <= add_ln124_fu_248_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_reg_220 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln124_reg_675_pp0_iter2_reg == 1'd0))) begin
        add_ln151_1_reg_797 <= add_ln151_1_fu_481_p2;
        add_ln151_reg_792 <= add_ln151_fu_455_p2;
        add_ln216_1_reg_765 <= add_ln216_1_fu_406_p2;
        add_ln216_2_reg_760 <= add_ln216_2_fu_396_p2;
        sub_ln1351_4_reg_787 <= sub_ln1351_4_fu_431_p2;
        vg_reg_776 <= vg_fu_420_p2;
        vr_reg_770 <= vr_fu_412_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln216_2_reg_760_pp0_iter4_reg <= add_ln216_2_reg_760;
        add_ln216_2_reg_760_pp0_iter5_reg <= add_ln216_2_reg_760_pp0_iter4_reg;
        add_ln216_2_reg_760_pp0_iter6_reg <= add_ln216_2_reg_760_pp0_iter5_reg;
        icmp_ln124_reg_675_pp0_iter2_reg <= icmp_ln124_reg_675_pp0_iter1_reg;
        icmp_ln124_reg_675_pp0_iter3_reg <= icmp_ln124_reg_675_pp0_iter2_reg;
        icmp_ln124_reg_675_pp0_iter4_reg <= icmp_ln124_reg_675_pp0_iter3_reg;
        icmp_ln124_reg_675_pp0_iter5_reg <= icmp_ln124_reg_675_pp0_iter4_reg;
        icmp_ln124_reg_675_pp0_iter6_reg <= icmp_ln124_reg_675_pp0_iter5_reg;
        p_Result_1_i_reg_690_pp0_iter2_reg <= p_Result_1_i_reg_690;
        v_reg_684_pp0_iter2_reg <= v_reg_684;
        zext_ln119_reg_701_pp0_iter2_reg[7 : 0] <= zext_ln119_reg_701[7 : 0];
        zext_ln215_reg_708_pp0_iter2_reg[7 : 0] <= zext_ln215_reg_708[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln124_reg_675 <= icmp_ln124_fu_243_p2;
        icmp_ln124_reg_675_pp0_iter1_reg <= icmp_ln124_reg_675;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln73_reg_670 <= mul_ln73_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_1_i_reg_690 <= {{imgInput0_413_dout[15:8]}};
        p_Result_2_i_reg_695 <= {{imgInput0_413_dout[23:16]}};
        v_reg_684 <= v_fu_254_p1;
        zext_ln119_reg_701[7 : 0] <= zext_ln119_fu_278_p1[7 : 0];
        zext_ln215_reg_708[7 : 0] <= zext_ln215_fu_282_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_2_empty_n == 1'b0) | (p_src_mat_1_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_1_read_reg_660 <= p_src_mat_1_dout;
        p_src_mat_2_read_reg_665 <= p_src_mat_2_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln124_reg_675_pp0_iter1_reg == 1'd0))) begin
        sub_ln696_reg_744 <= sub_ln696_fu_353_p2;
        zext_ln119_1_reg_729[8 : 0] <= zext_ln119_1_fu_329_p1[8 : 0];
        zext_ln1351_reg_749[7 : 0] <= zext_ln1351_fu_362_p1[7 : 0];
        zext_ln215_1_reg_734[7 : 0] <= zext_ln215_1_fu_333_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_reg_675_pp0_iter1_reg == 1'd0))) begin
        xf_cv_icvSaturate8u_cv_load_reg_724 <= xf_cv_icvSaturate8u_cv_q3;
    end
end

always @ (*) begin
    if ((icmp_ln124_fu_243_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_639_ce = 1'b1;
    end else begin
        grp_fu_639_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_648_ce = 1'b1;
    end else begin
        grp_fu_648_ce = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln124_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgInput0_413_blk_n = imgInput0_413_empty_n;
    end else begin
        imgInput0_413_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln124_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgInput0_413_read = 1'b1;
    end else begin
        imgInput0_413_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln124_reg_675_pp0_iter6_reg == 1'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        imgOutput0_414_blk_n = imgOutput0_414_full_n;
    end else begin
        imgOutput0_414_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln124_reg_675_pp0_iter6_reg == 1'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        imgOutput0_414_write = 1'b1;
    end else begin
        imgOutput0_414_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_1_blk_n = p_src_mat_1_empty_n;
    end else begin
        p_src_mat_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_2_empty_n == 1'b0) | (p_src_mat_1_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_1_read = 1'b1;
    end else begin
        p_src_mat_1_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_2_blk_n = p_src_mat_2_empty_n;
    end else begin
        p_src_mat_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_src_mat_2_empty_n == 1'b0) | (p_src_mat_1_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_2_read = 1'b1;
    end else begin
        p_src_mat_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_ce0 = 1'b1;
    end else begin
        void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_ce0 = 1'b1;
    end else begin
        void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        xf_cv_icvSaturate8u_cv_ce0 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        xf_cv_icvSaturate8u_cv_ce1 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xf_cv_icvSaturate8u_cv_ce2 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xf_cv_icvSaturate8u_cv_ce3 = 1'b1;
    end else begin
        xf_cv_icvSaturate8u_cv_ce3 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_src_mat_2_empty_n == 1'b0) | (p_src_mat_1_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln124_fu_243_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln124_fu_243_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln124_fu_248_p2 = (indvar_flatten_reg_220 + 64'd1);

assign add_ln1350_1_fu_342_p2 = (10'd256 + sub_ln1351_1_fu_336_p2);

assign add_ln1350_fu_292_p2 = (zext_ln215_fu_282_p1 + sub_ln1351_fu_286_p2);

assign add_ln151_1_fu_481_p2 = ($signed(sext_ln151_3_fu_465_p1) + $signed(zext_ln151_1_fu_477_p1));

assign add_ln151_2_fu_566_p2 = ($signed(sext_ln151_2_fu_540_p1) + $signed(sext_ln151_4_fu_562_p1));

assign add_ln151_fu_455_p2 = ($signed(sext_ln151_1_fu_439_p1) + $signed(zext_ln151_fu_451_p1));

assign add_ln155_fu_623_p2 = (select_ln153_fu_615_p3 + trunc_ln1_fu_599_p4);

assign add_ln216_1_fu_406_p2 = (add_ln216_2_fu_396_p2 + sub_ln216_fu_401_p2);

assign add_ln216_2_fu_396_p2 = (xf_cv_icvSaturate8u_cv_load_reg_724 + add_ln216_fu_391_p2);

assign add_ln216_fu_391_p2 = (v_reg_684_pp0_iter2_reg + xf_cv_icvSaturate8u_cv_q1);

assign and_ln1352_fu_513_p2 = (sub_ln1351_4_reg_787 & select_ln122_fu_492_p3);

assign and_ln151_1_fu_557_p2 = (select_ln1351_1_fu_549_p3 & add_ln151_1_reg_797);

assign and_ln151_2_fu_572_p2 = (select_ln1351_fu_527_p3 & add_ln151_2_fu_566_p2);

assign and_ln151_fu_535_p2 = (select_ln122_1_fu_499_p3 & add_ln151_reg_792);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln124_reg_675_pp0_iter6_reg == 1'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (imgOutput0_414_full_n == 1'b0)) | ((icmp_ln124_reg_675 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (imgInput0_413_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln124_reg_675_pp0_iter6_reg == 1'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (imgOutput0_414_full_n == 1'b0)) | ((icmp_ln124_reg_675 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (imgInput0_413_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln124_reg_675_pp0_iter6_reg == 1'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (imgOutput0_414_full_n == 1'b0)) | ((icmp_ln124_reg_675 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (imgInput0_413_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (p_src_mat_2_empty_n == 1'b0) | (p_src_mat_1_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter7 = ((icmp_ln124_reg_675_pp0_iter6_reg == 1'd0) & (imgOutput0_414_full_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln124_reg_675 == 1'd0) & (imgInput0_413_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_639_p0 = grp_fu_639_p00;

assign grp_fu_639_p00 = add_ln216_1_reg_765;

assign grp_fu_639_p1 = void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_q0[19:0];

assign grp_fu_639_p2 = 20'd2048;

assign grp_fu_648_p2 = grp_fu_648_p20;

assign grp_fu_648_p20 = trunc_ln152_fu_582_p1;

assign grp_fu_648_p3 = 30'd2048;

assign icmp_ln124_fu_243_p2 = ((indvar_flatten_reg_220 == mul_ln73_reg_670) ? 1'b1 : 1'b0);

assign imgOutput0_414_din = {{{add_ln216_2_reg_760_pp0_iter6_reg}, {op_assign_1_fu_590_p4}}, {add_ln155_fu_623_p2}};

assign mul_ln73_fu_237_p0 = mul_ln73_fu_237_p00;

assign mul_ln73_fu_237_p00 = p_src_mat_2_read_reg_665;

assign mul_ln73_fu_237_p1 = mul_ln73_fu_237_p10;

assign mul_ln73_fu_237_p10 = p_src_mat_1_read_reg_660;

assign op_assign_1_fu_590_p4 = {{grp_fu_639_p3[19:12]}};

assign p_Result_1_i_fu_258_p4 = {{imgInput0_413_dout[15:8]}};

assign select_ln122_1_fu_499_p3 = ((vg_reg_776[0:0] === 1'b1) ? 11'd2047 : 11'd0);

assign select_ln122_fu_492_p3 = ((vr_reg_770[0:0] === 1'b1) ? 9'd511 : 9'd0);

assign select_ln1351_1_fu_549_p3 = ((xor_ln151_1_fu_544_p2[0:0] === 1'b1) ? 12'd4095 : 12'd0);

assign select_ln1351_fu_527_p3 = ((xor_ln151_fu_522_p2[0:0] === 1'b1) ? 13'd8191 : 13'd0);

assign select_ln153_fu_615_p3 = ((tmp_fu_608_p3[0:0] === 1'b1) ? 8'd180 : 8'd0);

assign sext_ln151_1_fu_439_p1 = $signed(sub_ln1351_5_fu_435_p2);

assign sext_ln151_2_fu_540_p1 = $signed(and_ln151_fu_535_p2);

assign sext_ln151_3_fu_465_p1 = $signed(sub_ln1351_6_fu_461_p2);

assign sext_ln151_4_fu_562_p1 = $signed(and_ln151_1_fu_557_p2);

assign sext_ln538_fu_348_p1 = $signed(add_ln1350_1_fu_342_p2);

assign shl_ln151_1_fu_469_p3 = {{add_ln216_1_fu_406_p2}, {2'd0}};

assign shl_ln_fu_443_p3 = {{add_ln216_1_fu_406_p2}, {1'd0}};

assign sub_ln1351_1_fu_336_p2 = (zext_ln215_1_fu_333_p1 - zext_ln119_1_fu_329_p1);

assign sub_ln1351_2_fu_303_p2 = (zext_ln119_fu_278_p1 - zext_ln215_fu_282_p1);

assign sub_ln1351_3_fu_365_p2 = (zext_ln215_2_fu_358_p1 - zext_ln1351_fu_362_p1);

assign sub_ln1351_4_fu_431_p2 = (zext_ln215_reg_708_pp0_iter2_reg - zext_ln119_reg_701_pp0_iter2_reg);

assign sub_ln1351_5_fu_435_p2 = (zext_ln119_reg_701_pp0_iter2_reg - zext_ln1351_reg_749);

assign sub_ln1351_6_fu_461_p2 = (zext_ln1351_reg_749 - zext_ln215_reg_708_pp0_iter2_reg);

assign sub_ln1351_fu_286_p2 = ($signed(9'd256) - $signed(zext_ln119_fu_278_p1));

assign sub_ln216_fu_401_p2 = (xf_cv_icvSaturate8u_cv_q0 - sub_ln696_reg_744);

assign sub_ln696_fu_353_p2 = (v_reg_684 - xf_cv_icvSaturate8u_cv_q2);

assign tmp_fu_608_p3 = grp_fu_648_p4[32'd29];

assign trunc_ln152_fu_582_p1 = void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_q0[16:0];

assign trunc_ln1_fu_599_p4 = {{grp_fu_648_p4[19:12]}};

assign v_1_fu_324_p2 = (zext_ln119_reg_701 + zext_ln141_fu_320_p1);

assign v_2_fu_386_p2 = (zext_ln142_fu_382_p1 + zext_ln119_1_reg_729);

assign v_fu_254_p1 = imgInput0_413_dout[7:0];

assign vg_fu_420_p2 = ((v_2_fu_386_p2 == zext_ln874_fu_417_p1) ? 1'b1 : 1'b0);

assign void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_address0 = zext_ln538_3_fu_487_p1;

assign void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_address0 = zext_ln150_fu_426_p1;

assign vr_fu_412_p2 = ((v_2_fu_386_p2 == zext_ln215_1_reg_734) ? 1'b1 : 1'b0);

assign xf_cv_icvSaturate8u_cv_address0 = zext_ln538_2_fu_377_p1;

assign xf_cv_icvSaturate8u_cv_address1 = sext_ln538_fu_348_p1;

assign xf_cv_icvSaturate8u_cv_address2 = zext_ln538_1_fu_315_p1;

assign xf_cv_icvSaturate8u_cv_address3 = zext_ln538_fu_298_p1;

assign xor_ln1350_1_fu_371_p2 = (sub_ln1351_3_fu_365_p2 ^ 9'd256);

assign xor_ln1350_fu_309_p2 = (sub_ln1351_2_fu_303_p2 ^ 9'd256);

assign xor_ln151_1_fu_544_p2 = (vg_reg_776 ^ 1'd1);

assign xor_ln151_fu_522_p2 = (vr_reg_770 ^ 1'd1);

assign zext_ln119_1_fu_329_p1 = v_1_fu_324_p2;

assign zext_ln119_fu_278_p1 = v_fu_254_p1;

assign zext_ln1351_fu_362_p1 = p_Result_2_i_reg_695;

assign zext_ln141_fu_320_p1 = xf_cv_icvSaturate8u_cv_q3;

assign zext_ln142_fu_382_p1 = xf_cv_icvSaturate8u_cv_q1;

assign zext_ln150_fu_426_p1 = v_2_fu_386_p2;

assign zext_ln151_1_fu_477_p1 = shl_ln151_1_fu_469_p3;

assign zext_ln151_fu_451_p1 = shl_ln_fu_443_p3;

assign zext_ln215_1_fu_333_p1 = p_Result_2_i_reg_695;

assign zext_ln215_2_fu_358_p1 = sub_ln696_fu_353_p2;

assign zext_ln215_fu_282_p1 = p_Result_1_i_fu_258_p4;

assign zext_ln538_1_fu_315_p1 = xor_ln1350_fu_309_p2;

assign zext_ln538_2_fu_377_p1 = xor_ln1350_1_fu_371_p2;

assign zext_ln538_3_fu_487_p1 = add_ln216_1_fu_406_p2;

assign zext_ln538_fu_298_p1 = add_ln1350_fu_292_p2;

assign zext_ln874_fu_417_p1 = p_Result_1_i_reg_690_pp0_iter2_reg;

always @ (posedge ap_clk) begin
    zext_ln119_reg_701[8] <= 1'b0;
    zext_ln119_reg_701_pp0_iter2_reg[8] <= 1'b0;
    zext_ln215_reg_708[8] <= 1'b0;
    zext_ln215_reg_708_pp0_iter2_reg[8] <= 1'b0;
    zext_ln119_1_reg_729[9] <= 1'b0;
    zext_ln215_1_reg_734[9:8] <= 2'b00;
    zext_ln1351_reg_749[8] <= 1'b0;
end

endmodule //cvtcolor_bgr2hsv_bgr2hsv_9_1080_1920_1_s
