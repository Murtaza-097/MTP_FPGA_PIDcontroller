//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Oct 12 23:49:14 2022
//Host        : HYDRA running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    dataout_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [11:0]dataout_0;

  wire clk_0_1;
  wire [7:0]dds_compiler_0_m_axis_data_tdata;
  wire [11:0]spi_interface_0_dataout;

  assign clk_0_1 = clk_0;
  assign dataout_0[11:0] = spi_interface_0_dataout;
  design_1_dds_compiler_0_0 dds_compiler_0
       (.aclk(clk_0_1),
        .m_axis_data_tdata(dds_compiler_0_m_axis_data_tdata));
  design_1_spi_interface_0_0 spi_interface_0
       (.clk(clk_0_1),
        .dataout(spi_interface_0_dataout),
        .dout(dds_compiler_0_m_axis_data_tdata[0]));
endmodule
