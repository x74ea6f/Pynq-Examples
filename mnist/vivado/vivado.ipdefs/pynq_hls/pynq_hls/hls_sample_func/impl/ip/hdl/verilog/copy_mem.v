// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="copy_mem,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=17.500000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=1027,HLS_SYN_LUT=1092,HLS_VERSION=2020_1}" *)

module copy_mem (
        ap_clk,
        ap_rst_n,
        m_axi_extMemPtr_V_AWVALID,
        m_axi_extMemPtr_V_AWREADY,
        m_axi_extMemPtr_V_AWADDR,
        m_axi_extMemPtr_V_AWID,
        m_axi_extMemPtr_V_AWLEN,
        m_axi_extMemPtr_V_AWSIZE,
        m_axi_extMemPtr_V_AWBURST,
        m_axi_extMemPtr_V_AWLOCK,
        m_axi_extMemPtr_V_AWCACHE,
        m_axi_extMemPtr_V_AWPROT,
        m_axi_extMemPtr_V_AWQOS,
        m_axi_extMemPtr_V_AWREGION,
        m_axi_extMemPtr_V_AWUSER,
        m_axi_extMemPtr_V_WVALID,
        m_axi_extMemPtr_V_WREADY,
        m_axi_extMemPtr_V_WDATA,
        m_axi_extMemPtr_V_WSTRB,
        m_axi_extMemPtr_V_WLAST,
        m_axi_extMemPtr_V_WID,
        m_axi_extMemPtr_V_WUSER,
        m_axi_extMemPtr_V_ARVALID,
        m_axi_extMemPtr_V_ARREADY,
        m_axi_extMemPtr_V_ARADDR,
        m_axi_extMemPtr_V_ARID,
        m_axi_extMemPtr_V_ARLEN,
        m_axi_extMemPtr_V_ARSIZE,
        m_axi_extMemPtr_V_ARBURST,
        m_axi_extMemPtr_V_ARLOCK,
        m_axi_extMemPtr_V_ARCACHE,
        m_axi_extMemPtr_V_ARPROT,
        m_axi_extMemPtr_V_ARQOS,
        m_axi_extMemPtr_V_ARREGION,
        m_axi_extMemPtr_V_ARUSER,
        m_axi_extMemPtr_V_RVALID,
        m_axi_extMemPtr_V_RREADY,
        m_axi_extMemPtr_V_RDATA,
        m_axi_extMemPtr_V_RLAST,
        m_axi_extMemPtr_V_RID,
        m_axi_extMemPtr_V_RUSER,
        m_axi_extMemPtr_V_RRESP,
        m_axi_extMemPtr_V_BVALID,
        m_axi_extMemPtr_V_BREADY,
        m_axi_extMemPtr_V_BRESP,
        m_axi_extMemPtr_V_BID,
        m_axi_extMemPtr_V_BUSER,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_EXTMEMPTR_V_ID_WIDTH = 1;
parameter    C_M_AXI_EXTMEMPTR_V_ADDR_WIDTH = 32;
parameter    C_M_AXI_EXTMEMPTR_V_DATA_WIDTH = 32;
parameter    C_M_AXI_EXTMEMPTR_V_AWUSER_WIDTH = 1;
parameter    C_M_AXI_EXTMEMPTR_V_ARUSER_WIDTH = 1;
parameter    C_M_AXI_EXTMEMPTR_V_WUSER_WIDTH = 1;
parameter    C_M_AXI_EXTMEMPTR_V_RUSER_WIDTH = 1;
parameter    C_M_AXI_EXTMEMPTR_V_BUSER_WIDTH = 1;
parameter    C_M_AXI_EXTMEMPTR_V_TARGET_ADDR = 0;
parameter    C_M_AXI_EXTMEMPTR_V_USER_VALUE = 0;
parameter    C_M_AXI_EXTMEMPTR_V_PROT_VALUE = 0;
parameter    C_M_AXI_EXTMEMPTR_V_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_EXTMEMPTR_V_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_extMemPtr_V_AWVALID;
input   m_axi_extMemPtr_V_AWREADY;
output  [C_M_AXI_EXTMEMPTR_V_ADDR_WIDTH - 1:0] m_axi_extMemPtr_V_AWADDR;
output  [C_M_AXI_EXTMEMPTR_V_ID_WIDTH - 1:0] m_axi_extMemPtr_V_AWID;
output  [7:0] m_axi_extMemPtr_V_AWLEN;
output  [2:0] m_axi_extMemPtr_V_AWSIZE;
output  [1:0] m_axi_extMemPtr_V_AWBURST;
output  [1:0] m_axi_extMemPtr_V_AWLOCK;
output  [3:0] m_axi_extMemPtr_V_AWCACHE;
output  [2:0] m_axi_extMemPtr_V_AWPROT;
output  [3:0] m_axi_extMemPtr_V_AWQOS;
output  [3:0] m_axi_extMemPtr_V_AWREGION;
output  [C_M_AXI_EXTMEMPTR_V_AWUSER_WIDTH - 1:0] m_axi_extMemPtr_V_AWUSER;
output   m_axi_extMemPtr_V_WVALID;
input   m_axi_extMemPtr_V_WREADY;
output  [C_M_AXI_EXTMEMPTR_V_DATA_WIDTH - 1:0] m_axi_extMemPtr_V_WDATA;
output  [C_M_AXI_EXTMEMPTR_V_WSTRB_WIDTH - 1:0] m_axi_extMemPtr_V_WSTRB;
output   m_axi_extMemPtr_V_WLAST;
output  [C_M_AXI_EXTMEMPTR_V_ID_WIDTH - 1:0] m_axi_extMemPtr_V_WID;
output  [C_M_AXI_EXTMEMPTR_V_WUSER_WIDTH - 1:0] m_axi_extMemPtr_V_WUSER;
output   m_axi_extMemPtr_V_ARVALID;
input   m_axi_extMemPtr_V_ARREADY;
output  [C_M_AXI_EXTMEMPTR_V_ADDR_WIDTH - 1:0] m_axi_extMemPtr_V_ARADDR;
output  [C_M_AXI_EXTMEMPTR_V_ID_WIDTH - 1:0] m_axi_extMemPtr_V_ARID;
output  [7:0] m_axi_extMemPtr_V_ARLEN;
output  [2:0] m_axi_extMemPtr_V_ARSIZE;
output  [1:0] m_axi_extMemPtr_V_ARBURST;
output  [1:0] m_axi_extMemPtr_V_ARLOCK;
output  [3:0] m_axi_extMemPtr_V_ARCACHE;
output  [2:0] m_axi_extMemPtr_V_ARPROT;
output  [3:0] m_axi_extMemPtr_V_ARQOS;
output  [3:0] m_axi_extMemPtr_V_ARREGION;
output  [C_M_AXI_EXTMEMPTR_V_ARUSER_WIDTH - 1:0] m_axi_extMemPtr_V_ARUSER;
input   m_axi_extMemPtr_V_RVALID;
output   m_axi_extMemPtr_V_RREADY;
input  [C_M_AXI_EXTMEMPTR_V_DATA_WIDTH - 1:0] m_axi_extMemPtr_V_RDATA;
input   m_axi_extMemPtr_V_RLAST;
input  [C_M_AXI_EXTMEMPTR_V_ID_WIDTH - 1:0] m_axi_extMemPtr_V_RID;
input  [C_M_AXI_EXTMEMPTR_V_RUSER_WIDTH - 1:0] m_axi_extMemPtr_V_RUSER;
input  [1:0] m_axi_extMemPtr_V_RRESP;
input   m_axi_extMemPtr_V_BVALID;
output   m_axi_extMemPtr_V_BREADY;
input  [1:0] m_axi_extMemPtr_V_BRESP;
input  [C_M_AXI_EXTMEMPTR_V_ID_WIDTH - 1:0] m_axi_extMemPtr_V_BID;
input  [C_M_AXI_EXTMEMPTR_V_BUSER_WIDTH - 1:0] m_axi_extMemPtr_V_BUSER;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] inputBaseMemAdr_V;
reg   [31:0] inputBaseMemAdr_V_0_data_reg;
reg    inputBaseMemAdr_V_0_vld_reg;
reg    inputBaseMemAdr_V_0_ack_out;
wire   [31:0] outputBaseMemAdr_V;
reg   [31:0] outputBaseMemAdr_V_0_data_reg;
reg    outputBaseMemAdr_V_0_vld_reg;
reg    outputBaseMemAdr_V_0_ack_out;
wire   [31:0] loadSize_V;
reg   [31:0] loadSize_V_0_data_reg;
reg    loadSize_V_0_vld_reg;
reg    loadSize_V_0_ack_out;
reg    extMemPtr_V_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    extMemPtr_V_blk_n_R;
wire    ap_CS_fsm_state11;
reg    extMemPtr_V_blk_n_AW;
reg    extMemPtr_V_blk_n_W;
wire    ap_CS_fsm_state12;
reg    extMemPtr_V_blk_n_B;
wire    ap_CS_fsm_state17;
reg    extMemPtr_V_AWVALID;
wire    extMemPtr_V_AWREADY;
reg    extMemPtr_V_WVALID;
wire    extMemPtr_V_WREADY;
reg    extMemPtr_V_ARVALID;
wire    extMemPtr_V_ARREADY;
wire    extMemPtr_V_RVALID;
reg    extMemPtr_V_RREADY;
wire   [31:0] extMemPtr_V_RDATA;
wire    extMemPtr_V_RLAST;
wire   [0:0] extMemPtr_V_RID;
wire   [0:0] extMemPtr_V_RUSER;
wire   [1:0] extMemPtr_V_RRESP;
wire    extMemPtr_V_BVALID;
reg    extMemPtr_V_BREADY;
wire   [1:0] extMemPtr_V_BRESP;
wire   [0:0] extMemPtr_V_BID;
wire   [0:0] extMemPtr_V_BUSER;
reg   [31:0] loadSize_V_read_reg_180;
wire    ap_CS_fsm_state2;
wire   [32:0] zext_ln215_fu_127_p1;
reg   [32:0] zext_ln215_reg_185;
wire   [32:0] zext_ln20_fu_131_p1;
reg   [32:0] zext_ln20_reg_190;
wire   [31:0] i_fu_140_p2;
reg   [31:0] i_reg_198;
wire    ap_CS_fsm_state3;
reg   [31:0] extMemPtr_V_addr_reg_203;
wire   [0:0] icmp_ln20_fu_135_p2;
reg   [31:0] extMemPtr_V_addr_1_reg_209;
reg   [31:0] data_V_reg_215;
reg  signed [31:0] i_op_assign_reg_96;
wire  signed [63:0] sext_ln544_fu_155_p1;
wire  signed [63:0] sext_ln544_1_fu_170_p1;
wire   [29:0] r_V_fu_107_p4;
wire   [29:0] r_V_1_fu_117_p4;
wire  signed [32:0] sext_ln215_fu_146_p1;
wire   [32:0] ret_V_fu_150_p2;
wire   [32:0] ret_V_1_fu_165_p2;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
#0 inputBaseMemAdr_V_0_data_reg = 32'd0;
#0 inputBaseMemAdr_V_0_vld_reg = 1'b0;
#0 outputBaseMemAdr_V_0_data_reg = 32'd0;
#0 outputBaseMemAdr_V_0_vld_reg = 1'b0;
#0 loadSize_V_0_data_reg = 32'd0;
#0 loadSize_V_0_vld_reg = 1'b0;
end

