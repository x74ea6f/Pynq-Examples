// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Sep 23 12:01:19 2020
// Host        : DESKTOP-OMB4GFF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_Project/Pynq-Examples/mnist/vivado/vivado.srcs/sources_1/bd/test_mnist/ip/test_mnist_xbar_1/test_mnist_xbar_1_stub.v
// Design      : test_mnist_xbar_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_22_axi_crossbar,Vivado 2020.1" *)
module test_mnist_xbar_1(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[63:0],s_axi_awprot[5:0],s_axi_awvalid[1:0],s_axi_awready[1:0],s_axi_wdata[63:0],s_axi_wstrb[7:0],s_axi_wvalid[1:0],s_axi_wready[1:0],s_axi_bresp[3:0],s_axi_bvalid[1:0],s_axi_bready[1:0],s_axi_araddr[63:0],s_axi_arprot[5:0],s_axi_arvalid[1:0],s_axi_arready[1:0],s_axi_rdata[63:0],s_axi_rresp[3:0],s_axi_rvalid[1:0],s_axi_rready[1:0],m_axi_awaddr[63:0],m_axi_awprot[5:0],m_axi_awvalid[1:0],m_axi_awready[1:0],m_axi_wdata[63:0],m_axi_wstrb[7:0],m_axi_wvalid[1:0],m_axi_wready[1:0],m_axi_bresp[3:0],m_axi_bvalid[1:0],m_axi_bready[1:0],m_axi_araddr[63:0],m_axi_arprot[5:0],m_axi_arvalid[1:0],m_axi_arready[1:0],m_axi_rdata[63:0],m_axi_rresp[3:0],m_axi_rvalid[1:0],m_axi_rready[1:0]" */;
  input aclk;
  input aresetn;
  input [63:0]s_axi_awaddr;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awvalid;
  output [1:0]s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [1:0]s_axi_wvalid;
  output [1:0]s_axi_wready;
  output [3:0]s_axi_bresp;
  output [1:0]s_axi_bvalid;
  input [1:0]s_axi_bready;
  input [63:0]s_axi_araddr;
  input [5:0]s_axi_arprot;
  input [1:0]s_axi_arvalid;
  output [1:0]s_axi_arready;
  output [63:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]s_axi_rvalid;
  input [1:0]s_axi_rready;
  output [63:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [63:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;
endmodule