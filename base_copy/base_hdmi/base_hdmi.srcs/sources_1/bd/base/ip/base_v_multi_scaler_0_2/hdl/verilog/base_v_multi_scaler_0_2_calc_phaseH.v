// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module base_v_multi_scaler_0_2_calc_phaseH (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        WidthIn,
        WidthOut,
        PixelRate,
        blkmm_phasesH_V_address0,
        blkmm_phasesH_V_ce0,
        blkmm_phasesH_V_we0,
        blkmm_phasesH_V_d0,
        blkmm_phasesH_V_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] WidthIn;
input  [15:0] WidthOut;
input  [31:0] PixelRate;
output  [11:0] blkmm_phasesH_V_address0;
output   blkmm_phasesH_V_ce0;
output   blkmm_phasesH_V_we0;
output  [17:0] blkmm_phasesH_V_d0;
input  [17:0] blkmm_phasesH_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] blkmm_phasesH_V_address0;
reg blkmm_phasesH_V_ce0;
reg blkmm_phasesH_V_we0;
reg[17:0] blkmm_phasesH_V_d0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] zext_ln83_fu_175_p1;
reg   [31:0] zext_ln83_reg_713;
reg   [15:0] tmp_s_reg_718;
wire   [0:0] icmp_ln60_fu_223_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] x_fu_228_p2;
reg   [15:0] x_reg_727;
wire   [2:0] zext_ln60_fu_234_p1;
reg   [11:0] blkmm_phasesH_V_addr_reg_737;
wire   [1:0] s_fu_249_p2;
reg   [1:0] s_reg_745;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln74_fu_278_p2;
reg   [0:0] icmp_ln74_reg_750;
wire   [0:0] icmp_ln64_fu_243_p2;
wire   [2:0] arrayIdx_V_1_fu_290_p2;
reg   [2:0] arrayIdx_V_1_reg_755;
wire   [31:0] offset_9_fu_296_p3;
reg   [31:0] offset_9_reg_760;
wire   [0:0] icmp_ln83_fu_314_p2;
reg   [0:0] icmp_ln83_reg_766;
wire   [4:0] zext_ln91_fu_334_p1;
reg   [4:0] zext_ln91_reg_771;
wire   [0:0] icmp_ln414_fu_348_p2;
reg   [0:0] icmp_ln414_reg_776;
wire   [17:0] shl_ln414_fu_410_p2;
reg   [17:0] shl_ln414_reg_781;
wire   [17:0] and_ln414_fu_428_p2;
reg   [17:0] and_ln414_reg_787;
wire   [4:0] add_ln92_fu_434_p2;
reg   [4:0] add_ln92_reg_793;
wire   [3:0] add_ln92_1_fu_444_p2;
reg   [3:0] add_ln92_1_reg_799;
wire   [0:0] icmp_ln414_1_fu_454_p2;
reg   [0:0] icmp_ln414_1_reg_804;
wire   [2:0] arrayIdx_V_2_fu_463_p3;
wire    ap_CS_fsm_state4;
wire   [0:0] arrayIdx_V_fu_690_p1;
wire    ap_CS_fsm_state5;
reg   [0:0] p_078_0_reg_132;
reg   [15:0] x_0_reg_143;
reg   [2:0] t_V_reg_154;
reg   [1:0] s_0_reg_164;
wire   [63:0] zext_ln62_fu_238_p1;
reg   [31:0] xWritePos_1_fu_92;
wire   [31:0] xWritePos_2_fu_496_p3;
reg   [31:0] offset_8_fu_96;
wire   [31:0] offset_11_fu_489_p3;
reg   [17:0] p_Result_s_fu_669_p4;
wire   [0:0] empty_fu_179_p2;
wire   [15:0] umax_fu_185_p3;
wire   [16:0] empty_134_fu_193_p1;
wire   [16:0] add_ln60_fu_197_p2;
wire   [15:0] tmp_50_fu_268_p4;
wire   [31:0] offset_fu_284_p2;
wire   [15:0] tmp_51_fu_304_p4;
wire   [0:0] trunc_ln91_fu_320_p1;
wire   [3:0] Lo_assign_fu_324_p4;
wire   [5:0] PhaseH_V_fu_258_p4;
wire   [3:0] add_ln91_fu_338_p2;
wire   [4:0] zext_ln414_fu_354_p1;
wire   [4:0] zext_ln414_1_fu_358_p1;
wire   [4:0] sub_ln414_fu_362_p2;
wire   [4:0] select_ln414_fu_368_p3;
wire   [4:0] select_ln414_2_fu_384_p3;
wire   [4:0] select_ln414_1_fu_376_p3;
wire   [4:0] sub_ln414_1_fu_392_p2;
wire   [17:0] tmp_V_fu_344_p1;
wire   [17:0] zext_ln414_2_fu_398_p1;
wire   [17:0] zext_ln414_3_fu_402_p1;
wire   [17:0] zext_ln414_4_fu_406_p1;
wire   [17:0] shl_ln414_1_fu_416_p2;
wire   [17:0] lshr_ln414_fu_422_p2;
wire   [31:0] zext_ln92_1_fu_450_p1;
wire   [31:0] zext_ln92_fu_440_p1;
wire   [0:0] icmp_ln83_1_fu_469_p2;
wire   [0:0] and_ln83_fu_474_p2;
wire   [31:0] offset_10_fu_479_p2;
wire   [31:0] xWritePos_fu_483_p2;
reg   [17:0] tmp_52_fu_504_p4;
wire   [17:0] xor_ln414_fu_519_p2;
wire   [17:0] select_ln414_3_fu_513_p3;
wire   [17:0] and_ln414_1_fu_524_p2;
wire   [17:0] and_ln414_2_fu_530_p2;
wire   [4:0] zext_ln414_5_fu_545_p1;
wire   [4:0] sub_ln414_2_fu_548_p2;
wire   [4:0] select_ln414_4_fu_554_p3;
wire   [4:0] select_ln414_6_fu_566_p3;
wire   [4:0] select_ln414_5_fu_560_p3;
wire   [4:0] sub_ln414_3_fu_573_p2;
wire   [17:0] tmp_V_1_fu_541_p1;
wire   [17:0] zext_ln414_6_fu_579_p1;
wire   [17:0] shl_ln414_2_fu_591_p2;
reg   [17:0] tmp_53_fu_597_p4;
wire   [17:0] zext_ln414_7_fu_583_p1;
wire   [17:0] zext_ln414_8_fu_587_p1;
wire   [17:0] shl_ln414_3_fu_614_p2;
wire   [17:0] lshr_ln414_1_fu_620_p2;
wire   [17:0] and_ln414_3_fu_626_p2;
wire   [17:0] p_Result_1_fu_535_p2;
wire   [17:0] xor_ln414_1_fu_632_p2;
wire   [17:0] select_ln414_7_fu_607_p3;
wire   [17:0] and_ln414_4_fu_638_p2;
wire   [17:0] and_ln414_5_fu_644_p2;
wire   [4:0] bvh_d_index_fu_656_p2;
wire   [17:0] p_Result_2_fu_650_p2;
wire   [31:0] zext_ln93_fu_661_p1;
wire   [63:0] p_Repl2_2_fu_665_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        offset_8_fu_96 <= offset_11_fu_489_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        offset_8_fu_96 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_078_0_reg_132 <= arrayIdx_V_fu_690_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_078_0_reg_132 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        s_0_reg_164 <= s_reg_745;
    end else if (((icmp_ln60_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        s_0_reg_164 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        t_V_reg_154 <= arrayIdx_V_2_fu_463_p3;
    end else if (((icmp_ln60_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_reg_154 <= zext_ln60_fu_234_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        xWritePos_1_fu_92 <= xWritePos_2_fu_496_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        xWritePos_1_fu_92 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        x_0_reg_143 <= x_reg_727;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        x_0_reg_143 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln64_fu_243_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln92_1_reg_799 <= add_ln92_1_fu_444_p2;
        add_ln92_reg_793 <= add_ln92_fu_434_p2;
        and_ln414_reg_787 <= and_ln414_fu_428_p2;
        arrayIdx_V_1_reg_755 <= arrayIdx_V_1_fu_290_p2;
        icmp_ln414_1_reg_804 <= icmp_ln414_1_fu_454_p2;
        icmp_ln414_reg_776 <= icmp_ln414_fu_348_p2;
        icmp_ln74_reg_750 <= icmp_ln74_fu_278_p2;
        icmp_ln83_reg_766 <= icmp_ln83_fu_314_p2;
        offset_9_reg_760 <= offset_9_fu_296_p3;
        shl_ln414_reg_781 <= shl_ln414_fu_410_p2;
        zext_ln91_reg_771[1 : 0] <= zext_ln91_fu_334_p1[1 : 0];
zext_ln91_reg_771[3] <= zext_ln91_fu_334_p1[3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln60_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        blkmm_phasesH_V_addr_reg_737 <= zext_ln62_fu_238_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_reg_745 <= s_fu_249_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_s_reg_718 <= {{add_ln60_fu_197_p2[16:1]}};
        zext_ln83_reg_713[15 : 0] <= zext_ln83_fu_175_p1[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_reg_727 <= x_fu_228_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln60_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((icmp_ln60_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        blkmm_phasesH_V_address0 = blkmm_phasesH_V_addr_reg_737;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        blkmm_phasesH_V_address0 = zext_ln62_fu_238_p1;
    end else begin
        blkmm_phasesH_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        blkmm_phasesH_V_ce0 = 1'b1;
    end else begin
        blkmm_phasesH_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        blkmm_phasesH_V_d0 = p_Result_s_fu_669_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        blkmm_phasesH_V_d0 = 18'd0;
    end else begin
        blkmm_phasesH_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln60_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        blkmm_phasesH_V_we0 = 1'b1;
    end else begin
        blkmm_phasesH_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln60_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln64_fu_243_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Lo_assign_fu_324_p4 = {{{trunc_ln91_fu_320_p1}, {1'd0}}, {s_0_reg_164}};

assign PhaseH_V_fu_258_p4 = {{offset_8_fu_96[15:10]}};

assign add_ln60_fu_197_p2 = (empty_134_fu_193_p1 + 17'd1);

assign add_ln91_fu_338_p2 = (4'd5 + Lo_assign_fu_324_p4);

assign add_ln92_1_fu_444_p2 = (4'd6 + Lo_assign_fu_324_p4);

assign add_ln92_fu_434_p2 = (5'd7 + zext_ln91_fu_334_p1);

assign and_ln414_1_fu_524_p2 = (xor_ln414_fu_519_p2 & blkmm_phasesH_V_q0);

assign and_ln414_2_fu_530_p2 = (select_ln414_3_fu_513_p3 & and_ln414_reg_787);

assign and_ln414_3_fu_626_p2 = (shl_ln414_3_fu_614_p2 & lshr_ln414_1_fu_620_p2);

assign and_ln414_4_fu_638_p2 = (xor_ln414_1_fu_632_p2 & p_Result_1_fu_535_p2);

assign and_ln414_5_fu_644_p2 = (select_ln414_7_fu_607_p3 & and_ln414_3_fu_626_p2);

assign and_ln414_fu_428_p2 = (shl_ln414_1_fu_416_p2 & lshr_ln414_fu_422_p2);

assign and_ln83_fu_474_p2 = (icmp_ln83_reg_766 & icmp_ln83_1_fu_469_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign arrayIdx_V_1_fu_290_p2 = (3'd1 + t_V_reg_154);

assign arrayIdx_V_2_fu_463_p3 = ((icmp_ln74_reg_750[0:0] === 1'b1) ? arrayIdx_V_1_reg_755 : t_V_reg_154);

assign arrayIdx_V_fu_690_p1 = t_V_reg_154[0:0];

assign bvh_d_index_fu_656_p2 = (5'd8 + zext_ln91_reg_771);

assign empty_134_fu_193_p1 = umax_fu_185_p3;

assign empty_fu_179_p2 = ((WidthOut > WidthIn) ? 1'b1 : 1'b0);

assign icmp_ln414_1_fu_454_p2 = ((zext_ln92_1_fu_450_p1 > zext_ln92_fu_440_p1) ? 1'b1 : 1'b0);

assign icmp_ln414_fu_348_p2 = ((Lo_assign_fu_324_p4 > 4'd10) ? 1'b1 : 1'b0);

assign icmp_ln60_fu_223_p2 = ((x_0_reg_143 == tmp_s_reg_718) ? 1'b1 : 1'b0);

assign icmp_ln64_fu_243_p2 = ((s_0_reg_164 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_278_p2 = ((tmp_50_fu_268_p4 != 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln83_1_fu_469_p2 = ((xWritePos_1_fu_92 < zext_ln83_reg_713) ? 1'b1 : 1'b0);

assign icmp_ln83_fu_314_p2 = ((tmp_51_fu_304_p4 == 16'd0) ? 1'b1 : 1'b0);

assign lshr_ln414_1_fu_620_p2 = 18'd262143 >> zext_ln414_8_fu_587_p1;

assign lshr_ln414_fu_422_p2 = 18'd262143 >> zext_ln414_4_fu_406_p1;

assign offset_10_fu_479_p2 = (PixelRate + offset_9_reg_760);

assign offset_11_fu_489_p3 = ((and_ln83_fu_474_p2[0:0] === 1'b1) ? offset_10_fu_479_p2 : offset_9_reg_760);

assign offset_9_fu_296_p3 = ((icmp_ln74_fu_278_p2[0:0] === 1'b1) ? offset_fu_284_p2 : offset_8_fu_96);

assign offset_fu_284_p2 = ($signed(32'd4294901760) + $signed(offset_8_fu_96));

assign p_Repl2_2_fu_665_p1 = and_ln83_fu_474_p2;

assign p_Result_1_fu_535_p2 = (and_ln414_2_fu_530_p2 | and_ln414_1_fu_524_p2);

assign p_Result_2_fu_650_p2 = (and_ln414_5_fu_644_p2 | and_ln414_4_fu_638_p2);

always @ (*) begin
    p_Result_s_fu_669_p4 = p_Result_2_fu_650_p2;
    p_Result_s_fu_669_p4[zext_ln93_fu_661_p1] = |(p_Repl2_2_fu_665_p1);
end

assign s_fu_249_p2 = (s_0_reg_164 + 2'd1);

assign select_ln414_1_fu_376_p3 = ((icmp_ln414_fu_348_p2[0:0] === 1'b1) ? zext_ln414_1_fu_358_p1 : zext_ln414_fu_354_p1);

assign select_ln414_2_fu_384_p3 = ((icmp_ln414_fu_348_p2[0:0] === 1'b1) ? sub_ln414_fu_362_p2 : zext_ln414_fu_354_p1);

assign select_ln414_3_fu_513_p3 = ((icmp_ln414_reg_776[0:0] === 1'b1) ? tmp_52_fu_504_p4 : shl_ln414_reg_781);

assign select_ln414_4_fu_554_p3 = ((icmp_ln414_1_reg_804[0:0] === 1'b1) ? zext_ln414_5_fu_545_p1 : add_ln92_reg_793);

assign select_ln414_5_fu_560_p3 = ((icmp_ln414_1_reg_804[0:0] === 1'b1) ? add_ln92_reg_793 : zext_ln414_5_fu_545_p1);

assign select_ln414_6_fu_566_p3 = ((icmp_ln414_1_reg_804[0:0] === 1'b1) ? sub_ln414_2_fu_548_p2 : zext_ln414_5_fu_545_p1);

assign select_ln414_7_fu_607_p3 = ((icmp_ln414_1_reg_804[0:0] === 1'b1) ? tmp_53_fu_597_p4 : shl_ln414_2_fu_591_p2);

assign select_ln414_fu_368_p3 = ((icmp_ln414_fu_348_p2[0:0] === 1'b1) ? zext_ln414_fu_354_p1 : zext_ln414_1_fu_358_p1);

assign shl_ln414_1_fu_416_p2 = 18'd262143 << zext_ln414_3_fu_402_p1;

assign shl_ln414_2_fu_591_p2 = tmp_V_1_fu_541_p1 << zext_ln414_6_fu_579_p1;

assign shl_ln414_3_fu_614_p2 = 18'd262143 << zext_ln414_7_fu_583_p1;

assign shl_ln414_fu_410_p2 = tmp_V_fu_344_p1 << zext_ln414_2_fu_398_p1;

assign sub_ln414_1_fu_392_p2 = ($signed(5'd17) - $signed(select_ln414_fu_368_p3));

assign sub_ln414_2_fu_548_p2 = ($signed(5'd17) - $signed(zext_ln414_5_fu_545_p1));

assign sub_ln414_3_fu_573_p2 = ($signed(5'd17) - $signed(select_ln414_4_fu_554_p3));

assign sub_ln414_fu_362_p2 = ($signed(5'd17) - $signed(zext_ln414_fu_354_p1));

assign tmp_50_fu_268_p4 = {{offset_8_fu_96[31:16]}};

assign tmp_51_fu_304_p4 = {{offset_9_fu_296_p3[31:16]}};

integer ap_tvar_int_0;

always @ (shl_ln414_reg_781) begin
    for (ap_tvar_int_0 = 18 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 17 - 0) begin
            tmp_52_fu_504_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_52_fu_504_p4[ap_tvar_int_0] = shl_ln414_reg_781[17 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln414_2_fu_591_p2) begin
    for (ap_tvar_int_1 = 18 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 17 - 0) begin
            tmp_53_fu_597_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_53_fu_597_p4[ap_tvar_int_1] = shl_ln414_2_fu_591_p2[17 - ap_tvar_int_1];
        end
    end
end

assign tmp_V_1_fu_541_p1 = arrayIdx_V_2_fu_463_p3;

assign tmp_V_fu_344_p1 = PhaseH_V_fu_258_p4;

assign trunc_ln91_fu_320_p1 = s_0_reg_164[0:0];

assign umax_fu_185_p3 = ((empty_fu_179_p2[0:0] === 1'b1) ? WidthOut : WidthIn);

assign xWritePos_2_fu_496_p3 = ((and_ln83_fu_474_p2[0:0] === 1'b1) ? xWritePos_fu_483_p2 : xWritePos_1_fu_92);

assign xWritePos_fu_483_p2 = (32'd1 + xWritePos_1_fu_92);

assign x_fu_228_p2 = (x_0_reg_143 + 16'd1);

assign xor_ln414_1_fu_632_p2 = (18'd262143 ^ and_ln414_3_fu_626_p2);

assign xor_ln414_fu_519_p2 = (18'd262143 ^ and_ln414_reg_787);

assign zext_ln414_1_fu_358_p1 = add_ln91_fu_338_p2;

assign zext_ln414_2_fu_398_p1 = select_ln414_2_fu_384_p3;

assign zext_ln414_3_fu_402_p1 = select_ln414_1_fu_376_p3;

assign zext_ln414_4_fu_406_p1 = sub_ln414_1_fu_392_p2;

assign zext_ln414_5_fu_545_p1 = add_ln92_1_reg_799;

assign zext_ln414_6_fu_579_p1 = select_ln414_6_fu_566_p3;

assign zext_ln414_7_fu_583_p1 = select_ln414_5_fu_560_p3;

assign zext_ln414_8_fu_587_p1 = sub_ln414_3_fu_573_p2;

assign zext_ln414_fu_354_p1 = Lo_assign_fu_324_p4;

assign zext_ln60_fu_234_p1 = p_078_0_reg_132;

assign zext_ln62_fu_238_p1 = x_0_reg_143;

assign zext_ln83_fu_175_p1 = WidthOut;

assign zext_ln91_fu_334_p1 = Lo_assign_fu_324_p4;

assign zext_ln92_1_fu_450_p1 = add_ln92_1_fu_444_p2;

assign zext_ln92_fu_440_p1 = add_ln92_fu_434_p2;

assign zext_ln93_fu_661_p1 = bvh_d_index_fu_656_p2;

always @ (posedge ap_clk) begin
    zext_ln83_reg_713[31:16] <= 16'b0000000000000000;
    zext_ln91_reg_771[2] <= 1'b0;
    zext_ln91_reg_771[4] <= 1'b0;
end

endmodule //base_v_multi_scaler_0_2_calc_phaseH