copy_mem_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
copy_mem_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .inputBaseMemAdr_V(inputBaseMemAdr_V),
    .outputBaseMemAdr_V(outputBaseMemAdr_V),
    .loadSize_V(loadSize_V)
);

copy_mem_extMemPtr_V_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 32 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_EXTMEMPTR_V_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_EXTMEMPTR_V_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_EXTMEMPTR_V_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_EXTMEMPTR_V_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_EXTMEMPTR_V_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_EXTMEMPTR_V_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_EXTMEMPTR_V_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_EXTMEMPTR_V_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_EXTMEMPTR_V_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_EXTMEMPTR_V_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_EXTMEMPTR_V_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_EXTMEMPTR_V_CACHE_VALUE ))
copy_mem_extMemPtr_V_m_axi_U(
    .AWVALID(m_axi_extMemPtr_V_AWVALID),
    .AWREADY(m_axi_extMemPtr_V_AWREADY),
    .AWADDR(m_axi_extMemPtr_V_AWADDR),
    .AWID(m_axi_extMemPtr_V_AWID),
    .AWLEN(m_axi_extMemPtr_V_AWLEN),
    .AWSIZE(m_axi_extMemPtr_V_AWSIZE),
    .AWBURST(m_axi_extMemPtr_V_AWBURST),
    .AWLOCK(m_axi_extMemPtr_V_AWLOCK),
    .AWCACHE(m_axi_extMemPtr_V_AWCACHE),
    .AWPROT(m_axi_extMemPtr_V_AWPROT),
    .AWQOS(m_axi_extMemPtr_V_AWQOS),
    .AWREGION(m_axi_extMemPtr_V_AWREGION),
    .AWUSER(m_axi_extMemPtr_V_AWUSER),
    .WVALID(m_axi_extMemPtr_V_WVALID),
    .WREADY(m_axi_extMemPtr_V_WREADY),
    .WDATA(m_axi_extMemPtr_V_WDATA),
    .WSTRB(m_axi_extMemPtr_V_WSTRB),
    .WLAST(m_axi_extMemPtr_V_WLAST),
    .WID(m_axi_extMemPtr_V_WID),
    .WUSER(m_axi_extMemPtr_V_WUSER),
    .ARVALID(m_axi_extMemPtr_V_ARVALID),
    .ARREADY(m_axi_extMemPtr_V_ARREADY),
    .ARADDR(m_axi_extMemPtr_V_ARADDR),
    .ARID(m_axi_extMemPtr_V_ARID),
    .ARLEN(m_axi_extMemPtr_V_ARLEN),
    .ARSIZE(m_axi_extMemPtr_V_ARSIZE),
    .ARBURST(m_axi_extMemPtr_V_ARBURST),
    .ARLOCK(m_axi_extMemPtr_V_ARLOCK),
    .ARCACHE(m_axi_extMemPtr_V_ARCACHE),
    .ARPROT(m_axi_extMemPtr_V_ARPROT),
    .ARQOS(m_axi_extMemPtr_V_ARQOS),
    .ARREGION(m_axi_extMemPtr_V_ARREGION),
    .ARUSER(m_axi_extMemPtr_V_ARUSER),
    .RVALID(m_axi_extMemPtr_V_RVALID),
    .RREADY(m_axi_extMemPtr_V_RREADY),
    .RDATA(m_axi_extMemPtr_V_RDATA),
    .RLAST(m_axi_extMemPtr_V_RLAST),
    .RID(m_axi_extMemPtr_V_RID),
    .RUSER(m_axi_extMemPtr_V_RUSER),
    .RRESP(m_axi_extMemPtr_V_RRESP),
    .BVALID(m_axi_extMemPtr_V_BVALID),
    .BREADY(m_axi_extMemPtr_V_BREADY),
    .BRESP(m_axi_extMemPtr_V_BRESP),
    .BID(m_axi_extMemPtr_V_BID),
    .BUSER(m_axi_extMemPtr_V_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(extMemPtr_V_ARVALID),
    .I_ARREADY(extMemPtr_V_ARREADY),
    .I_ARADDR(extMemPtr_V_addr_reg_203),
    .I_ARID(1'd0),
    .I_ARLEN(32'd1),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(extMemPtr_V_RVALID),
    .I_RREADY(extMemPtr_V_RREADY),
    .I_RDATA(extMemPtr_V_RDATA),
    .I_RID(extMemPtr_V_RID),
    .I_RUSER(extMemPtr_V_RUSER),
    .I_RRESP(extMemPtr_V_RRESP),
    .I_RLAST(extMemPtr_V_RLAST),
    .I_AWVALID(extMemPtr_V_AWVALID),
    .I_AWREADY(extMemPtr_V_AWREADY),
    .I_AWADDR(extMemPtr_V_addr_1_reg_209),
    .I_AWID(1'd0),
    .I_AWLEN(32'd1),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(extMemPtr_V_WVALID),
    .I_WREADY(extMemPtr_V_WREADY),
    .I_WDATA(data_V_reg_215),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd15),
    .I_BVALID(extMemPtr_V_BVALID),
    .I_BREADY(extMemPtr_V_BREADY),
    .I_BRESP(extMemPtr_V_BRESP),
    .I_BID(extMemPtr_V_BID),
    .I_BUSER(extMemPtr_V_BUSER)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((extMemPtr_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        i_op_assign_reg_96 <= i_reg_198;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_op_assign_reg_96 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((extMemPtr_V_RVALID == 1'b0) | (extMemPtr_V_AWREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        data_V_reg_215 <= extMemPtr_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln20_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        extMemPtr_V_addr_1_reg_209 <= sext_ln544_1_fu_170_p1;
        extMemPtr_V_addr_reg_203 <= sext_ln544_fu_155_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_198 <= i_fu_140_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (inputBaseMemAdr_V_0_vld_reg == 1'b0) & (1'b1 == 1'b1)) | (~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (inputBaseMemAdr_V_0_ack_out == 1'b1) & (1'b1 == 1'b1) & (inputBaseMemAdr_V_0_vld_reg == 1'b1)))) begin
        inputBaseMemAdr_V_0_data_reg <= inputBaseMemAdr_V;
    end
end

always @ (posedge ap_clk) begin
    if (((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (loadSize_V_0_vld_reg == 1'b0) & (1'b1 == 1'b1)) | (~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (loadSize_V_0_ack_out == 1'b1) & (1'b1 == 1'b1) & (loadSize_V_0_vld_reg == 1'b1)))) begin
        loadSize_V_0_data_reg <= loadSize_V;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        loadSize_V_read_reg_180 <= loadSize_V_0_data_reg;
        zext_ln20_reg_190[29 : 0] <= zext_ln20_fu_131_p1[29 : 0];
        zext_ln215_reg_185[29 : 0] <= zext_ln215_fu_127_p1[29 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (outputBaseMemAdr_V_0_vld_reg == 1'b0) & (1'b1 == 1'b1)) | (~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (outputBaseMemAdr_V_0_ack_out == 1'b1) & (1'b1 == 1'b1) & (outputBaseMemAdr_V_0_vld_reg == 1'b1)))) begin
        outputBaseMemAdr_V_0_data_reg <= outputBaseMemAdr_V;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((icmp_ln20_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((extMemPtr_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        extMemPtr_V_ARVALID = 1'b1;
    end else begin
        extMemPtr_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((extMemPtr_V_RVALID == 1'b0) | (extMemPtr_V_AWREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        extMemPtr_V_AWVALID = 1'b1;
    end else begin
        extMemPtr_V_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((extMemPtr_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        extMemPtr_V_BREADY = 1'b1;
    end else begin
        extMemPtr_V_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((extMemPtr_V_RVALID == 1'b0) | (extMemPtr_V_AWREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        extMemPtr_V_RREADY = 1'b1;
    end else begin
        extMemPtr_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((extMemPtr_V_WREADY == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        extMemPtr_V_WVALID = 1'b1;
    end else begin
        extMemPtr_V_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        extMemPtr_V_blk_n_AR = m_axi_extMemPtr_V_ARREADY;
    end else begin
        extMemPtr_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        extMemPtr_V_blk_n_AW = m_axi_extMemPtr_V_AWREADY;
    end else begin
        extMemPtr_V_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        extMemPtr_V_blk_n_B = m_axi_extMemPtr_V_BVALID;
    end else begin
        extMemPtr_V_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        extMemPtr_V_blk_n_R = m_axi_extMemPtr_V_RVALID;
    end else begin
        extMemPtr_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        extMemPtr_V_blk_n_W = m_axi_extMemPtr_V_WREADY;
    end else begin
        extMemPtr_V_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        inputBaseMemAdr_V_0_ack_out = 1'b1;
    end else begin
        inputBaseMemAdr_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        loadSize_V_0_ack_out = 1'b1;
    end else begin
        loadSize_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        outputBaseMemAdr_V_0_ack_out = 1'b1;
    end else begin
        outputBaseMemAdr_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln20_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((extMemPtr_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if ((~((extMemPtr_V_RVALID == 1'b0) | (extMemPtr_V_AWREADY == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((extMemPtr_V_WREADY == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((extMemPtr_V_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign i_fu_140_p2 = ($signed(i_op_assign_reg_96) + $signed(32'd1));

assign icmp_ln20_fu_135_p2 = ((i_op_assign_reg_96 == loadSize_V_read_reg_180) ? 1'b1 : 1'b0);

assign r_V_1_fu_117_p4 = {{outputBaseMemAdr_V_0_data_reg[31:2]}};

assign r_V_fu_107_p4 = {{inputBaseMemAdr_V_0_data_reg[31:2]}};

assign ret_V_1_fu_165_p2 = ($signed(sext_ln215_fu_146_p1) + $signed(zext_ln20_reg_190));

assign ret_V_fu_150_p2 = ($signed(sext_ln215_fu_146_p1) + $signed(zext_ln215_reg_185));

assign sext_ln215_fu_146_p1 = i_op_assign_reg_96;

assign sext_ln544_1_fu_170_p1 = $signed(ret_V_1_fu_165_p2);

assign sext_ln544_fu_155_p1 = $signed(ret_V_fu_150_p2);

assign zext_ln20_fu_131_p1 = r_V_1_fu_117_p4;

assign zext_ln215_fu_127_p1 = r_V_fu_107_p4;

always @ (posedge ap_clk) begin
    zext_ln215_reg_185[32:30] <= 3'b000;
    zext_ln20_reg_190[32:30] <= 3'b000;
end

endmodule //copy_mem
