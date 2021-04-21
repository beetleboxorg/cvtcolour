// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cvtcolor_bgr2hsv_addrbound (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        return_r,
        return_r_ap_vld,
        rows_dout,
        rows_empty_n,
        rows_read,
        cols_dout,
        cols_empty_n,
        cols_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [17:0] return_r;
output   return_r_ap_vld;
input  [23:0] rows_dout;
input   rows_empty_n;
output   rows_read;
input  [26:0] cols_dout;
input   cols_empty_n;
output   cols_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg return_r_ap_vld;
reg rows_read;
reg cols_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    rows_blk_n;
reg    cols_blk_n;
reg  signed [26:0] cols_read_reg_108;
reg    ap_block_state1;
wire  signed [26:0] sub_ln976_fu_81_p2;
reg  signed [26:0] sub_ln976_reg_113;
wire    ap_CS_fsm_state2;
wire   [21:0] trunc_ln976_fu_61_p1;
wire   [26:0] shl_ln_fu_65_p3;
wire   [26:0] shl_ln976_2_fu_73_p3;
wire   [26:0] mul_ln976_fu_87_p2;
wire   [26:0] add_ln976_fu_91_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
end

cvtcolor_bgr2hsv_mul_27s_27s_27_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 27 ),
    .din1_WIDTH( 27 ),
    .dout_WIDTH( 27 ))
mul_27s_27s_27_1_1_U91(
    .din0(cols_read_reg_108),
    .din1(sub_ln976_reg_113),
    .dout(mul_ln976_fu_87_p2)
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
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (cols_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_read_reg_108 <= cols_dout;
        sub_ln976_reg_113[26 : 3] <= sub_ln976_fu_81_p2[26 : 3];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_blk_n = cols_empty_n;
    end else begin
        cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (cols_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_read = 1'b1;
    end else begin
        cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        return_r_ap_vld = 1'b1;
    end else begin
        return_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_blk_n = rows_empty_n;
    end else begin
        rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (cols_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_read = 1'b1;
    end else begin
        rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (cols_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln976_fu_91_p2 = (27'd511 + mul_ln976_fu_87_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (cols_empty_n == 1'b0) | (rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign return_r = {{add_ln976_fu_91_p2[26:9]}};

assign shl_ln976_2_fu_73_p3 = {{rows_dout}, {3'd0}};

assign shl_ln_fu_65_p3 = {{trunc_ln976_fu_61_p1}, {5'd0}};

assign sub_ln976_fu_81_p2 = (shl_ln_fu_65_p3 - shl_ln976_2_fu_73_p3);

assign trunc_ln976_fu_61_p1 = rows_dout[21:0];

always @ (posedge ap_clk) begin
    sub_ln976_reg_113[2:0] <= 3'b000;
end

endmodule //cvtcolor_bgr2hsv_addrbound
