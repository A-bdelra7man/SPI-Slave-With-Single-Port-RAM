// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug  5 19:20:04 2025
// Host        : DESKTOP-EQBG3EE running 64-bit major release  (build 9200)
// Command     : write_verilog {E:/2025 Courses/Digital_Diploma/Digital_Design_Projects/Project_2/SPI_RAM_netlist.v}
// Design      : SPI_top_module
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (SR,
    tx_valid,
    D,
    CLK,
    rst_n_IBUF,
    rx_valid_reg,
    Q,
    WEA,
    rx_valid_reg_0,
    \tx_data_reg_reg[6] ,
    E,
    \rx_data_reg[8] );
  output [0:0]SR;
  output tx_valid;
  output [7:0]D;
  input CLK;
  input rst_n_IBUF;
  input rx_valid_reg;
  input [7:0]Q;
  input [0:0]WEA;
  input rx_valid_reg_0;
  input [6:0]\tx_data_reg_reg[6] ;
  input [0:0]E;
  input [0:0]\rx_data_reg[8] ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [7:0]read_addr;
  wire rst_n_IBUF;
  wire [0:0]\rx_data_reg[8] ;
  wire rx_valid_reg;
  wire rx_valid_reg_0;
  wire [7:0]tx_data;
  wire [6:0]\tx_data_reg_reg[6] ;
  wire tx_valid;
  wire [7:0]write_addr;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,write_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,read_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(rx_valid_reg),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[0]),
        .Q(read_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[1]),
        .Q(read_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[2]),
        .Q(read_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[3]),
        .Q(read_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[4]),
        .Q(read_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[5]),
        .Q(read_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[6] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[6]),
        .Q(read_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[7] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[7]),
        .Q(read_addr[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data_reg[0]_i_1 
       (.I0(tx_valid),
        .I1(tx_data[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[1]_i_1 
       (.I0(tx_data[1]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[2]_i_1 
       (.I0(tx_data[2]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[3]_i_1 
       (.I0(tx_data[3]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[4]_i_1 
       (.I0(tx_data[4]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[5]_i_1 
       (.I0(tx_data[5]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[6]_i_1 
       (.I0(tx_data[6]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_reg[7]_i_3 
       (.I0(tx_data[7]),
        .I1(tx_valid),
        .I2(\tx_data_reg_reg[6] [6]),
        .O(D[7]));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(write_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(write_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(write_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(write_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(write_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(write_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(write_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(write_addr[7]),
        .R(SR));
endmodule

module SPI_slave
   (MISO_OBUF,
    WEA,
    Q,
    E,
    \read_addr_reg[7] ,
    tx_valid_reg,
    mem_reg,
    \tx_data_reg_reg[7]_0 ,
    CLK,
    SR,
    SS_n_IBUF,
    D,
    rst_n_IBUF,
    tx_valid,
    mem_reg_0);
  output MISO_OBUF;
  output [0:0]WEA;
  output [7:0]Q;
  output [0:0]E;
  output [0:0]\read_addr_reg[7] ;
  output tx_valid_reg;
  output mem_reg;
  output [6:0]\tx_data_reg_reg[7]_0 ;
  input CLK;
  input [0:0]SR;
  input SS_n_IBUF;
  input [0:0]D;
  input rst_n_IBUF;
  input tx_valid;
  input [7:0]mem_reg_0;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire MISO6_out;
  wire MISO_OBUF;
  wire [7:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire \counter[4]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire mem_reg;
  wire [7:0]mem_reg_0;
  wire [2:0]ns;
  wire [4:0]p_0_in__0;
  wire p_1_in;
  wire read_addr_received_i_1_n_0;
  wire read_addr_received_reg_n_0;
  wire [0:0]\read_addr_reg[7] ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire rx_data1__9;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire [9:0]shift_reg;
  wire \shift_reg[9]_i_1_n_0 ;
  wire \shift_reg[9]_i_2_n_0 ;
  wire \tx_data_reg[7]_i_1_n_0 ;
  wire \tx_data_reg[7]_i_2_n_0 ;
  wire [6:0]\tx_data_reg_reg[7]_0 ;
  wire tx_valid;
  wire tx_valid_reg;

  LUT5 #(
    .INIT(32'h30333011)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(cs[1]),
        .I1(SS_n_IBUF),
        .I2(D),
        .I3(cs[2]),
        .I4(cs[0]),
        .O(ns[0]));
  LUT6 #(
    .INIT(64'h003300F500FF00F5)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[0]),
        .I1(D),
        .I2(cs[1]),
        .I3(SS_n_IBUF),
        .I4(cs[2]),
        .I5(read_addr_received_reg_n_0),
        .O(ns[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_gray_cs[2]_i_2 
       (.I0(SS_n_IBUF),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:111,WRITE:010,READ_ADD:011,READ_DATA:001,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:111,WRITE:010,READ_ADD:011,READ_DATA:001,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:111,WRITE:010,READ_ADD:011,READ_DATA:001,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h00000010)) 
    MISO_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(rx_data1__9),
        .O(MISO6_out));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO6_out),
        .D(p_1_in),
        .Q(MISO_OBUF),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h20202320)) 
    \counter[4]_i_1 
       (.I0(rx_data1__9),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(tx_valid),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[4]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(counter_reg__0[0]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[4]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[4]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(counter_reg__0[2]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[4]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[4]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(counter_reg__0[4]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .O(WEA));
  LUT3 #(
    .INIT(8'h40)) 
    \read_addr[7]_i_1 
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .O(\read_addr_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    read_addr_received_i_1
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(rx_data1__9),
        .I4(\shift_reg[9]_i_2_n_0 ),
        .I5(read_addr_received_reg_n_0),
        .O(read_addr_received_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_addr_received_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(read_addr_received_i_1_n_0),
        .Q(read_addr_received_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040004000440040)) 
    \rx_data[9]_i_1 
       (.I0(\shift_reg[9]_i_2_n_0 ),
        .I1(rx_data1__9),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(tx_valid),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[8]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(shift_reg[9]),
        .Q(rx_data[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2222020200200000)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(\tx_data_reg[7]_i_1_n_0 ),
        .I2(rx_valid_i_3_n_0),
        .I3(\shift_reg[9]_i_2_n_0 ),
        .I4(rx_data1__9),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    rx_valid_i_2
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(rx_valid_i_2_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    rx_valid_i_3
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(tx_valid),
        .O(rx_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h2232000000000000)) 
    \shift_reg[9]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(rx_data1__9),
        .I5(\shift_reg[9]_i_2_n_0 ),
        .O(\shift_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \shift_reg[9]_i_2 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[4]),
        .O(\shift_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(D),
        .Q(shift_reg[0]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[0]),
        .Q(shift_reg[1]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[1]),
        .Q(shift_reg[2]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[2]),
        .Q(shift_reg[3]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[3]),
        .Q(shift_reg[4]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[4]),
        .Q(shift_reg[5]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[5]),
        .Q(shift_reg[6]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[6]),
        .Q(shift_reg[7]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[7]),
        .Q(shift_reg[8]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(CLK),
        .CE(\shift_reg[9]_i_1_n_0 ),
        .D(shift_reg[8]),
        .Q(shift_reg[9]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h81FF)) 
    \tx_data_reg[7]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(rst_n_IBUF),
        .O(\tx_data_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000B0)) 
    \tx_data_reg[7]_i_2 
       (.I0(tx_valid),
        .I1(rx_data1__9),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(\tx_data_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h05151515)) 
    \tx_data_reg[7]_i_4 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .O(rx_data1__9));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[0] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[0]),
        .Q(\tx_data_reg_reg[7]_0 [0]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[1]),
        .Q(\tx_data_reg_reg[7]_0 [1]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[2] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[2]),
        .Q(\tx_data_reg_reg[7]_0 [2]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[3] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[3]),
        .Q(\tx_data_reg_reg[7]_0 [3]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[4] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[4]),
        .Q(\tx_data_reg_reg[7]_0 [4]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[5] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[5]),
        .Q(\tx_data_reg_reg[7]_0 [5]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[6] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[6]),
        .Q(\tx_data_reg_reg[7]_0 [6]),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[7] 
       (.C(CLK),
        .CE(\tx_data_reg[7]_i_2_n_0 ),
        .D(mem_reg_0[7]),
        .Q(p_1_in),
        .R(\tx_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    tx_valid_i_1
       (.I0(rx_valid),
        .I1(rst_n_IBUF),
        .I2(rx_data[9]),
        .I3(rx_data[8]),
        .O(tx_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \write_addr[7]_i_1 
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .O(E));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_top_module
   (clk,
    rst_n,
    SS_n,
    MOSI,
    MISO);
  input clk;
  input rst_n;
  input SS_n;
  input MOSI;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM_inst_n_0;
  wire SPI_slave_inst_n_10;
  wire SPI_slave_inst_n_11;
  wire SPI_slave_inst_n_12;
  wire SPI_slave_inst_n_13;
  wire SPI_slave_inst_n_14;
  wire SPI_slave_inst_n_15;
  wire SPI_slave_inst_n_16;
  wire SPI_slave_inst_n_17;
  wire SPI_slave_inst_n_18;
  wire SPI_slave_inst_n_19;
  wire SPI_slave_inst_n_20;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire [7:0]p_0_in;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM RAM_inst
       (.CLK(clk_IBUF_BUFG),
        .D(p_0_in),
        .E(SPI_slave_inst_n_10),
        .Q(rx_data),
        .SR(RAM_inst_n_0),
        .WEA(mem),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SPI_slave_inst_n_11),
        .rx_valid_reg(SPI_slave_inst_n_13),
        .rx_valid_reg_0(SPI_slave_inst_n_12),
        .\tx_data_reg_reg[6] ({SPI_slave_inst_n_14,SPI_slave_inst_n_15,SPI_slave_inst_n_16,SPI_slave_inst_n_17,SPI_slave_inst_n_18,SPI_slave_inst_n_19,SPI_slave_inst_n_20}),
        .tx_valid(tx_valid));
  SPI_slave SPI_slave_inst
       (.CLK(clk_IBUF_BUFG),
        .D(MOSI_IBUF),
        .E(SPI_slave_inst_n_10),
        .MISO_OBUF(MISO_OBUF),
        .Q(rx_data),
        .SR(RAM_inst_n_0),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .mem_reg(SPI_slave_inst_n_13),
        .mem_reg_0(p_0_in),
        .\read_addr_reg[7] (SPI_slave_inst_n_11),
        .rst_n_IBUF(rst_n_IBUF),
        .\tx_data_reg_reg[7]_0 ({SPI_slave_inst_n_14,SPI_slave_inst_n_15,SPI_slave_inst_n_16,SPI_slave_inst_n_17,SPI_slave_inst_n_18,SPI_slave_inst_n_19,SPI_slave_inst_n_20}),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI_slave_inst_n_12));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
