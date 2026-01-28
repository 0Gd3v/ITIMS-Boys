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
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
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
 wire net31;
 wire net32;
 wire \user_peripheral.bit_count[0] ;
 wire \user_peripheral.bit_count[1] ;
 wire \user_peripheral.bit_count[2] ;
 wire \user_peripheral.bit_count[3] ;
 wire \user_peripheral.busy ;
 wire \user_peripheral.clk_divider[0] ;
 wire \user_peripheral.clk_divider[1] ;
 wire \user_peripheral.clk_divider[2] ;
 wire \user_peripheral.clk_divider[3] ;
 wire \user_peripheral.clk_divider[4] ;
 wire \user_peripheral.clk_divider[5] ;
 wire \user_peripheral.clk_divider[6] ;
 wire \user_peripheral.clk_divider[7] ;
 wire \user_peripheral.div_count[0] ;
 wire \user_peripheral.div_count[1] ;
 wire \user_peripheral.div_count[2] ;
 wire \user_peripheral.div_count[3] ;
 wire \user_peripheral.div_count[4] ;
 wire \user_peripheral.div_count[5] ;
 wire \user_peripheral.div_count[6] ;
 wire \user_peripheral.div_count[7] ;
 wire \user_peripheral.shift_reg[0] ;
 wire \user_peripheral.shift_reg[1] ;
 wire \user_peripheral.shift_reg[2] ;
 wire \user_peripheral.shift_reg[3] ;
 wire \user_peripheral.shift_reg[4] ;
 wire \user_peripheral.shift_reg[5] ;
 wire \user_peripheral.shift_reg[6] ;
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

 sky130_fd_sc_hd__clkbuf_2 _214_ (.A(\i_spi_reg.state[2] ),
    .X(_053_));
 sky130_fd_sc_hd__nor2_1 _215_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.state[1] ),
    .Y(_054_));
 sky130_fd_sc_hd__and3_1 _216_ (.A(\i_spi_reg.reg_data_o[7] ),
    .B(_053_),
    .C(_054_),
    .X(_055_));
 sky130_fd_sc_hd__clkbuf_1 _217_ (.A(_055_),
    .X(net5));
 sky130_fd_sc_hd__or4b_4 _218_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D_N(\i_spi_reg.buffer_counter[3] ),
    .X(_056_));
 sky130_fd_sc_hd__and4b_1 _219_ (.A_N(_053_),
    .B(\i_spi_reg.reg_rw ),
    .C(\i_spi_reg.state[0] ),
    .D(\i_spi_reg.state[1] ),
    .X(_057_));
 sky130_fd_sc_hd__and2b_1 _220_ (.A_N(_056_),
    .B(_057_),
    .X(_058_));
 sky130_fd_sc_hd__clkbuf_1 _221_ (.A(_058_),
    .X(_000_));
 sky130_fd_sc_hd__nor2_1 _222_ (.A(\i_spi_reg.addr[3] ),
    .B(\i_spi_reg.addr[2] ),
    .Y(_059_));
 sky130_fd_sc_hd__nor2_1 _223_ (.A(\i_spi_reg.addr[1] ),
    .B(\i_spi_reg.addr[0] ),
    .Y(_060_));
 sky130_fd_sc_hd__and4b_1 _224_ (.A_N(\user_peripheral.busy ),
    .B(\i_spi_reg.dv ),
    .C(_059_),
    .D(_060_),
    .X(_061_));
 sky130_fd_sc_hd__inv_2 _225_ (.A(\user_peripheral.clk_divider[4] ),
    .Y(_062_));
 sky130_fd_sc_hd__and2b_1 _226_ (.A_N(\user_peripheral.clk_divider[7] ),
    .B(\user_peripheral.div_count[7] ),
    .X(_063_));
 sky130_fd_sc_hd__a21oi_1 _227_ (.A1(\user_peripheral.div_count[4] ),
    .A2(_062_),
    .B1(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _228_ (.A(\user_peripheral.div_count[7] ),
    .Y(_065_));
 sky130_fd_sc_hd__inv_2 _229_ (.A(\user_peripheral.clk_divider[6] ),
    .Y(_066_));
 sky130_fd_sc_hd__o2bb2a_1 _230_ (.A1_N(_065_),
    .A2_N(\user_peripheral.clk_divider[7] ),
    .B1(_066_),
    .B2(\user_peripheral.div_count[6] ),
    .X(_067_));
 sky130_fd_sc_hd__inv_2 _231_ (.A(\user_peripheral.clk_divider[5] ),
    .Y(_068_));
 sky130_fd_sc_hd__o22a_1 _232_ (.A1(\user_peripheral.div_count[5] ),
    .A2(_068_),
    .B1(_062_),
    .B2(\user_peripheral.div_count[4] ),
    .X(_069_));
 sky130_fd_sc_hd__a22oi_1 _233_ (.A1(\user_peripheral.div_count[6] ),
    .A2(_066_),
    .B1(_068_),
    .B2(\user_peripheral.div_count[5] ),
    .Y(_070_));
 sky130_fd_sc_hd__and4_1 _234_ (.A(_064_),
    .B(_067_),
    .C(_069_),
    .D(_070_),
    .X(_071_));
 sky130_fd_sc_hd__or2b_1 _235_ (.A(\user_peripheral.div_count[3] ),
    .B_N(\user_peripheral.clk_divider[3] ),
    .X(_072_));
 sky130_fd_sc_hd__or2b_1 _236_ (.A(\user_peripheral.div_count[2] ),
    .B_N(\user_peripheral.clk_divider[2] ),
    .X(_073_));
 sky130_fd_sc_hd__nand2_1 _237_ (.A(_072_),
    .B(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__or2b_1 _238_ (.A(\user_peripheral.clk_divider[3] ),
    .B_N(\user_peripheral.div_count[3] ),
    .X(_075_));
 sky130_fd_sc_hd__or2b_1 _239_ (.A(\user_peripheral.clk_divider[2] ),
    .B_N(\user_peripheral.div_count[2] ),
    .X(_076_));
 sky130_fd_sc_hd__and4_1 _240_ (.A(_072_),
    .B(_073_),
    .C(_076_),
    .D(_075_),
    .X(_077_));
 sky130_fd_sc_hd__or2b_1 _241_ (.A(\user_peripheral.clk_divider[1] ),
    .B_N(\user_peripheral.div_count[1] ),
    .X(_078_));
 sky130_fd_sc_hd__or2b_1 _242_ (.A(\user_peripheral.clk_divider[0] ),
    .B_N(\user_peripheral.div_count[0] ),
    .X(_079_));
 sky130_fd_sc_hd__or2b_1 _243_ (.A(\user_peripheral.div_count[1] ),
    .B_N(\user_peripheral.clk_divider[1] ),
    .X(_080_));
 sky130_fd_sc_hd__a21bo_1 _244_ (.A1(_078_),
    .A2(_079_),
    .B1_N(_080_),
    .X(_081_));
 sky130_fd_sc_hd__a22o_1 _245_ (.A1(_074_),
    .A2(_075_),
    .B1(_077_),
    .B2(_081_),
    .X(_082_));
 sky130_fd_sc_hd__a22o_1 _246_ (.A1(\user_peripheral.div_count[6] ),
    .A2(_066_),
    .B1(_068_),
    .B2(\user_peripheral.div_count[5] ),
    .X(_083_));
 sky130_fd_sc_hd__o21a_1 _247_ (.A1(_069_),
    .A2(_083_),
    .B1(_067_),
    .X(_084_));
 sky130_fd_sc_hd__o2bb2a_1 _248_ (.A1_N(_071_),
    .A2_N(_082_),
    .B1(_084_),
    .B2(_063_),
    .X(_085_));
 sky130_fd_sc_hd__inv_2 _249_ (.A(\user_peripheral.clk_divider[0] ),
    .Y(_086_));
 sky130_fd_sc_hd__and3_1 _250_ (.A(_080_),
    .B(_078_),
    .C(_079_),
    .X(_087_));
 sky130_fd_sc_hd__o2111a_1 _251_ (.A1(\user_peripheral.div_count[0] ),
    .A2(_086_),
    .B1(_071_),
    .C1(_077_),
    .D1(_087_),
    .X(_088_));
 sky130_fd_sc_hd__inv_2 _252_ (.A(\i_spi_reg.dv ),
    .Y(_089_));
 sky130_fd_sc_hd__or4b_1 _253_ (.A(\i_spi_reg.addr[0] ),
    .B(\i_spi_reg.addr[3] ),
    .C(\i_spi_reg.addr[2] ),
    .D_N(\i_spi_reg.addr[1] ),
    .X(_090_));
 sky130_fd_sc_hd__or2_2 _254_ (.A(_089_),
    .B(_090_),
    .X(_091_));
 sky130_fd_sc_hd__and2_1 _255_ (.A(\user_peripheral.busy ),
    .B(_091_),
    .X(_092_));
 sky130_fd_sc_hd__buf_2 _256_ (.A(_092_),
    .X(_093_));
 sky130_fd_sc_hd__o211ai_4 _257_ (.A1(_085_),
    .A2(_088_),
    .B1(_093_),
    .C1(net6),
    .Y(_094_));
 sky130_fd_sc_hd__or2b_1 _258_ (.A(_061_),
    .B_N(_094_),
    .X(_095_));
 sky130_fd_sc_hd__buf_2 _259_ (.A(_061_),
    .X(_096_));
 sky130_fd_sc_hd__or3_1 _260_ (.A(\user_peripheral.bit_count[2] ),
    .B(\user_peripheral.bit_count[1] ),
    .C(\user_peripheral.bit_count[0] ),
    .X(_097_));
 sky130_fd_sc_hd__xnor2_1 _261_ (.A(\user_peripheral.bit_count[3] ),
    .B(_097_),
    .Y(_098_));
 sky130_fd_sc_hd__or3_1 _262_ (.A(_096_),
    .B(_094_),
    .C(_098_),
    .X(_099_));
 sky130_fd_sc_hd__buf_2 _263_ (.A(net12),
    .X(_100_));
 sky130_fd_sc_hd__o211a_1 _264_ (.A1(\user_peripheral.bit_count[3] ),
    .A2(_095_),
    .B1(_099_),
    .C1(_100_),
    .X(_002_));
 sky130_fd_sc_hd__inv_2 _265_ (.A(clk),
    .Y(_001_));
 sky130_fd_sc_hd__or4b_1 _266_ (.A(\user_peripheral.bit_count[2] ),
    .B(\user_peripheral.bit_count[1] ),
    .C(\user_peripheral.bit_count[3] ),
    .D_N(\user_peripheral.bit_count[0] ),
    .X(_101_));
 sky130_fd_sc_hd__inv_2 _267_ (.A(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__a21oi_1 _268_ (.A1(_095_),
    .A2(_102_),
    .B1(net8),
    .Y(_103_));
 sky130_fd_sc_hd__o21ai_1 _269_ (.A1(_096_),
    .A2(_103_),
    .B1(_100_),
    .Y(_003_));
 sky130_fd_sc_hd__or2_1 _270_ (.A(_085_),
    .B(_088_),
    .X(_104_));
 sky130_fd_sc_hd__a21o_1 _271_ (.A1(_104_),
    .A2(_093_),
    .B1(net6),
    .X(_105_));
 sky130_fd_sc_hd__and3_1 _272_ (.A(net12),
    .B(_094_),
    .C(_105_),
    .X(_106_));
 sky130_fd_sc_hd__clkbuf_1 _273_ (.A(_106_),
    .X(_004_));
 sky130_fd_sc_hd__and3_1 _274_ (.A(net6),
    .B(_091_),
    .C(_102_),
    .X(_107_));
 sky130_fd_sc_hd__a21boi_1 _275_ (.A1(_104_),
    .A2(_107_),
    .B1_N(\user_peripheral.busy ),
    .Y(_108_));
 sky130_fd_sc_hd__o21a_1 _276_ (.A1(_096_),
    .A2(_108_),
    .B1(_100_),
    .X(_005_));
 sky130_fd_sc_hd__or2_1 _277_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.state[1] ),
    .X(_109_));
 sky130_fd_sc_hd__nor2_1 _278_ (.A(_053_),
    .B(_109_),
    .Y(_110_));
 sky130_fd_sc_hd__inv_2 _279_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .Y(_111_));
 sky130_fd_sc_hd__or2_1 _280_ (.A(_111_),
    .B(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .X(_112_));
 sky130_fd_sc_hd__and3_1 _281_ (.A(\i_spi_reg.state[0] ),
    .B(_056_),
    .C(_112_),
    .X(_113_));
 sky130_fd_sc_hd__and4bb_1 _282_ (.A_N(\i_spi_reg.state[0] ),
    .B_N(_053_),
    .C(\i_spi_reg.reg_rw ),
    .D(\i_spi_reg.state[1] ),
    .X(_114_));
 sky130_fd_sc_hd__nand2_1 _283_ (.A(_111_),
    .B(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .Y(_115_));
 sky130_fd_sc_hd__or4_1 _284_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[3] ),
    .D(\i_spi_reg.buffer_counter[2] ),
    .X(_116_));
 sky130_fd_sc_hd__nand2_1 _285_ (.A(_054_),
    .B(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__a22oi_1 _286_ (.A1(_110_),
    .A2(_115_),
    .B1(_117_),
    .B2(_053_),
    .Y(_118_));
 sky130_fd_sc_hd__o31a_1 _287_ (.A1(_110_),
    .A2(_113_),
    .A3(_114_),
    .B1(_118_),
    .X(_006_));
 sky130_fd_sc_hd__and4b_1 _288_ (.A_N(_053_),
    .B(_113_),
    .C(\i_spi_reg.state[0] ),
    .D(\i_spi_reg.state[1] ),
    .X(_119_));
 sky130_fd_sc_hd__nor4b_2 _289_ (.A(\i_spi_reg.state[1] ),
    .B(_053_),
    .C(_056_),
    .D_N(\i_spi_reg.state[0] ),
    .Y(_120_));
 sky130_fd_sc_hd__or3_1 _290_ (.A(_114_),
    .B(_119_),
    .C(_120_),
    .X(_121_));
 sky130_fd_sc_hd__clkbuf_1 _291_ (.A(_121_),
    .X(_007_));
 sky130_fd_sc_hd__or4b_1 _292_ (.A(\i_spi_reg.state[0] ),
    .B(_053_),
    .C(\i_spi_reg.reg_rw ),
    .D_N(\i_spi_reg.state[1] ),
    .X(_122_));
 sky130_fd_sc_hd__inv_2 _293_ (.A(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__a31o_1 _294_ (.A1(_053_),
    .A2(_056_),
    .A3(_112_),
    .B1(_123_),
    .X(_124_));
 sky130_fd_sc_hd__inv_2 _295_ (.A(_116_),
    .Y(_125_));
 sky130_fd_sc_hd__and3_1 _296_ (.A(_053_),
    .B(_054_),
    .C(_125_),
    .X(_126_));
 sky130_fd_sc_hd__a21o_1 _297_ (.A1(_118_),
    .A2(_124_),
    .B1(_126_),
    .X(_008_));
 sky130_fd_sc_hd__buf_2 _298_ (.A(_091_),
    .X(_127_));
 sky130_fd_sc_hd__nand2_1 _299_ (.A(_086_),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__o211a_1 _300_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_127_),
    .B1(_128_),
    .C1(_100_),
    .X(_009_));
 sky130_fd_sc_hd__nor2_1 _301_ (.A(_089_),
    .B(_090_),
    .Y(_129_));
 sky130_fd_sc_hd__or2_1 _302_ (.A(\user_peripheral.clk_divider[1] ),
    .B(_129_),
    .X(_130_));
 sky130_fd_sc_hd__o211a_1 _303_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_127_),
    .B1(_130_),
    .C1(_100_),
    .X(_010_));
 sky130_fd_sc_hd__a21bo_1 _304_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_129_),
    .B1_N(net11),
    .X(_131_));
 sky130_fd_sc_hd__a21o_1 _305_ (.A1(\user_peripheral.clk_divider[2] ),
    .A2(_127_),
    .B1(_131_),
    .X(_011_));
 sky130_fd_sc_hd__or2_1 _306_ (.A(\user_peripheral.clk_divider[3] ),
    .B(_129_),
    .X(_132_));
 sky130_fd_sc_hd__o211a_1 _307_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_127_),
    .B1(_132_),
    .C1(_100_),
    .X(_012_));
 sky130_fd_sc_hd__nand2_1 _308_ (.A(_062_),
    .B(_127_),
    .Y(_133_));
 sky130_fd_sc_hd__o211a_1 _309_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_127_),
    .B1(_133_),
    .C1(_100_),
    .X(_013_));
 sky130_fd_sc_hd__nand2_1 _310_ (.A(_068_),
    .B(_091_),
    .Y(_134_));
 sky130_fd_sc_hd__o211a_1 _311_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_127_),
    .B1(_134_),
    .C1(_100_),
    .X(_014_));
 sky130_fd_sc_hd__nand2_1 _312_ (.A(_066_),
    .B(_091_),
    .Y(_135_));
 sky130_fd_sc_hd__o211a_1 _313_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_127_),
    .B1(_135_),
    .C1(_100_),
    .X(_015_));
 sky130_fd_sc_hd__or2_1 _314_ (.A(\user_peripheral.clk_divider[7] ),
    .B(_129_),
    .X(_136_));
 sky130_fd_sc_hd__o211a_1 _315_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_127_),
    .B1(_136_),
    .C1(_100_),
    .X(_016_));
 sky130_fd_sc_hd__or2b_1 _316_ (.A(_061_),
    .B_N(net12),
    .X(_137_));
 sky130_fd_sc_hd__a21oi_2 _317_ (.A1(_104_),
    .A2(_093_),
    .B1(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__or2_1 _318_ (.A(\user_peripheral.div_count[0] ),
    .B(_093_),
    .X(_139_));
 sky130_fd_sc_hd__nand2_1 _319_ (.A(\user_peripheral.div_count[0] ),
    .B(_093_),
    .Y(_140_));
 sky130_fd_sc_hd__and3_1 _320_ (.A(_138_),
    .B(_139_),
    .C(_140_),
    .X(_141_));
 sky130_fd_sc_hd__clkbuf_1 _321_ (.A(_141_),
    .X(_017_));
 sky130_fd_sc_hd__nand3_1 _322_ (.A(\user_peripheral.div_count[1] ),
    .B(\user_peripheral.div_count[0] ),
    .C(_093_),
    .Y(_142_));
 sky130_fd_sc_hd__a31o_1 _323_ (.A1(\user_peripheral.div_count[0] ),
    .A2(\user_peripheral.busy ),
    .A3(_091_),
    .B1(\user_peripheral.div_count[1] ),
    .X(_143_));
 sky130_fd_sc_hd__and3_1 _324_ (.A(_138_),
    .B(_142_),
    .C(_143_),
    .X(_144_));
 sky130_fd_sc_hd__clkbuf_1 _325_ (.A(_144_),
    .X(_018_));
 sky130_fd_sc_hd__and4_1 _326_ (.A(\user_peripheral.div_count[2] ),
    .B(\user_peripheral.div_count[1] ),
    .C(\user_peripheral.div_count[0] ),
    .D(_093_),
    .X(_145_));
 sky130_fd_sc_hd__a31o_1 _327_ (.A1(\user_peripheral.div_count[1] ),
    .A2(\user_peripheral.div_count[0] ),
    .A3(_093_),
    .B1(\user_peripheral.div_count[2] ),
    .X(_146_));
 sky130_fd_sc_hd__and3b_1 _328_ (.A_N(_145_),
    .B(_146_),
    .C(_138_),
    .X(_147_));
 sky130_fd_sc_hd__clkbuf_1 _329_ (.A(_147_),
    .X(_019_));
 sky130_fd_sc_hd__and2_1 _330_ (.A(\user_peripheral.div_count[3] ),
    .B(_145_),
    .X(_148_));
 sky130_fd_sc_hd__o21ai_1 _331_ (.A1(\user_peripheral.div_count[3] ),
    .A2(_145_),
    .B1(_138_),
    .Y(_149_));
 sky130_fd_sc_hd__nor2_1 _332_ (.A(_148_),
    .B(_149_),
    .Y(_020_));
 sky130_fd_sc_hd__and3_1 _333_ (.A(\user_peripheral.div_count[4] ),
    .B(\user_peripheral.div_count[3] ),
    .C(_145_),
    .X(_150_));
 sky130_fd_sc_hd__o21ai_1 _334_ (.A1(\user_peripheral.div_count[4] ),
    .A2(_148_),
    .B1(_138_),
    .Y(_151_));
 sky130_fd_sc_hd__nor2_1 _335_ (.A(_150_),
    .B(_151_),
    .Y(_021_));
 sky130_fd_sc_hd__and2_1 _336_ (.A(\user_peripheral.div_count[5] ),
    .B(_150_),
    .X(_152_));
 sky130_fd_sc_hd__o21ai_1 _337_ (.A1(\user_peripheral.div_count[5] ),
    .A2(_150_),
    .B1(_138_),
    .Y(_153_));
 sky130_fd_sc_hd__nor2_1 _338_ (.A(_152_),
    .B(_153_),
    .Y(_022_));
 sky130_fd_sc_hd__nand2_1 _339_ (.A(\user_peripheral.div_count[6] ),
    .B(_152_),
    .Y(_154_));
 sky130_fd_sc_hd__o211a_1 _340_ (.A1(\user_peripheral.div_count[6] ),
    .A2(_152_),
    .B1(_154_),
    .C1(_138_),
    .X(_023_));
 sky130_fd_sc_hd__a21boi_1 _341_ (.A1(_065_),
    .A2(_154_),
    .B1_N(_138_),
    .Y(_024_));
 sky130_fd_sc_hd__xor2_1 _342_ (.A(\user_peripheral.bit_count[0] ),
    .B(_094_),
    .X(_155_));
 sky130_fd_sc_hd__nor2_1 _343_ (.A(_137_),
    .B(_155_),
    .Y(_025_));
 sky130_fd_sc_hd__nor3_1 _344_ (.A(\user_peripheral.bit_count[1] ),
    .B(\user_peripheral.bit_count[0] ),
    .C(_094_),
    .Y(_156_));
 sky130_fd_sc_hd__o21a_1 _345_ (.A1(\user_peripheral.bit_count[0] ),
    .A2(_094_),
    .B1(\user_peripheral.bit_count[1] ),
    .X(_157_));
 sky130_fd_sc_hd__o21ba_1 _346_ (.A1(_156_),
    .A2(_157_),
    .B1_N(_137_),
    .X(_026_));
 sky130_fd_sc_hd__o21bai_1 _347_ (.A1(\user_peripheral.bit_count[2] ),
    .A2(_156_),
    .B1_N(_137_),
    .Y(_158_));
 sky130_fd_sc_hd__a21oi_1 _348_ (.A1(\user_peripheral.bit_count[2] ),
    .A2(_156_),
    .B1(_158_),
    .Y(_027_));
 sky130_fd_sc_hd__and2_1 _349_ (.A(\i_spi_reg.reg_data_o[0] ),
    .B(_096_),
    .X(_159_));
 sky130_fd_sc_hd__and2_1 _350_ (.A(net12),
    .B(_095_),
    .X(_160_));
 sky130_fd_sc_hd__buf_2 _351_ (.A(_160_),
    .X(_161_));
 sky130_fd_sc_hd__mux2_1 _352_ (.A0(\user_peripheral.shift_reg[0] ),
    .A1(_159_),
    .S(_161_),
    .X(_162_));
 sky130_fd_sc_hd__clkbuf_1 _353_ (.A(_162_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _354_ (.A0(\user_peripheral.shift_reg[0] ),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(_096_),
    .X(_163_));
 sky130_fd_sc_hd__mux2_1 _355_ (.A0(\user_peripheral.shift_reg[1] ),
    .A1(_163_),
    .S(_161_),
    .X(_164_));
 sky130_fd_sc_hd__clkbuf_1 _356_ (.A(_164_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _357_ (.A0(\user_peripheral.shift_reg[1] ),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_096_),
    .X(_165_));
 sky130_fd_sc_hd__mux2_1 _358_ (.A0(\user_peripheral.shift_reg[2] ),
    .A1(_165_),
    .S(_161_),
    .X(_166_));
 sky130_fd_sc_hd__clkbuf_1 _359_ (.A(_166_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _360_ (.A0(\user_peripheral.shift_reg[2] ),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_096_),
    .X(_167_));
 sky130_fd_sc_hd__mux2_1 _361_ (.A0(\user_peripheral.shift_reg[3] ),
    .A1(_167_),
    .S(_161_),
    .X(_168_));
 sky130_fd_sc_hd__clkbuf_1 _362_ (.A(_168_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _363_ (.A0(\user_peripheral.shift_reg[3] ),
    .A1(\i_spi_reg.reg_data_o[4] ),
    .S(_096_),
    .X(_169_));
 sky130_fd_sc_hd__mux2_1 _364_ (.A0(\user_peripheral.shift_reg[4] ),
    .A1(_169_),
    .S(_161_),
    .X(_170_));
 sky130_fd_sc_hd__clkbuf_1 _365_ (.A(_170_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _366_ (.A0(\user_peripheral.shift_reg[4] ),
    .A1(\i_spi_reg.reg_data_o[5] ),
    .S(_096_),
    .X(_171_));
 sky130_fd_sc_hd__mux2_1 _367_ (.A0(\user_peripheral.shift_reg[5] ),
    .A1(_171_),
    .S(_161_),
    .X(_172_));
 sky130_fd_sc_hd__clkbuf_1 _368_ (.A(_172_),
    .X(_033_));
 sky130_fd_sc_hd__mux2_1 _369_ (.A0(\user_peripheral.shift_reg[5] ),
    .A1(\i_spi_reg.reg_data_o[6] ),
    .S(_096_),
    .X(_173_));
 sky130_fd_sc_hd__mux2_1 _370_ (.A0(\user_peripheral.shift_reg[6] ),
    .A1(_173_),
    .S(_161_),
    .X(_174_));
 sky130_fd_sc_hd__clkbuf_1 _371_ (.A(_174_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _372_ (.A0(\user_peripheral.shift_reg[6] ),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_061_),
    .X(_175_));
 sky130_fd_sc_hd__mux2_1 _373_ (.A0(net7),
    .A1(_175_),
    .S(_161_),
    .X(_176_));
 sky130_fd_sc_hd__clkbuf_1 _374_ (.A(_176_),
    .X(_035_));
 sky130_fd_sc_hd__inv_2 _375_ (.A(\i_spi_reg.addr[1] ),
    .Y(_177_));
 sky130_fd_sc_hd__and3b_1 _376_ (.A_N(\i_spi_reg.addr[0] ),
    .B(\i_spi_reg.addr[1] ),
    .C(\user_peripheral.clk_divider[0] ),
    .X(_178_));
 sky130_fd_sc_hd__a31o_1 _377_ (.A1(\user_peripheral.busy ),
    .A2(_177_),
    .A3(\i_spi_reg.addr[0] ),
    .B1(_178_),
    .X(_179_));
 sky130_fd_sc_hd__a32o_1 _378_ (.A1(_059_),
    .A2(_126_),
    .A3(_179_),
    .B1(_109_),
    .B2(\i_spi_reg.spi_mosi ),
    .X(_180_));
 sky130_fd_sc_hd__and3_1 _379_ (.A(\i_spi_reg.state[2] ),
    .B(_054_),
    .C(_116_),
    .X(_181_));
 sky130_fd_sc_hd__inv_2 _380_ (.A(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .Y(_182_));
 sky130_fd_sc_hd__or3_1 _381_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(_182_),
    .C(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_183_));
 sky130_fd_sc_hd__and3_1 _382_ (.A(_111_),
    .B(_182_),
    .C(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_184_));
 sky130_fd_sc_hd__buf_1 _383_ (.A(_184_),
    .X(_185_));
 sky130_fd_sc_hd__o2bb2a_2 _384_ (.A1_N(_181_),
    .A2_N(_183_),
    .B1(_054_),
    .B2(_185_),
    .X(_186_));
 sky130_fd_sc_hd__mux2_1 _385_ (.A0(\i_spi_reg.reg_data_o[0] ),
    .A1(_180_),
    .S(_186_),
    .X(_187_));
 sky130_fd_sc_hd__clkbuf_1 _386_ (.A(_187_),
    .X(_036_));
 sky130_fd_sc_hd__or2_2 _387_ (.A(_109_),
    .B(_181_),
    .X(_188_));
 sky130_fd_sc_hd__and2b_2 _388_ (.A_N(_090_),
    .B(_126_),
    .X(_189_));
 sky130_fd_sc_hd__a22o_1 _389_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[1] ),
    .X(_190_));
 sky130_fd_sc_hd__mux2_1 _390_ (.A0(\i_spi_reg.reg_data_o[1] ),
    .A1(_190_),
    .S(_186_),
    .X(_191_));
 sky130_fd_sc_hd__clkbuf_1 _391_ (.A(_191_),
    .X(_037_));
 sky130_fd_sc_hd__a22o_1 _392_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[2] ),
    .X(_192_));
 sky130_fd_sc_hd__mux2_1 _393_ (.A0(\i_spi_reg.reg_data_o[2] ),
    .A1(_192_),
    .S(_186_),
    .X(_193_));
 sky130_fd_sc_hd__clkbuf_1 _394_ (.A(_193_),
    .X(_038_));
 sky130_fd_sc_hd__a22o_1 _395_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[3] ),
    .X(_194_));
 sky130_fd_sc_hd__mux2_1 _396_ (.A0(\i_spi_reg.reg_data_o[3] ),
    .A1(_194_),
    .S(_186_),
    .X(_195_));
 sky130_fd_sc_hd__clkbuf_1 _397_ (.A(_195_),
    .X(_039_));
 sky130_fd_sc_hd__a22o_1 _398_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[4] ),
    .X(_196_));
 sky130_fd_sc_hd__mux2_1 _399_ (.A0(\i_spi_reg.reg_data_o[4] ),
    .A1(_196_),
    .S(_186_),
    .X(_197_));
 sky130_fd_sc_hd__clkbuf_1 _400_ (.A(_197_),
    .X(_040_));
 sky130_fd_sc_hd__a22o_1 _401_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[5] ),
    .X(_198_));
 sky130_fd_sc_hd__mux2_1 _402_ (.A0(\i_spi_reg.reg_data_o[5] ),
    .A1(_198_),
    .S(_186_),
    .X(_199_));
 sky130_fd_sc_hd__clkbuf_1 _403_ (.A(_199_),
    .X(_041_));
 sky130_fd_sc_hd__a22o_1 _404_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[6] ),
    .X(_200_));
 sky130_fd_sc_hd__mux2_1 _405_ (.A0(\i_spi_reg.reg_data_o[6] ),
    .A1(_200_),
    .S(_186_),
    .X(_201_));
 sky130_fd_sc_hd__clkbuf_1 _406_ (.A(_201_),
    .X(_042_));
 sky130_fd_sc_hd__a22o_1 _407_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_188_),
    .B1(_189_),
    .B2(\user_peripheral.clk_divider[7] ),
    .X(_202_));
 sky130_fd_sc_hd__mux2_1 _408_ (.A0(\i_spi_reg.reg_data_o[7] ),
    .A1(_202_),
    .S(_186_),
    .X(_203_));
 sky130_fd_sc_hd__clkbuf_1 _409_ (.A(_203_),
    .X(_043_));
 sky130_fd_sc_hd__a21oi_1 _410_ (.A1(_056_),
    .A2(_185_),
    .B1(\i_spi_reg.buffer_counter[0] ),
    .Y(_204_));
 sky130_fd_sc_hd__a21oi_1 _411_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_185_),
    .B1(_204_),
    .Y(_044_));
 sky130_fd_sc_hd__and3_1 _412_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(_185_),
    .X(_205_));
 sky130_fd_sc_hd__a21oi_1 _413_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_185_),
    .B1(\i_spi_reg.buffer_counter[1] ),
    .Y(_206_));
 sky130_fd_sc_hd__nor2_1 _414_ (.A(_205_),
    .B(_206_),
    .Y(_045_));
 sky130_fd_sc_hd__and4_1 _415_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(_185_),
    .X(_207_));
 sky130_fd_sc_hd__o21ba_1 _416_ (.A1(\i_spi_reg.buffer_counter[2] ),
    .A2(_205_),
    .B1_N(_207_),
    .X(_046_));
 sky130_fd_sc_hd__o21ai_1 _417_ (.A1(\i_spi_reg.buffer_counter[3] ),
    .A2(_207_),
    .B1(_056_),
    .Y(_208_));
 sky130_fd_sc_hd__a21oi_1 _418_ (.A1(\i_spi_reg.buffer_counter[3] ),
    .A2(_207_),
    .B1(_208_),
    .Y(_047_));
 sky130_fd_sc_hd__mux2_1 _419_ (.A0(\i_spi_reg.addr[0] ),
    .A1(\i_spi_reg.reg_data_o[0] ),
    .S(net9),
    .X(_209_));
 sky130_fd_sc_hd__clkbuf_1 _420_ (.A(_209_),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _421_ (.A0(\i_spi_reg.addr[1] ),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(net9),
    .X(_210_));
 sky130_fd_sc_hd__clkbuf_1 _422_ (.A(_210_),
    .X(_049_));
 sky130_fd_sc_hd__mux2_1 _423_ (.A0(\i_spi_reg.addr[2] ),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_120_),
    .X(_211_));
 sky130_fd_sc_hd__clkbuf_1 _424_ (.A(_211_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _425_ (.A0(\i_spi_reg.addr[3] ),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_120_),
    .X(_212_));
 sky130_fd_sc_hd__clkbuf_1 _426_ (.A(_212_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _427_ (.A0(\i_spi_reg.reg_rw ),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(net9),
    .X(_213_));
 sky130_fd_sc_hd__clkbuf_1 _428_ (.A(_213_),
    .X(_052_));
 sky130_fd_sc_hd__dfxtp_1 _429_ (.CLK(clk),
    .D(_002_),
    .Q(\user_peripheral.bit_count[3] ));
 sky130_fd_sc_hd__dfxtp_1 _430_ (.CLK(_001_),
    .D(net1),
    .Q(\i_spi_reg.falling_edge_detector_sof.rstb ));
 sky130_fd_sc_hd__dfxtp_1 _431_ (.CLK(clk),
    .D(_003_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _432_ (.CLK(clk),
    .D(_004_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _433_ (.CLK(clk),
    .D(_005_),
    .Q(\user_peripheral.busy ));
 sky130_fd_sc_hd__dfrtp_1 _434_ (.CLK(clk),
    .D(_006_),
    .RESET_B(net10),
    .Q(\i_spi_reg.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _435_ (.CLK(clk),
    .D(_007_),
    .RESET_B(net12),
    .Q(\i_spi_reg.state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _436_ (.CLK(clk),
    .D(_008_),
    .RESET_B(net10),
    .Q(\i_spi_reg.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _437_ (.CLK(clk),
    .D(_009_),
    .Q(\user_peripheral.clk_divider[0] ));
 sky130_fd_sc_hd__dfxtp_1 _438_ (.CLK(clk),
    .D(_010_),
    .Q(\user_peripheral.clk_divider[1] ));
 sky130_fd_sc_hd__dfxtp_1 _439_ (.CLK(clk),
    .D(_011_),
    .Q(\user_peripheral.clk_divider[2] ));
 sky130_fd_sc_hd__dfxtp_1 _440_ (.CLK(clk),
    .D(_012_),
    .Q(\user_peripheral.clk_divider[3] ));
 sky130_fd_sc_hd__dfxtp_1 _441_ (.CLK(clk),
    .D(_013_),
    .Q(\user_peripheral.clk_divider[4] ));
 sky130_fd_sc_hd__dfxtp_1 _442_ (.CLK(clk),
    .D(_014_),
    .Q(\user_peripheral.clk_divider[5] ));
 sky130_fd_sc_hd__dfxtp_1 _443_ (.CLK(clk),
    .D(_015_),
    .Q(\user_peripheral.clk_divider[6] ));
 sky130_fd_sc_hd__dfxtp_1 _444_ (.CLK(clk),
    .D(_016_),
    .Q(\user_peripheral.clk_divider[7] ));
 sky130_fd_sc_hd__dfxtp_1 _445_ (.CLK(clk),
    .D(_017_),
    .Q(\user_peripheral.div_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _446_ (.CLK(clk),
    .D(_018_),
    .Q(\user_peripheral.div_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _447_ (.CLK(clk),
    .D(_019_),
    .Q(\user_peripheral.div_count[2] ));
 sky130_fd_sc_hd__dfxtp_1 _448_ (.CLK(clk),
    .D(_020_),
    .Q(\user_peripheral.div_count[3] ));
 sky130_fd_sc_hd__dfxtp_1 _449_ (.CLK(clk),
    .D(_021_),
    .Q(\user_peripheral.div_count[4] ));
 sky130_fd_sc_hd__dfxtp_1 _450_ (.CLK(clk),
    .D(_022_),
    .Q(\user_peripheral.div_count[5] ));
 sky130_fd_sc_hd__dfxtp_1 _451_ (.CLK(clk),
    .D(_023_),
    .Q(\user_peripheral.div_count[6] ));
 sky130_fd_sc_hd__dfxtp_1 _452_ (.CLK(clk),
    .D(_024_),
    .Q(\user_peripheral.div_count[7] ));
 sky130_fd_sc_hd__dfxtp_1 _453_ (.CLK(clk),
    .D(_025_),
    .Q(\user_peripheral.bit_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _454_ (.CLK(clk),
    .D(_026_),
    .Q(\user_peripheral.bit_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _455_ (.CLK(clk),
    .D(_027_),
    .Q(\user_peripheral.bit_count[2] ));
 sky130_fd_sc_hd__dfxtp_1 _456_ (.CLK(clk),
    .D(_028_),
    .Q(\user_peripheral.shift_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _457_ (.CLK(clk),
    .D(_029_),
    .Q(\user_peripheral.shift_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _458_ (.CLK(clk),
    .D(_030_),
    .Q(\user_peripheral.shift_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _459_ (.CLK(clk),
    .D(_031_),
    .Q(\user_peripheral.shift_reg[3] ));
 sky130_fd_sc_hd__dfxtp_1 _460_ (.CLK(clk),
    .D(_032_),
    .Q(\user_peripheral.shift_reg[4] ));
 sky130_fd_sc_hd__dfxtp_1 _461_ (.CLK(clk),
    .D(_033_),
    .Q(\user_peripheral.shift_reg[5] ));
 sky130_fd_sc_hd__dfxtp_1 _462_ (.CLK(clk),
    .D(_034_),
    .Q(\user_peripheral.shift_reg[6] ));
 sky130_fd_sc_hd__dfxtp_1 _463_ (.CLK(clk),
    .D(_035_),
    .Q(net7));
 sky130_fd_sc_hd__dfrtp_1 _464_ (.CLK(clk),
    .D(_036_),
    .RESET_B(net10),
    .Q(\i_spi_reg.reg_data_o[0] ));
 sky130_fd_sc_hd__dfrtp_1 _465_ (.CLK(clk),
    .D(_037_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[1] ));
 sky130_fd_sc_hd__dfrtp_1 _466_ (.CLK(clk),
    .D(_038_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[2] ));
 sky130_fd_sc_hd__dfrtp_1 _467_ (.CLK(clk),
    .D(_039_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[3] ));
 sky130_fd_sc_hd__dfrtp_1 _468_ (.CLK(clk),
    .D(_040_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[4] ));
 sky130_fd_sc_hd__dfrtp_1 _469_ (.CLK(clk),
    .D(_041_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[5] ));
 sky130_fd_sc_hd__dfrtp_1 _470_ (.CLK(clk),
    .D(_042_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[6] ));
 sky130_fd_sc_hd__dfrtp_2 _471_ (.CLK(clk),
    .D(_043_),
    .RESET_B(net10),
    .Q(\i_spi_reg.reg_data_o[7] ));
 sky130_fd_sc_hd__dfrtp_2 _472_ (.CLK(clk),
    .D(_044_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[0] ));
 sky130_fd_sc_hd__dfrtp_1 _473_ (.CLK(clk),
    .D(_045_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _474_ (.CLK(clk),
    .D(_046_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _475_ (.CLK(clk),
    .D(_047_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _476_ (.CLK(clk),
    .D(_048_),
    .RESET_B(net12),
    .Q(\i_spi_reg.addr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _477_ (.CLK(clk),
    .D(_049_),
    .RESET_B(net12),
    .Q(\i_spi_reg.addr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _478_ (.CLK(clk),
    .D(_050_),
    .RESET_B(net11),
    .Q(\i_spi_reg.addr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _479_ (.CLK(clk),
    .D(_051_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.addr[3] ));
 sky130_fd_sc_hd__dfrtp_1 _480_ (.CLK(clk),
    .D(_052_),
    .RESET_B(net12),
    .Q(\i_spi_reg.reg_rw ));
 sky130_fd_sc_hd__dfrtp_1 _481_ (.CLK(clk),
    .D(_000_),
    .RESET_B(net12),
    .Q(\i_spi_reg.dv ));
 sky130_fd_sc_hd__dfxtp_1 _482_ (.CLK(clk),
    .D(net4),
    .Q(\synchronizer_spi_mosi_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _483_ (.CLK(clk),
    .D(\synchronizer_spi_mosi_inst.data_sync[1] ),
    .Q(\i_spi_reg.spi_mosi ));
 sky130_fd_sc_hd__dfxtp_1 _484_ (.CLK(clk),
    .D(net3),
    .Q(\synchronizer_spi_clk_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _485_ (.CLK(clk),
    .D(\synchronizer_spi_clk_inst.data_sync[1] ),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data ));
 sky130_fd_sc_hd__dfrtp_1 _486_ (.CLK(clk),
    .D(\i_spi_reg.falling_edge_detector_sof.data ),
    .RESET_B(net10),
    .Q(\i_spi_reg.falling_edge_detector_sof.data_dly ));
 sky130_fd_sc_hd__dfxtp_1 _487_ (.CLK(clk),
    .D(net2),
    .Q(\synchronizer_spi_cs_n_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _488_ (.CLK(clk),
    .D(\synchronizer_spi_cs_n_inst.data_sync[1] ),
    .Q(\i_spi_reg.falling_edge_detector_sof.data ));
 sky130_fd_sc_hd__dfrtp_1 _489_ (.CLK(clk),
    .D(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .RESET_B(net10),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_14 (.LO(net14));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_15 (.LO(net15));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_16 (.LO(net16));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_17 (.LO(net17));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_18 (.LO(net18));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_19 (.LO(net19));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_20 (.LO(net20));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_21 (.LO(net21));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_22 (.LO(net22));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_23 (.LO(net23));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_24 (.LO(net24));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_25 (.LO(net25));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_26 (.LO(net26));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_27 (.LO(net27));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_28 (.LO(net28));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_29 (.LO(net29));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_30 (.LO(net30));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_31 (.LO(net31));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_32 (.HI(net32));
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
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(uio_in[4]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(uio_in[5]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(uio_in[6]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(uio_out[3]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(uo_out[0]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(uo_out[1]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(uo_out[2]));
 sky130_fd_sc_hd__clkbuf_2 max_cap9 (.A(_120_),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_4 fanout10 (.A(net11),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_4 fanout11 (.A(net12),
    .X(net11));
 sky130_fd_sc_hd__buf_2 fanout12 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net12));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_13 (.LO(net13));
 assign uio_oe[0] = net13;
 assign uio_oe[1] = net14;
 assign uio_oe[2] = net15;
 assign uio_oe[3] = net32;
 assign uio_oe[4] = net16;
 assign uio_oe[5] = net17;
 assign uio_oe[6] = net18;
 assign uio_oe[7] = net19;
 assign uio_out[0] = net20;
 assign uio_out[1] = net21;
 assign uio_out[2] = net22;
 assign uio_out[4] = net23;
 assign uio_out[5] = net24;
 assign uio_out[6] = net25;
 assign uio_out[7] = net26;
 assign uo_out[3] = net27;
 assign uo_out[4] = net28;
 assign uo_out[5] = net29;
 assign uo_out[6] = net30;
 assign uo_out[7] = net31;
endmodule
