module tt_um_tqv_peripheral_harness (clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input clk;
 input ena;
 input rst_n;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire \i_spi_reg.addr[0] ;
 wire \i_spi_reg.addr[1] ;
 wire \i_spi_reg.addr[2] ;
 wire \i_spi_reg.addr[3] ;
 wire \i_spi_reg.buffer_counter[0] ;
 wire \i_spi_reg.buffer_counter[1] ;
 wire \i_spi_reg.buffer_counter[2] ;
 wire \i_spi_reg.buffer_counter[3] ;
 wire \i_spi_reg.dv ;
 wire \i_spi_reg.falling_edge_detector_sof.data ;
 wire \i_spi_reg.falling_edge_detector_sof.data_dly ;
 wire \i_spi_reg.falling_edge_detector_sof.rstb ;
 wire \i_spi_reg.falling_edge_detector_spi_clk.data ;
 wire \i_spi_reg.falling_edge_detector_spi_clk.data_dly ;
 wire \i_spi_reg.reg_data_o[0] ;
 wire \i_spi_reg.reg_data_o[1] ;
 wire \i_spi_reg.reg_data_o[2] ;
 wire \i_spi_reg.reg_data_o[3] ;
 wire \i_spi_reg.reg_data_o[4] ;
 wire \i_spi_reg.reg_data_o[5] ;
 wire \i_spi_reg.reg_data_o[6] ;
 wire \i_spi_reg.reg_data_o[7] ;
 wire \i_spi_reg.reg_rw ;
 wire \i_spi_reg.spi_mosi ;
 wire \i_spi_reg.state[0] ;
 wire \i_spi_reg.state[1] ;
 wire \i_spi_reg.state[2] ;
 wire \synchronizer_spi_clk_inst.data_sync[1] ;
 wire \synchronizer_spi_cs_n_inst.data_sync[1] ;
 wire \synchronizer_spi_mosi_inst.data_sync[1] ;
 wire \synchronizer_ui_in_inst.data_out[0] ;
 wire \synchronizer_ui_in_inst.data_out[1] ;
 wire \synchronizer_ui_in_inst.data_out[2] ;
 wire \synchronizer_ui_in_inst.data_out[3] ;
 wire \synchronizer_ui_in_inst.data_out[4] ;
 wire \synchronizer_ui_in_inst.data_out[5] ;
 wire \synchronizer_ui_in_inst.data_out[6] ;
 wire \synchronizer_ui_in_inst.data_out[7] ;
 wire \synchronizer_ui_in_inst.data_sync[1][0] ;
 wire \synchronizer_ui_in_inst.data_sync[1][1] ;
 wire \synchronizer_ui_in_inst.data_sync[1][2] ;
 wire \synchronizer_ui_in_inst.data_sync[1][3] ;
 wire \synchronizer_ui_in_inst.data_sync[1][4] ;
 wire \synchronizer_ui_in_inst.data_sync[1][5] ;
 wire \synchronizer_ui_in_inst.data_sync[1][6] ;
 wire \synchronizer_ui_in_inst.data_sync[1][7] ;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire \user_peripheral.example_data[0] ;
 wire \user_peripheral.example_data[1] ;
 wire \user_peripheral.example_data[2] ;
 wire \user_peripheral.example_data[3] ;
 wire \user_peripheral.example_data[4] ;
 wire \user_peripheral.example_data[5] ;
 wire \user_peripheral.example_data[6] ;
 wire \user_peripheral.example_data[7] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;

 sky130_fd_sc_hd__nor2_2 _134_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.state[1] ),
    .Y(_122_));
 sky130_fd_sc_hd__and3_1 _135_ (.A(\i_spi_reg.reg_data_o[7] ),
    .B(\i_spi_reg.state[2] ),
    .C(_122_),
    .X(_123_));
 sky130_fd_sc_hd__clkbuf_1 _136_ (.A(_123_),
    .X(net13));
 sky130_fd_sc_hd__or4b_2 _137_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D_N(\i_spi_reg.buffer_counter[3] ),
    .X(_124_));
 sky130_fd_sc_hd__inv_2 _138_ (.A(\i_spi_reg.state[2] ),
    .Y(_125_));
 sky130_fd_sc_hd__and2_1 _139_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.state[1] ),
    .X(_126_));
 sky130_fd_sc_hd__and4b_1 _140_ (.A_N(_124_),
    .B(_125_),
    .C(\i_spi_reg.reg_rw ),
    .D(_126_),
    .X(_127_));
 sky130_fd_sc_hd__clkbuf_1 _141_ (.A(_127_),
    .X(_000_));
 sky130_fd_sc_hd__nand2_1 _142_ (.A(\user_peripheral.example_data[0] ),
    .B(\synchronizer_ui_in_inst.data_out[0] ),
    .Y(_128_));
 sky130_fd_sc_hd__or2_1 _143_ (.A(\user_peripheral.example_data[0] ),
    .B(\synchronizer_ui_in_inst.data_out[0] ),
    .X(_129_));
 sky130_fd_sc_hd__and2_1 _144_ (.A(_128_),
    .B(_129_),
    .X(_130_));
 sky130_fd_sc_hd__clkbuf_1 _145_ (.A(_130_),
    .X(net14));
 sky130_fd_sc_hd__xor2_1 _146_ (.A(\user_peripheral.example_data[1] ),
    .B(\synchronizer_ui_in_inst.data_out[1] ),
    .X(_131_));
 sky130_fd_sc_hd__xnor2_1 _147_ (.A(_128_),
    .B(_131_),
    .Y(net15));
 sky130_fd_sc_hd__and2_1 _148_ (.A(\user_peripheral.example_data[1] ),
    .B(\synchronizer_ui_in_inst.data_out[1] ),
    .X(_132_));
 sky130_fd_sc_hd__a31o_1 _149_ (.A1(\user_peripheral.example_data[0] ),
    .A2(\synchronizer_ui_in_inst.data_out[0] ),
    .A3(_131_),
    .B1(_132_),
    .X(_133_));
 sky130_fd_sc_hd__nand2_1 _150_ (.A(\user_peripheral.example_data[2] ),
    .B(\synchronizer_ui_in_inst.data_out[2] ),
    .Y(_030_));
 sky130_fd_sc_hd__or2_1 _151_ (.A(\user_peripheral.example_data[2] ),
    .B(\synchronizer_ui_in_inst.data_out[2] ),
    .X(_031_));
 sky130_fd_sc_hd__and2_1 _152_ (.A(_030_),
    .B(_031_),
    .X(_032_));
 sky130_fd_sc_hd__xor2_1 _153_ (.A(_133_),
    .B(_032_),
    .X(net16));
 sky130_fd_sc_hd__nor2_1 _154_ (.A(\user_peripheral.example_data[3] ),
    .B(\synchronizer_ui_in_inst.data_out[3] ),
    .Y(_033_));
 sky130_fd_sc_hd__and2_1 _155_ (.A(\user_peripheral.example_data[3] ),
    .B(\synchronizer_ui_in_inst.data_out[3] ),
    .X(_034_));
 sky130_fd_sc_hd__nor2_1 _156_ (.A(_033_),
    .B(_034_),
    .Y(_035_));
 sky130_fd_sc_hd__a21bo_1 _157_ (.A1(_133_),
    .A2(_032_),
    .B1_N(_030_),
    .X(_036_));
 sky130_fd_sc_hd__xor2_1 _158_ (.A(_035_),
    .B(_036_),
    .X(net17));
 sky130_fd_sc_hd__and2_1 _159_ (.A(\user_peripheral.example_data[4] ),
    .B(\synchronizer_ui_in_inst.data_out[4] ),
    .X(_037_));
 sky130_fd_sc_hd__nor2_1 _160_ (.A(\user_peripheral.example_data[4] ),
    .B(\synchronizer_ui_in_inst.data_out[4] ),
    .Y(_038_));
 sky130_fd_sc_hd__nor2_1 _161_ (.A(_037_),
    .B(_038_),
    .Y(_039_));
 sky130_fd_sc_hd__or2_1 _162_ (.A(\user_peripheral.example_data[3] ),
    .B(\synchronizer_ui_in_inst.data_out[3] ),
    .X(_040_));
 sky130_fd_sc_hd__a31o_1 _163_ (.A1(\user_peripheral.example_data[2] ),
    .A2(\synchronizer_ui_in_inst.data_out[2] ),
    .A3(_040_),
    .B1(_034_),
    .X(_041_));
 sky130_fd_sc_hd__a31oi_2 _164_ (.A1(_133_),
    .A2(_032_),
    .A3(_035_),
    .B1(_041_),
    .Y(_042_));
 sky130_fd_sc_hd__xnor2_1 _165_ (.A(_039_),
    .B(_042_),
    .Y(net18));
 sky130_fd_sc_hd__nor2_1 _166_ (.A(\user_peripheral.example_data[5] ),
    .B(\synchronizer_ui_in_inst.data_out[5] ),
    .Y(_043_));
 sky130_fd_sc_hd__nand2_1 _167_ (.A(\user_peripheral.example_data[5] ),
    .B(\synchronizer_ui_in_inst.data_out[5] ),
    .Y(_044_));
 sky130_fd_sc_hd__and2b_1 _168_ (.A_N(_043_),
    .B(_044_),
    .X(_045_));
 sky130_fd_sc_hd__nand2_1 _169_ (.A(\user_peripheral.example_data[4] ),
    .B(\synchronizer_ui_in_inst.data_out[4] ),
    .Y(_046_));
 sky130_fd_sc_hd__o21a_1 _170_ (.A1(_038_),
    .A2(_042_),
    .B1(_046_),
    .X(_047_));
 sky130_fd_sc_hd__xnor2_1 _171_ (.A(_045_),
    .B(_047_),
    .Y(net19));
 sky130_fd_sc_hd__nand2_1 _172_ (.A(\user_peripheral.example_data[6] ),
    .B(\synchronizer_ui_in_inst.data_out[6] ),
    .Y(_048_));
 sky130_fd_sc_hd__or2_1 _173_ (.A(\user_peripheral.example_data[6] ),
    .B(\synchronizer_ui_in_inst.data_out[6] ),
    .X(_049_));
 sky130_fd_sc_hd__nand2_1 _174_ (.A(_048_),
    .B(_049_),
    .Y(_050_));
 sky130_fd_sc_hd__o211a_1 _175_ (.A1(_038_),
    .A2(_042_),
    .B1(_044_),
    .C1(_046_),
    .X(_051_));
 sky130_fd_sc_hd__nor2_1 _176_ (.A(_043_),
    .B(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__xnor2_2 _177_ (.A(_050_),
    .B(_052_),
    .Y(net20));
 sky130_fd_sc_hd__o31a_1 _178_ (.A1(_043_),
    .A2(_050_),
    .A3(_051_),
    .B1(_048_),
    .X(_053_));
 sky130_fd_sc_hd__xor2_1 _179_ (.A(\user_peripheral.example_data[7] ),
    .B(\synchronizer_ui_in_inst.data_out[7] ),
    .X(_054_));
 sky130_fd_sc_hd__xnor2_1 _180_ (.A(_053_),
    .B(_054_),
    .Y(net21));
 sky130_fd_sc_hd__nor4_2 _181_ (.A(\i_spi_reg.addr[1] ),
    .B(\i_spi_reg.addr[0] ),
    .C(\i_spi_reg.addr[3] ),
    .D(\i_spi_reg.addr[2] ),
    .Y(_055_));
 sky130_fd_sc_hd__nand2_2 _182_ (.A(\i_spi_reg.dv ),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__and2_1 _183_ (.A(\i_spi_reg.dv ),
    .B(_055_),
    .X(_057_));
 sky130_fd_sc_hd__or2_1 _184_ (.A(\user_peripheral.example_data[0] ),
    .B(_057_),
    .X(_058_));
 sky130_fd_sc_hd__o211a_1 _185_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_056_),
    .B1(_058_),
    .C1(net27),
    .X(_002_));
 sky130_fd_sc_hd__or2_1 _186_ (.A(\user_peripheral.example_data[1] ),
    .B(_057_),
    .X(_059_));
 sky130_fd_sc_hd__o211a_1 _187_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_056_),
    .B1(_059_),
    .C1(net27),
    .X(_003_));
 sky130_fd_sc_hd__or2_1 _188_ (.A(\user_peripheral.example_data[2] ),
    .B(_057_),
    .X(_060_));
 sky130_fd_sc_hd__o211a_1 _189_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_056_),
    .B1(_060_),
    .C1(net27),
    .X(_004_));
 sky130_fd_sc_hd__or2_1 _190_ (.A(\user_peripheral.example_data[3] ),
    .B(_057_),
    .X(_061_));
 sky130_fd_sc_hd__o211a_1 _191_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_056_),
    .B1(_061_),
    .C1(net27),
    .X(_005_));
 sky130_fd_sc_hd__or2_1 _192_ (.A(\user_peripheral.example_data[4] ),
    .B(_057_),
    .X(_062_));
 sky130_fd_sc_hd__o211a_1 _193_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_056_),
    .B1(_062_),
    .C1(net26),
    .X(_006_));
 sky130_fd_sc_hd__or2_1 _194_ (.A(\user_peripheral.example_data[5] ),
    .B(_057_),
    .X(_063_));
 sky130_fd_sc_hd__o211a_1 _195_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_056_),
    .B1(_063_),
    .C1(net26),
    .X(_007_));
 sky130_fd_sc_hd__or2_1 _196_ (.A(\user_peripheral.example_data[6] ),
    .B(_057_),
    .X(_064_));
 sky130_fd_sc_hd__o211a_1 _197_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_056_),
    .B1(_064_),
    .C1(net26),
    .X(_008_));
 sky130_fd_sc_hd__or2_1 _198_ (.A(\user_peripheral.example_data[7] ),
    .B(_057_),
    .X(_065_));
 sky130_fd_sc_hd__o211a_1 _199_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_056_),
    .B1(_065_),
    .C1(net26),
    .X(_009_));
 sky130_fd_sc_hd__inv_2 _200_ (.A(clk),
    .Y(_001_));
 sky130_fd_sc_hd__inv_2 _201_ (.A(\i_spi_reg.spi_mosi ),
    .Y(_066_));
 sky130_fd_sc_hd__or4_2 _202_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(\i_spi_reg.buffer_counter[3] ),
    .X(_067_));
 sky130_fd_sc_hd__nor4_2 _203_ (.A(_125_),
    .B(\i_spi_reg.state[0] ),
    .C(\i_spi_reg.state[1] ),
    .D(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__nor4b_2 _204_ (.A(\i_spi_reg.addr[1] ),
    .B(\i_spi_reg.addr[3] ),
    .C(\i_spi_reg.addr[2] ),
    .D_N(\i_spi_reg.addr[0] ),
    .Y(_069_));
 sky130_fd_sc_hd__a22o_1 _205_ (.A1(\user_peripheral.example_data[0] ),
    .A2(net29),
    .B1(net28),
    .B2(\synchronizer_ui_in_inst.data_out[0] ),
    .X(_070_));
 sky130_fd_sc_hd__a2bb2o_1 _206_ (.A1_N(_066_),
    .A2_N(_122_),
    .B1(net23),
    .B2(_070_),
    .X(_071_));
 sky130_fd_sc_hd__or2b_1 _207_ (.A(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .B_N(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_072_));
 sky130_fd_sc_hd__or2b_1 _208_ (.A(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .B_N(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .X(_073_));
 sky130_fd_sc_hd__mux2_1 _209_ (.A0(_072_),
    .A1(_073_),
    .S(_122_),
    .X(_074_));
 sky130_fd_sc_hd__a21bo_4 _210_ (.A1(\i_spi_reg.state[2] ),
    .A2(_067_),
    .B1_N(_122_),
    .X(_075_));
 sky130_fd_sc_hd__o21ai_4 _211_ (.A1(\i_spi_reg.falling_edge_detector_sof.data ),
    .A2(_074_),
    .B1(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__mux2_1 _212_ (.A0(\i_spi_reg.reg_data_o[0] ),
    .A1(_071_),
    .S(_076_),
    .X(_077_));
 sky130_fd_sc_hd__clkbuf_1 _213_ (.A(_077_),
    .X(_010_));
 sky130_fd_sc_hd__a22o_1 _214_ (.A1(\user_peripheral.example_data[1] ),
    .A2(net29),
    .B1(_069_),
    .B2(\synchronizer_ui_in_inst.data_out[1] ),
    .X(_078_));
 sky130_fd_sc_hd__a22o_1 _215_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_075_),
    .B1(net23),
    .B2(_078_),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _216_ (.A0(\i_spi_reg.reg_data_o[1] ),
    .A1(_079_),
    .S(_076_),
    .X(_080_));
 sky130_fd_sc_hd__clkbuf_1 _217_ (.A(_080_),
    .X(_011_));
 sky130_fd_sc_hd__a22o_1 _218_ (.A1(\user_peripheral.example_data[2] ),
    .A2(net29),
    .B1(net28),
    .B2(\synchronizer_ui_in_inst.data_out[2] ),
    .X(_081_));
 sky130_fd_sc_hd__a22o_1 _219_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_075_),
    .B1(net23),
    .B2(_081_),
    .X(_082_));
 sky130_fd_sc_hd__mux2_1 _220_ (.A0(\i_spi_reg.reg_data_o[2] ),
    .A1(_082_),
    .S(_076_),
    .X(_083_));
 sky130_fd_sc_hd__clkbuf_1 _221_ (.A(_083_),
    .X(_012_));
 sky130_fd_sc_hd__a22o_1 _222_ (.A1(\user_peripheral.example_data[3] ),
    .A2(net29),
    .B1(net28),
    .B2(\synchronizer_ui_in_inst.data_out[3] ),
    .X(_084_));
 sky130_fd_sc_hd__a22o_1 _223_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_075_),
    .B1(net23),
    .B2(_084_),
    .X(_085_));
 sky130_fd_sc_hd__mux2_1 _224_ (.A0(\i_spi_reg.reg_data_o[3] ),
    .A1(_085_),
    .S(_076_),
    .X(_086_));
 sky130_fd_sc_hd__clkbuf_1 _225_ (.A(_086_),
    .X(_013_));
 sky130_fd_sc_hd__a22o_1 _226_ (.A1(\user_peripheral.example_data[4] ),
    .A2(net29),
    .B1(net28),
    .B2(\synchronizer_ui_in_inst.data_out[4] ),
    .X(_087_));
 sky130_fd_sc_hd__a22o_1 _227_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_075_),
    .B1(net23),
    .B2(_087_),
    .X(_088_));
 sky130_fd_sc_hd__mux2_1 _228_ (.A0(\i_spi_reg.reg_data_o[4] ),
    .A1(_088_),
    .S(_076_),
    .X(_089_));
 sky130_fd_sc_hd__clkbuf_1 _229_ (.A(_089_),
    .X(_014_));
 sky130_fd_sc_hd__a22o_1 _230_ (.A1(\user_peripheral.example_data[5] ),
    .A2(_055_),
    .B1(_069_),
    .B2(\synchronizer_ui_in_inst.data_out[5] ),
    .X(_090_));
 sky130_fd_sc_hd__a22o_1 _231_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_075_),
    .B1(net23),
    .B2(_090_),
    .X(_091_));
 sky130_fd_sc_hd__mux2_1 _232_ (.A0(\i_spi_reg.reg_data_o[5] ),
    .A1(_091_),
    .S(_076_),
    .X(_092_));
 sky130_fd_sc_hd__clkbuf_1 _233_ (.A(_092_),
    .X(_015_));
 sky130_fd_sc_hd__a22o_1 _234_ (.A1(\user_peripheral.example_data[6] ),
    .A2(_055_),
    .B1(_069_),
    .B2(\synchronizer_ui_in_inst.data_out[6] ),
    .X(_093_));
 sky130_fd_sc_hd__a22o_1 _235_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_075_),
    .B1(_068_),
    .B2(_093_),
    .X(_094_));
 sky130_fd_sc_hd__mux2_1 _236_ (.A0(\i_spi_reg.reg_data_o[6] ),
    .A1(_094_),
    .S(_076_),
    .X(_095_));
 sky130_fd_sc_hd__clkbuf_1 _237_ (.A(_095_),
    .X(_016_));
 sky130_fd_sc_hd__a22o_1 _238_ (.A1(\user_peripheral.example_data[7] ),
    .A2(net29),
    .B1(net28),
    .B2(\synchronizer_ui_in_inst.data_out[7] ),
    .X(_096_));
 sky130_fd_sc_hd__a22o_1 _239_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_075_),
    .B1(_068_),
    .B2(_096_),
    .X(_097_));
 sky130_fd_sc_hd__mux2_1 _240_ (.A0(\i_spi_reg.reg_data_o[7] ),
    .A1(_097_),
    .S(_076_),
    .X(_098_));
 sky130_fd_sc_hd__clkbuf_1 _241_ (.A(_098_),
    .X(_017_));
 sky130_fd_sc_hd__nor4b_1 _242_ (.A(\i_spi_reg.state[2] ),
    .B(\i_spi_reg.state[1] ),
    .C(_124_),
    .D_N(\i_spi_reg.state[0] ),
    .Y(_099_));
 sky130_fd_sc_hd__mux2_1 _243_ (.A0(\i_spi_reg.reg_rw ),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_099_),
    .X(_100_));
 sky130_fd_sc_hd__clkbuf_1 _244_ (.A(_100_),
    .X(_018_));
 sky130_fd_sc_hd__nor2_1 _245_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(_072_),
    .Y(_101_));
 sky130_fd_sc_hd__a21oi_1 _246_ (.A1(_124_),
    .A2(_101_),
    .B1(\i_spi_reg.buffer_counter[0] ),
    .Y(_102_));
 sky130_fd_sc_hd__a21oi_1 _247_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_101_),
    .B1(_102_),
    .Y(_019_));
 sky130_fd_sc_hd__and3_1 _248_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(_101_),
    .X(_103_));
 sky130_fd_sc_hd__a21oi_1 _249_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_101_),
    .B1(\i_spi_reg.buffer_counter[1] ),
    .Y(_104_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(_103_),
    .B(_104_),
    .Y(_020_));
 sky130_fd_sc_hd__nand4_1 _251_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(_101_),
    .Y(_105_));
 sky130_fd_sc_hd__o21a_1 _252_ (.A1(\i_spi_reg.buffer_counter[2] ),
    .A2(_103_),
    .B1(_105_),
    .X(_021_));
 sky130_fd_sc_hd__and2_1 _253_ (.A(\i_spi_reg.buffer_counter[3] ),
    .B(_105_),
    .X(_106_));
 sky130_fd_sc_hd__nor2_1 _254_ (.A(\i_spi_reg.buffer_counter[3] ),
    .B(_105_),
    .Y(_107_));
 sky130_fd_sc_hd__o21a_1 _255_ (.A1(_106_),
    .A2(_107_),
    .B1(_124_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _256_ (.A0(\i_spi_reg.addr[0] ),
    .A1(\i_spi_reg.reg_data_o[0] ),
    .S(net22),
    .X(_108_));
 sky130_fd_sc_hd__clkbuf_1 _257_ (.A(_108_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _258_ (.A0(\i_spi_reg.addr[1] ),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(net22),
    .X(_109_));
 sky130_fd_sc_hd__clkbuf_1 _259_ (.A(_109_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _260_ (.A0(\i_spi_reg.addr[2] ),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(net22),
    .X(_110_));
 sky130_fd_sc_hd__clkbuf_1 _261_ (.A(_110_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _262_ (.A0(\i_spi_reg.addr[3] ),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(net22),
    .X(_111_));
 sky130_fd_sc_hd__clkbuf_1 _263_ (.A(_111_),
    .X(_026_));
 sky130_fd_sc_hd__inv_2 _264_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .Y(_112_));
 sky130_fd_sc_hd__o21a_1 _265_ (.A1(_112_),
    .A2(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .B1(_124_),
    .X(_113_));
 sky130_fd_sc_hd__and4bb_1 _266_ (.A_N(\i_spi_reg.state[2] ),
    .B_N(\i_spi_reg.state[0] ),
    .C(\i_spi_reg.state[1] ),
    .D(\i_spi_reg.reg_rw ),
    .X(_114_));
 sky130_fd_sc_hd__a211o_1 _267_ (.A1(\i_spi_reg.state[0] ),
    .A2(_113_),
    .B1(_114_),
    .C1(_122_),
    .X(_115_));
 sky130_fd_sc_hd__a31o_1 _268_ (.A1(_125_),
    .A2(_112_),
    .A3(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .B1(_075_),
    .X(_116_));
 sky130_fd_sc_hd__and3_1 _269_ (.A(_125_),
    .B(_115_),
    .C(_116_),
    .X(_117_));
 sky130_fd_sc_hd__clkbuf_1 _270_ (.A(_117_),
    .X(_027_));
 sky130_fd_sc_hd__a31o_1 _271_ (.A1(_125_),
    .A2(_126_),
    .A3(_113_),
    .B1(_114_),
    .X(_118_));
 sky130_fd_sc_hd__or2_1 _272_ (.A(_099_),
    .B(_118_),
    .X(_119_));
 sky130_fd_sc_hd__clkbuf_1 _273_ (.A(_119_),
    .X(_028_));
 sky130_fd_sc_hd__nor4b_1 _274_ (.A(\i_spi_reg.state[2] ),
    .B(\i_spi_reg.state[0] ),
    .C(\i_spi_reg.reg_rw ),
    .D_N(\i_spi_reg.state[1] ),
    .Y(_120_));
 sky130_fd_sc_hd__a31o_1 _275_ (.A1(\i_spi_reg.state[2] ),
    .A2(_122_),
    .A3(_113_),
    .B1(_120_),
    .X(_121_));
 sky130_fd_sc_hd__a21o_1 _276_ (.A1(_116_),
    .A2(_121_),
    .B1(_068_),
    .X(_029_));
 sky130_fd_sc_hd__dfxtp_1 _277_ (.CLK(clk),
    .D(net12),
    .Q(\synchronizer_spi_mosi_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _278_ (.CLK(clk),
    .D(\synchronizer_spi_mosi_inst.data_sync[1] ),
    .Q(\i_spi_reg.spi_mosi ));
 sky130_fd_sc_hd__dfxtp_1 _279_ (.CLK(clk),
    .D(net11),
    .Q(\synchronizer_spi_clk_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _280_ (.CLK(clk),
    .D(\synchronizer_spi_clk_inst.data_sync[1] ),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data ));
 sky130_fd_sc_hd__dfxtp_1 _281_ (.CLK(clk),
    .D(net10),
    .Q(\synchronizer_spi_cs_n_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _282_ (.CLK(clk),
    .D(\synchronizer_spi_cs_n_inst.data_sync[1] ),
    .Q(\i_spi_reg.falling_edge_detector_sof.data ));
 sky130_fd_sc_hd__dfxtp_1 _283_ (.CLK(clk),
    .D(_002_),
    .Q(\user_peripheral.example_data[0] ));
 sky130_fd_sc_hd__dfxtp_1 _284_ (.CLK(clk),
    .D(_003_),
    .Q(\user_peripheral.example_data[1] ));
 sky130_fd_sc_hd__dfxtp_1 _285_ (.CLK(clk),
    .D(_004_),
    .Q(\user_peripheral.example_data[2] ));
 sky130_fd_sc_hd__dfxtp_1 _286_ (.CLK(clk),
    .D(_005_),
    .Q(\user_peripheral.example_data[3] ));
 sky130_fd_sc_hd__dfxtp_1 _287_ (.CLK(clk),
    .D(_006_),
    .Q(\user_peripheral.example_data[4] ));
 sky130_fd_sc_hd__dfxtp_1 _288_ (.CLK(clk),
    .D(_007_),
    .Q(\user_peripheral.example_data[5] ));
 sky130_fd_sc_hd__dfxtp_1 _289_ (.CLK(clk),
    .D(_008_),
    .Q(\user_peripheral.example_data[6] ));
 sky130_fd_sc_hd__dfxtp_1 _290_ (.CLK(clk),
    .D(_009_),
    .Q(\user_peripheral.example_data[7] ));
 sky130_fd_sc_hd__dfxtp_1 _291_ (.CLK(clk),
    .D(net2),
    .Q(\synchronizer_ui_in_inst.data_sync[1][0] ));
 sky130_fd_sc_hd__dfxtp_1 _292_ (.CLK(clk),
    .D(net3),
    .Q(\synchronizer_ui_in_inst.data_sync[1][1] ));
 sky130_fd_sc_hd__dfxtp_1 _293_ (.CLK(clk),
    .D(net4),
    .Q(\synchronizer_ui_in_inst.data_sync[1][2] ));
 sky130_fd_sc_hd__dfxtp_1 _294_ (.CLK(clk),
    .D(net5),
    .Q(\synchronizer_ui_in_inst.data_sync[1][3] ));
 sky130_fd_sc_hd__dfxtp_1 _295_ (.CLK(clk),
    .D(net6),
    .Q(\synchronizer_ui_in_inst.data_sync[1][4] ));
 sky130_fd_sc_hd__dfxtp_1 _296_ (.CLK(clk),
    .D(net7),
    .Q(\synchronizer_ui_in_inst.data_sync[1][5] ));
 sky130_fd_sc_hd__dfxtp_1 _297_ (.CLK(clk),
    .D(net8),
    .Q(\synchronizer_ui_in_inst.data_sync[1][6] ));
 sky130_fd_sc_hd__dfxtp_1 _298_ (.CLK(clk),
    .D(net9),
    .Q(\synchronizer_ui_in_inst.data_sync[1][7] ));
 sky130_fd_sc_hd__dfxtp_1 _299_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][0] ),
    .Q(\synchronizer_ui_in_inst.data_out[0] ));
 sky130_fd_sc_hd__dfxtp_1 _300_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][1] ),
    .Q(\synchronizer_ui_in_inst.data_out[1] ));
 sky130_fd_sc_hd__dfxtp_1 _301_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][2] ),
    .Q(\synchronizer_ui_in_inst.data_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _302_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][3] ),
    .Q(\synchronizer_ui_in_inst.data_out[3] ));
 sky130_fd_sc_hd__dfxtp_1 _303_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][4] ),
    .Q(\synchronizer_ui_in_inst.data_out[4] ));
 sky130_fd_sc_hd__dfxtp_1 _304_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][5] ),
    .Q(\synchronizer_ui_in_inst.data_out[5] ));
 sky130_fd_sc_hd__dfxtp_1 _305_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][6] ),
    .Q(\synchronizer_ui_in_inst.data_out[6] ));
 sky130_fd_sc_hd__dfxtp_1 _306_ (.CLK(clk),
    .D(\synchronizer_ui_in_inst.data_sync[1][7] ),
    .Q(\synchronizer_ui_in_inst.data_out[7] ));
 sky130_fd_sc_hd__dfxtp_1 _307_ (.CLK(_001_),
    .D(net1),
    .Q(\i_spi_reg.falling_edge_detector_sof.rstb ));
 sky130_fd_sc_hd__dfrtp_1 _308_ (.CLK(clk),
    .D(_010_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[0] ));
 sky130_fd_sc_hd__dfrtp_1 _309_ (.CLK(clk),
    .D(_011_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[1] ));
 sky130_fd_sc_hd__dfrtp_1 _310_ (.CLK(clk),
    .D(_012_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[2] ));
 sky130_fd_sc_hd__dfrtp_1 _311_ (.CLK(clk),
    .D(_013_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[3] ));
 sky130_fd_sc_hd__dfrtp_1 _312_ (.CLK(clk),
    .D(_014_),
    .RESET_B(net27),
    .Q(\i_spi_reg.reg_data_o[4] ));
 sky130_fd_sc_hd__dfrtp_1 _313_ (.CLK(clk),
    .D(_015_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[5] ));
 sky130_fd_sc_hd__dfrtp_1 _314_ (.CLK(clk),
    .D(_016_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[6] ));
 sky130_fd_sc_hd__dfrtp_1 _315_ (.CLK(clk),
    .D(_017_),
    .RESET_B(net24),
    .Q(\i_spi_reg.reg_data_o[7] ));
 sky130_fd_sc_hd__dfrtp_1 _316_ (.CLK(clk),
    .D(_018_),
    .RESET_B(net24),
    .Q(\i_spi_reg.reg_rw ));
 sky130_fd_sc_hd__dfrtp_1 _317_ (.CLK(clk),
    .D(_019_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[0] ));
 sky130_fd_sc_hd__dfrtp_1 _318_ (.CLK(clk),
    .D(_020_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _319_ (.CLK(clk),
    .D(_021_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _320_ (.CLK(clk),
    .D(_022_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _321_ (.CLK(clk),
    .D(_023_),
    .RESET_B(net25),
    .Q(\i_spi_reg.addr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _322_ (.CLK(clk),
    .D(_024_),
    .RESET_B(net25),
    .Q(\i_spi_reg.addr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _323_ (.CLK(clk),
    .D(_025_),
    .RESET_B(net25),
    .Q(\i_spi_reg.addr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _324_ (.CLK(clk),
    .D(_026_),
    .RESET_B(net27),
    .Q(\i_spi_reg.addr[3] ));
 sky130_fd_sc_hd__dfrtp_1 _325_ (.CLK(clk),
    .D(_000_),
    .RESET_B(net24),
    .Q(\i_spi_reg.dv ));
 sky130_fd_sc_hd__dfrtp_1 _326_ (.CLK(clk),
    .D(\i_spi_reg.falling_edge_detector_sof.data ),
    .RESET_B(net24),
    .Q(\i_spi_reg.falling_edge_detector_sof.data_dly ));
 sky130_fd_sc_hd__dfrtp_1 _327_ (.CLK(clk),
    .D(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .RESET_B(net24),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ));
 sky130_fd_sc_hd__dfrtp_2 _328_ (.CLK(clk),
    .D(_027_),
    .RESET_B(net25),
    .Q(\i_spi_reg.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _329_ (.CLK(clk),
    .D(_028_),
    .RESET_B(net25),
    .Q(\i_spi_reg.state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _330_ (.CLK(clk),
    .D(_029_),
    .RESET_B(net24),
    .Q(\i_spi_reg.state[2] ));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_31 (.LO(net31));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_32 (.LO(net32));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_33 (.LO(net33));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_34 (.LO(net34));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_35 (.LO(net35));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_36 (.LO(net36));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_37 (.LO(net37));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_38 (.LO(net38));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_39 (.LO(net39));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_40 (.LO(net40));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_41 (.LO(net41));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_42 (.LO(net42));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_43 (.LO(net43));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_44 (.HI(net44));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_302 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(ui_in[0]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(ui_in[1]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(ui_in[2]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(ui_in[3]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(ui_in[4]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(ui_in[5]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(ui_in[6]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(ui_in[7]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(uio_in[4]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(uio_in[5]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(uio_in[6]),
    .X(net12));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(uio_out[3]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(uo_out[0]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(uo_out[1]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(uo_out[2]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(uo_out[3]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(uo_out[4]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(uo_out[5]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(uo_out[6]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(uo_out[7]));
 sky130_fd_sc_hd__clkbuf_2 max_cap22 (.A(_099_),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_2 max_cap23 (.A(_068_),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_4 fanout24 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_2 fanout25 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_4 fanout26 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_2 fanout27 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_2 max_cap28 (.A(_069_),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_2 wire29 (.A(_055_),
    .X(net29));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_30 (.LO(net30));
 assign uio_oe[0] = net30;
 assign uio_oe[1] = net31;
 assign uio_oe[2] = net32;
 assign uio_oe[3] = net44;
 assign uio_oe[4] = net33;
 assign uio_oe[5] = net34;
 assign uio_oe[6] = net35;
 assign uio_oe[7] = net36;
 assign uio_out[0] = net37;
 assign uio_out[1] = net38;
 assign uio_out[2] = net39;
 assign uio_out[4] = net40;
 assign uio_out[5] = net41;
 assign uio_out[6] = net42;
 assign uio_out[7] = net43;
endmodule
