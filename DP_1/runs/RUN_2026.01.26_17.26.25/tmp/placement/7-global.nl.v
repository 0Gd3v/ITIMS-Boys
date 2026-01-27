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
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire _267_;
 wire _268_;
 wire _269_;
 wire _270_;
 wire _271_;
 wire _272_;
 wire _273_;
 wire _274_;
 wire _275_;
 wire _276_;
 wire _277_;
 wire _278_;
 wire _279_;
 wire _280_;
 wire _281_;
 wire _282_;
 wire _283_;
 wire _284_;
 wire _285_;
 wire _286_;
 wire _287_;
 wire _288_;
 wire _289_;
 wire _290_;
 wire _291_;
 wire _292_;
 wire _293_;
 wire _294_;
 wire _295_;
 wire _296_;
 wire _297_;
 wire _298_;
 wire _299_;
 wire _300_;
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
 wire \user_peripheral.pwm_count[0] ;
 wire \user_peripheral.pwm_count[1] ;
 wire \user_peripheral.pwm_count[2] ;
 wire \user_peripheral.pwm_count[3] ;
 wire \user_peripheral.pwm_count[4] ;
 wire \user_peripheral.pwm_count[5] ;
 wire \user_peripheral.pwm_count[6] ;
 wire \user_peripheral.pwm_count[7] ;
 wire \user_peripheral.pwm_level_0[0] ;
 wire \user_peripheral.pwm_level_0[1] ;
 wire \user_peripheral.pwm_level_0[2] ;
 wire \user_peripheral.pwm_level_0[3] ;
 wire \user_peripheral.pwm_level_0[4] ;
 wire \user_peripheral.pwm_level_0[5] ;
 wire \user_peripheral.pwm_level_0[6] ;
 wire \user_peripheral.pwm_level_0[7] ;
 wire \user_peripheral.pwm_level_1[0] ;
 wire \user_peripheral.pwm_level_1[1] ;
 wire \user_peripheral.pwm_level_1[2] ;
 wire \user_peripheral.pwm_level_1[3] ;
 wire \user_peripheral.pwm_level_1[4] ;
 wire \user_peripheral.pwm_level_1[5] ;
 wire \user_peripheral.pwm_level_1[6] ;
 wire \user_peripheral.pwm_level_1[7] ;
 wire \user_peripheral.strobe_count[0] ;
 wire \user_peripheral.strobe_count[10] ;
 wire \user_peripheral.strobe_count[11] ;
 wire \user_peripheral.strobe_count[12] ;
 wire \user_peripheral.strobe_count[13] ;
 wire \user_peripheral.strobe_count[14] ;
 wire \user_peripheral.strobe_count[15] ;
 wire \user_peripheral.strobe_count[1] ;
 wire \user_peripheral.strobe_count[2] ;
 wire \user_peripheral.strobe_count[3] ;
 wire \user_peripheral.strobe_count[4] ;
 wire \user_peripheral.strobe_count[5] ;
 wire \user_peripheral.strobe_count[6] ;
 wire \user_peripheral.strobe_count[7] ;
 wire \user_peripheral.strobe_count[8] ;
 wire \user_peripheral.strobe_count[9] ;
 wire \user_peripheral.strobe_period[0] ;
 wire \user_peripheral.strobe_period[1] ;
 wire \user_peripheral.strobe_period[2] ;
 wire \user_peripheral.strobe_period[3] ;
 wire \user_peripheral.strobe_period[4] ;
 wire \user_peripheral.strobe_period[5] ;
 wire \user_peripheral.strobe_period[6] ;
 wire \user_peripheral.strobe_period[7] ;

 sky130_fd_sc_hd__nor2_2 _301_ (.A(\i_spi_reg.state[1] ),
    .B(\i_spi_reg.state[0] ),
    .Y(_072_));
 sky130_fd_sc_hd__and3_2 _302_ (.A(\i_spi_reg.reg_data_o[7] ),
    .B(\i_spi_reg.state[2] ),
    .C(_072_),
    .X(_073_));
 sky130_fd_sc_hd__buf_1 _303_ (.A(_073_),
    .X(uio_out[3]));
 sky130_fd_sc_hd__and2b_2 _304_ (.A_N(\i_spi_reg.state[2] ),
    .B(\i_spi_reg.state[1] ),
    .X(_074_));
 sky130_fd_sc_hd__nor4b_2 _305_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D_N(\i_spi_reg.buffer_counter[3] ),
    .Y(_075_));
 sky130_fd_sc_hd__and4_2 _306_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.reg_rw ),
    .C(_074_),
    .D(_075_),
    .X(_076_));
 sky130_fd_sc_hd__buf_1 _307_ (.A(_076_),
    .X(_000_));
 sky130_fd_sc_hd__inv_2 _308_ (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Y(_077_));
 sky130_fd_sc_hd__inv_2 _309_ (.A(\user_peripheral.strobe_count[4] ),
    .Y(_078_));
 sky130_fd_sc_hd__or2b_2 _310_ (.A(\user_peripheral.strobe_period[7] ),
    .B_N(\user_peripheral.strobe_count[7] ),
    .X(_079_));
 sky130_fd_sc_hd__o21ai_2 _311_ (.A1(\user_peripheral.strobe_period[4] ),
    .A2(_078_),
    .B1(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__inv_2 _312_ (.A(\user_peripheral.strobe_count[5] ),
    .Y(_081_));
 sky130_fd_sc_hd__a22o_2 _313_ (.A1(\user_peripheral.strobe_period[5] ),
    .A2(_081_),
    .B1(_078_),
    .B2(\user_peripheral.strobe_period[4] ),
    .X(_082_));
 sky130_fd_sc_hd__inv_2 _314_ (.A(\user_peripheral.strobe_period[6] ),
    .Y(_083_));
 sky130_fd_sc_hd__o2bb2a_2 _315_ (.A1_N(_083_),
    .A2_N(\user_peripheral.strobe_count[6] ),
    .B1(_081_),
    .B2(\user_peripheral.strobe_period[5] ),
    .X(_084_));
 sky130_fd_sc_hd__inv_2 _316_ (.A(\user_peripheral.strobe_period[7] ),
    .Y(_085_));
 sky130_fd_sc_hd__o22a_2 _317_ (.A1(_085_),
    .A2(\user_peripheral.strobe_count[7] ),
    .B1(\user_peripheral.strobe_count[6] ),
    .B2(_083_),
    .X(_086_));
 sky130_fd_sc_hd__and4bb_2 _318_ (.A_N(_080_),
    .B_N(_082_),
    .C(_084_),
    .D(_086_),
    .X(_087_));
 sky130_fd_sc_hd__or2b_2 _319_ (.A(\user_peripheral.strobe_count[3] ),
    .B_N(\user_peripheral.strobe_period[3] ),
    .X(_088_));
 sky130_fd_sc_hd__or2b_2 _320_ (.A(\user_peripheral.strobe_count[2] ),
    .B_N(\user_peripheral.strobe_period[2] ),
    .X(_089_));
 sky130_fd_sc_hd__nand2_2 _321_ (.A(_088_),
    .B(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__or2b_2 _322_ (.A(\user_peripheral.strobe_period[3] ),
    .B_N(\user_peripheral.strobe_count[3] ),
    .X(_091_));
 sky130_fd_sc_hd__or2b_2 _323_ (.A(\user_peripheral.strobe_period[2] ),
    .B_N(\user_peripheral.strobe_count[2] ),
    .X(_092_));
 sky130_fd_sc_hd__and4_2 _324_ (.A(_088_),
    .B(_089_),
    .C(_092_),
    .D(_091_),
    .X(_093_));
 sky130_fd_sc_hd__or2b_2 _325_ (.A(\user_peripheral.strobe_period[1] ),
    .B_N(\user_peripheral.strobe_count[1] ),
    .X(_094_));
 sky130_fd_sc_hd__or2b_2 _326_ (.A(\user_peripheral.strobe_period[0] ),
    .B_N(\user_peripheral.strobe_count[0] ),
    .X(_095_));
 sky130_fd_sc_hd__or2b_2 _327_ (.A(\user_peripheral.strobe_count[1] ),
    .B_N(\user_peripheral.strobe_period[1] ),
    .X(_096_));
 sky130_fd_sc_hd__a21bo_2 _328_ (.A1(_094_),
    .A2(_095_),
    .B1_N(_096_),
    .X(_097_));
 sky130_fd_sc_hd__a22o_2 _329_ (.A1(_090_),
    .A2(_091_),
    .B1(_093_),
    .B2(_097_),
    .X(_098_));
 sky130_fd_sc_hd__a21bo_2 _330_ (.A1(_082_),
    .A2(_084_),
    .B1_N(_086_),
    .X(_099_));
 sky130_fd_sc_hd__a22o_2 _331_ (.A1(_087_),
    .A2(_098_),
    .B1(_099_),
    .B2(_079_),
    .X(_100_));
 sky130_fd_sc_hd__inv_2 _332_ (.A(\user_peripheral.strobe_period[0] ),
    .Y(_101_));
 sky130_fd_sc_hd__and3_2 _333_ (.A(_096_),
    .B(_094_),
    .C(_095_),
    .X(_102_));
 sky130_fd_sc_hd__o211a_2 _334_ (.A1(_101_),
    .A2(\user_peripheral.strobe_count[0] ),
    .B1(_093_),
    .C1(_102_),
    .X(_103_));
 sky130_fd_sc_hd__or4_2 _335_ (.A(\user_peripheral.strobe_count[11] ),
    .B(\user_peripheral.strobe_count[10] ),
    .C(\user_peripheral.strobe_count[9] ),
    .D(\user_peripheral.strobe_count[8] ),
    .X(_104_));
 sky130_fd_sc_hd__or4_2 _336_ (.A(\user_peripheral.strobe_count[15] ),
    .B(\user_peripheral.strobe_count[14] ),
    .C(\user_peripheral.strobe_count[13] ),
    .D(\user_peripheral.strobe_count[12] ),
    .X(_105_));
 sky130_fd_sc_hd__a211oi_2 _337_ (.A1(_087_),
    .A2(_103_),
    .B1(_104_),
    .C1(_105_),
    .Y(_106_));
 sky130_fd_sc_hd__nand2_2 _338_ (.A(_100_),
    .B(_106_),
    .Y(_107_));
 sky130_fd_sc_hd__nor2_2 _339_ (.A(_077_),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__and2b_2 _340_ (.A_N(\user_peripheral.strobe_count[0] ),
    .B(_108_),
    .X(_109_));
 sky130_fd_sc_hd__buf_1 _341_ (.A(_109_),
    .X(_002_));
 sky130_fd_sc_hd__or2_2 _342_ (.A(\user_peripheral.strobe_count[1] ),
    .B(\user_peripheral.strobe_count[0] ),
    .X(_110_));
 sky130_fd_sc_hd__nand2_2 _343_ (.A(\user_peripheral.strobe_count[1] ),
    .B(\user_peripheral.strobe_count[0] ),
    .Y(_111_));
 sky130_fd_sc_hd__and3_2 _344_ (.A(_108_),
    .B(_110_),
    .C(_111_),
    .X(_112_));
 sky130_fd_sc_hd__buf_1 _345_ (.A(_112_),
    .X(_003_));
 sky130_fd_sc_hd__and3_2 _346_ (.A(\user_peripheral.strobe_count[2] ),
    .B(\user_peripheral.strobe_count[1] ),
    .C(\user_peripheral.strobe_count[0] ),
    .X(_113_));
 sky130_fd_sc_hd__a21o_2 _347_ (.A1(\user_peripheral.strobe_count[1] ),
    .A2(\user_peripheral.strobe_count[0] ),
    .B1(\user_peripheral.strobe_count[2] ),
    .X(_114_));
 sky130_fd_sc_hd__and3b_2 _348_ (.A_N(_113_),
    .B(_108_),
    .C(_114_),
    .X(_115_));
 sky130_fd_sc_hd__buf_1 _349_ (.A(_115_),
    .X(_004_));
 sky130_fd_sc_hd__or2_2 _350_ (.A(\user_peripheral.strobe_count[3] ),
    .B(_113_),
    .X(_116_));
 sky130_fd_sc_hd__nand2_2 _351_ (.A(\user_peripheral.strobe_count[3] ),
    .B(_113_),
    .Y(_117_));
 sky130_fd_sc_hd__and3_2 _352_ (.A(_108_),
    .B(_116_),
    .C(_117_),
    .X(_118_));
 sky130_fd_sc_hd__buf_1 _353_ (.A(_118_),
    .X(_005_));
 sky130_fd_sc_hd__nor2_2 _354_ (.A(_078_),
    .B(_117_),
    .Y(_119_));
 sky130_fd_sc_hd__nand2_2 _355_ (.A(_078_),
    .B(_117_),
    .Y(_120_));
 sky130_fd_sc_hd__and3b_2 _356_ (.A_N(_119_),
    .B(_108_),
    .C(_120_),
    .X(_121_));
 sky130_fd_sc_hd__buf_1 _357_ (.A(_121_),
    .X(_006_));
 sky130_fd_sc_hd__and2_2 _358_ (.A(\user_peripheral.strobe_count[5] ),
    .B(_119_),
    .X(_122_));
 sky130_fd_sc_hd__or2_2 _359_ (.A(\user_peripheral.strobe_count[5] ),
    .B(_119_),
    .X(_123_));
 sky130_fd_sc_hd__and3b_2 _360_ (.A_N(_122_),
    .B(_108_),
    .C(_123_),
    .X(_124_));
 sky130_fd_sc_hd__buf_1 _361_ (.A(_124_),
    .X(_007_));
 sky130_fd_sc_hd__nand2_2 _362_ (.A(\user_peripheral.strobe_count[6] ),
    .B(_122_),
    .Y(_125_));
 sky130_fd_sc_hd__or2_2 _363_ (.A(\user_peripheral.strobe_count[6] ),
    .B(_122_),
    .X(_126_));
 sky130_fd_sc_hd__and3_2 _364_ (.A(_108_),
    .B(_125_),
    .C(_126_),
    .X(_127_));
 sky130_fd_sc_hd__buf_1 _365_ (.A(_127_),
    .X(_008_));
 sky130_fd_sc_hd__xnor2_2 _366_ (.A(\user_peripheral.strobe_count[7] ),
    .B(_125_),
    .Y(_128_));
 sky130_fd_sc_hd__and2_2 _367_ (.A(_108_),
    .B(_128_),
    .X(_129_));
 sky130_fd_sc_hd__buf_1 _368_ (.A(_129_),
    .X(_009_));
 sky130_fd_sc_hd__inv_2 _369_ (.A(clk),
    .Y(_001_));
 sky130_fd_sc_hd__buf_1 _370_ (.A(_107_),
    .X(_130_));
 sky130_fd_sc_hd__a21oi_2 _371_ (.A1(\user_peripheral.pwm_count[0] ),
    .A2(_130_),
    .B1(_077_),
    .Y(_131_));
 sky130_fd_sc_hd__o21a_2 _372_ (.A1(\user_peripheral.pwm_count[0] ),
    .A2(_130_),
    .B1(_131_),
    .X(_018_));
 sky130_fd_sc_hd__and3_2 _373_ (.A(\user_peripheral.pwm_count[1] ),
    .B(\user_peripheral.pwm_count[0] ),
    .C(_107_),
    .X(_132_));
 sky130_fd_sc_hd__a21o_2 _374_ (.A1(\user_peripheral.pwm_count[0] ),
    .A2(_107_),
    .B1(\user_peripheral.pwm_count[1] ),
    .X(_133_));
 sky130_fd_sc_hd__and3b_2 _375_ (.A_N(_132_),
    .B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .C(_133_),
    .X(_134_));
 sky130_fd_sc_hd__buf_1 _376_ (.A(_134_),
    .X(_019_));
 sky130_fd_sc_hd__and3_2 _377_ (.A(\user_peripheral.pwm_count[2] ),
    .B(\user_peripheral.pwm_count[1] ),
    .C(\user_peripheral.pwm_count[0] ),
    .X(_135_));
 sky130_fd_sc_hd__nand2_2 _378_ (.A(_130_),
    .B(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__buf_1 _379_ (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(_137_));
 sky130_fd_sc_hd__o211a_2 _380_ (.A1(\user_peripheral.pwm_count[2] ),
    .A2(_132_),
    .B1(_136_),
    .C1(_137_),
    .X(_020_));
 sky130_fd_sc_hd__inv_2 _381_ (.A(\user_peripheral.pwm_count[3] ),
    .Y(_138_));
 sky130_fd_sc_hd__a31o_2 _382_ (.A1(\user_peripheral.pwm_count[3] ),
    .A2(_130_),
    .A3(_135_),
    .B1(_077_),
    .X(_139_));
 sky130_fd_sc_hd__a21oi_2 _383_ (.A1(_138_),
    .A2(_136_),
    .B1(_139_),
    .Y(_021_));
 sky130_fd_sc_hd__nand2_2 _384_ (.A(\user_peripheral.pwm_count[4] ),
    .B(\user_peripheral.pwm_count[3] ),
    .Y(_140_));
 sky130_fd_sc_hd__a31o_2 _385_ (.A1(\user_peripheral.pwm_count[3] ),
    .A2(_130_),
    .A3(_135_),
    .B1(\user_peripheral.pwm_count[4] ),
    .X(_141_));
 sky130_fd_sc_hd__o211a_2 _386_ (.A1(_136_),
    .A2(_140_),
    .B1(_141_),
    .C1(_137_),
    .X(_022_));
 sky130_fd_sc_hd__buf_1 _387_ (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(_142_));
 sky130_fd_sc_hd__a41o_2 _388_ (.A1(\user_peripheral.pwm_count[4] ),
    .A2(\user_peripheral.pwm_count[3] ),
    .A3(_107_),
    .A4(_135_),
    .B1(\user_peripheral.pwm_count[5] ),
    .X(_143_));
 sky130_fd_sc_hd__and4_2 _389_ (.A(\user_peripheral.pwm_count[5] ),
    .B(\user_peripheral.pwm_count[4] ),
    .C(\user_peripheral.pwm_count[3] ),
    .D(_135_),
    .X(_144_));
 sky130_fd_sc_hd__nand2_2 _390_ (.A(_130_),
    .B(_144_),
    .Y(_145_));
 sky130_fd_sc_hd__and3_2 _391_ (.A(_142_),
    .B(_143_),
    .C(_145_),
    .X(_146_));
 sky130_fd_sc_hd__buf_1 _392_ (.A(_146_),
    .X(_023_));
 sky130_fd_sc_hd__inv_2 _393_ (.A(\user_peripheral.pwm_count[6] ),
    .Y(_147_));
 sky130_fd_sc_hd__a31o_2 _394_ (.A1(\user_peripheral.pwm_count[6] ),
    .A2(_130_),
    .A3(_144_),
    .B1(_077_),
    .X(_148_));
 sky130_fd_sc_hd__a21oi_2 _395_ (.A1(_147_),
    .A2(_145_),
    .B1(_148_),
    .Y(_024_));
 sky130_fd_sc_hd__nand4_2 _396_ (.A(\user_peripheral.pwm_count[7] ),
    .B(\user_peripheral.pwm_count[6] ),
    .C(_107_),
    .D(_144_),
    .Y(_149_));
 sky130_fd_sc_hd__a31o_2 _397_ (.A1(\user_peripheral.pwm_count[6] ),
    .A2(_107_),
    .A3(_144_),
    .B1(\user_peripheral.pwm_count[7] ),
    .X(_150_));
 sky130_fd_sc_hd__and3_2 _398_ (.A(_142_),
    .B(_149_),
    .C(_150_),
    .X(_151_));
 sky130_fd_sc_hd__buf_1 _399_ (.A(_151_),
    .X(_025_));
 sky130_fd_sc_hd__inv_2 _400_ (.A(\user_peripheral.pwm_count[5] ),
    .Y(_152_));
 sky130_fd_sc_hd__inv_2 _401_ (.A(\user_peripheral.pwm_count[2] ),
    .Y(_153_));
 sky130_fd_sc_hd__inv_2 _402_ (.A(\user_peripheral.pwm_count[0] ),
    .Y(_154_));
 sky130_fd_sc_hd__inv_2 _403_ (.A(\user_peripheral.pwm_count[1] ),
    .Y(_155_));
 sky130_fd_sc_hd__or2_2 _404_ (.A(\user_peripheral.pwm_level_0[1] ),
    .B(_155_),
    .X(_156_));
 sky130_fd_sc_hd__a22o_2 _405_ (.A1(\user_peripheral.pwm_level_0[2] ),
    .A2(_153_),
    .B1(_155_),
    .B2(\user_peripheral.pwm_level_0[1] ),
    .X(_157_));
 sky130_fd_sc_hd__a31o_2 _406_ (.A1(\user_peripheral.pwm_level_0[0] ),
    .A2(_154_),
    .A3(_156_),
    .B1(_157_),
    .X(_158_));
 sky130_fd_sc_hd__o221a_2 _407_ (.A1(\user_peripheral.pwm_level_0[3] ),
    .A2(_138_),
    .B1(_153_),
    .B2(\user_peripheral.pwm_level_0[2] ),
    .C1(_158_),
    .X(_159_));
 sky130_fd_sc_hd__inv_2 _408_ (.A(\user_peripheral.pwm_count[4] ),
    .Y(_160_));
 sky130_fd_sc_hd__a22o_2 _409_ (.A1(\user_peripheral.pwm_level_0[4] ),
    .A2(_160_),
    .B1(_138_),
    .B2(\user_peripheral.pwm_level_0[3] ),
    .X(_161_));
 sky130_fd_sc_hd__or2_2 _410_ (.A(\user_peripheral.pwm_level_0[4] ),
    .B(_160_),
    .X(_162_));
 sky130_fd_sc_hd__o221a_2 _411_ (.A1(\user_peripheral.pwm_level_0[5] ),
    .A2(_152_),
    .B1(_159_),
    .B2(_161_),
    .C1(_162_),
    .X(_163_));
 sky130_fd_sc_hd__a22o_2 _412_ (.A1(\user_peripheral.pwm_level_0[6] ),
    .A2(_147_),
    .B1(_152_),
    .B2(\user_peripheral.pwm_level_0[5] ),
    .X(_164_));
 sky130_fd_sc_hd__inv_2 _413_ (.A(\user_peripheral.pwm_count[7] ),
    .Y(_165_));
 sky130_fd_sc_hd__o22a_2 _414_ (.A1(\user_peripheral.pwm_level_0[7] ),
    .A2(_165_),
    .B1(_147_),
    .B2(\user_peripheral.pwm_level_0[6] ),
    .X(_166_));
 sky130_fd_sc_hd__o21a_2 _415_ (.A1(_163_),
    .A2(_164_),
    .B1(_166_),
    .X(_167_));
 sky130_fd_sc_hd__a22o_2 _416_ (.A1(\user_peripheral.pwm_level_0[7] ),
    .A2(_165_),
    .B1(_100_),
    .B2(_106_),
    .X(_168_));
 sky130_fd_sc_hd__o221a_2 _417_ (.A1(uo_out[7]),
    .A2(_130_),
    .B1(_167_),
    .B2(_168_),
    .C1(_142_),
    .X(_026_));
 sky130_fd_sc_hd__or2_2 _418_ (.A(\user_peripheral.pwm_level_1[1] ),
    .B(_155_),
    .X(_169_));
 sky130_fd_sc_hd__a22o_2 _419_ (.A1(\user_peripheral.pwm_level_1[2] ),
    .A2(_153_),
    .B1(_155_),
    .B2(\user_peripheral.pwm_level_1[1] ),
    .X(_170_));
 sky130_fd_sc_hd__a31o_2 _420_ (.A1(\user_peripheral.pwm_level_1[0] ),
    .A2(_154_),
    .A3(_169_),
    .B1(_170_),
    .X(_171_));
 sky130_fd_sc_hd__o221a_2 _421_ (.A1(\user_peripheral.pwm_level_1[3] ),
    .A2(_138_),
    .B1(_153_),
    .B2(\user_peripheral.pwm_level_1[2] ),
    .C1(_171_),
    .X(_172_));
 sky130_fd_sc_hd__a22o_2 _422_ (.A1(\user_peripheral.pwm_level_1[4] ),
    .A2(_160_),
    .B1(_138_),
    .B2(\user_peripheral.pwm_level_1[3] ),
    .X(_173_));
 sky130_fd_sc_hd__or2_2 _423_ (.A(\user_peripheral.pwm_level_1[4] ),
    .B(_160_),
    .X(_174_));
 sky130_fd_sc_hd__o221a_2 _424_ (.A1(\user_peripheral.pwm_level_1[5] ),
    .A2(_152_),
    .B1(_172_),
    .B2(_173_),
    .C1(_174_),
    .X(_175_));
 sky130_fd_sc_hd__a22o_2 _425_ (.A1(\user_peripheral.pwm_level_1[6] ),
    .A2(_147_),
    .B1(_152_),
    .B2(\user_peripheral.pwm_level_1[5] ),
    .X(_176_));
 sky130_fd_sc_hd__o22a_2 _426_ (.A1(\user_peripheral.pwm_level_1[7] ),
    .A2(_165_),
    .B1(_147_),
    .B2(\user_peripheral.pwm_level_1[6] ),
    .X(_177_));
 sky130_fd_sc_hd__o21a_2 _427_ (.A1(_175_),
    .A2(_176_),
    .B1(_177_),
    .X(_178_));
 sky130_fd_sc_hd__inv_2 _428_ (.A(\user_peripheral.pwm_level_1[7] ),
    .Y(_179_));
 sky130_fd_sc_hd__o21ai_2 _429_ (.A1(_179_),
    .A2(\user_peripheral.pwm_count[7] ),
    .B1(_130_),
    .Y(_180_));
 sky130_fd_sc_hd__o221a_2 _430_ (.A1(uo_out[6]),
    .A2(_130_),
    .B1(_178_),
    .B2(_180_),
    .C1(_142_),
    .X(_027_));
 sky130_fd_sc_hd__or4b_2 _431_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D_N(\i_spi_reg.buffer_counter[3] ),
    .X(_181_));
 sky130_fd_sc_hd__inv_2 _432_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .Y(_182_));
 sky130_fd_sc_hd__or2_2 _433_ (.A(_182_),
    .B(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .X(_183_));
 sky130_fd_sc_hd__and3_2 _434_ (.A(\i_spi_reg.state[0] ),
    .B(_181_),
    .C(_183_),
    .X(_184_));
 sky130_fd_sc_hd__or2_2 _435_ (.A(\i_spi_reg.state[1] ),
    .B(\i_spi_reg.state[0] ),
    .X(_185_));
 sky130_fd_sc_hd__or2_2 _436_ (.A(\i_spi_reg.state[2] ),
    .B(_185_),
    .X(_186_));
 sky130_fd_sc_hd__inv_2 _437_ (.A(_186_),
    .Y(_187_));
 sky130_fd_sc_hd__and3b_2 _438_ (.A_N(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.reg_rw ),
    .C(_074_),
    .X(_188_));
 sky130_fd_sc_hd__a21oi_2 _439_ (.A1(_182_),
    .A2(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .B1(_185_),
    .Y(_189_));
 sky130_fd_sc_hd__or4_2 _440_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(\i_spi_reg.buffer_counter[3] ),
    .X(_190_));
 sky130_fd_sc_hd__and3_2 _441_ (.A(\i_spi_reg.state[2] ),
    .B(_072_),
    .C(_190_),
    .X(_191_));
 sky130_fd_sc_hd__o21bai_2 _442_ (.A1(\i_spi_reg.state[2] ),
    .A2(_189_),
    .B1_N(_191_),
    .Y(_192_));
 sky130_fd_sc_hd__o31a_2 _443_ (.A1(_184_),
    .A2(_187_),
    .A3(_188_),
    .B1(_192_),
    .X(_028_));
 sky130_fd_sc_hd__and4bb_2 _444_ (.A_N(\i_spi_reg.state[2] ),
    .B_N(\i_spi_reg.state[1] ),
    .C(\i_spi_reg.state[0] ),
    .D(_075_),
    .X(_193_));
 sky130_fd_sc_hd__a211o_2 _445_ (.A1(_074_),
    .A2(_184_),
    .B1(_188_),
    .C1(_193_),
    .X(_029_));
 sky130_fd_sc_hd__nor2_2 _446_ (.A(_185_),
    .B(_190_),
    .Y(_194_));
 sky130_fd_sc_hd__buf_1 _447_ (.A(_194_),
    .X(_195_));
 sky130_fd_sc_hd__nor2_2 _448_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.reg_rw ),
    .Y(_196_));
 sky130_fd_sc_hd__a32o_2 _449_ (.A1(\i_spi_reg.state[2] ),
    .A2(_181_),
    .A3(_183_),
    .B1(_196_),
    .B2(_074_),
    .X(_197_));
 sky130_fd_sc_hd__a22o_2 _450_ (.A1(\i_spi_reg.state[2] ),
    .A2(_195_),
    .B1(_197_),
    .B2(_192_),
    .X(_030_));
 sky130_fd_sc_hd__buf_1 _451_ (.A(\i_spi_reg.addr[1] ),
    .X(_198_));
 sky130_fd_sc_hd__nor3_2 _452_ (.A(\i_spi_reg.addr[0] ),
    .B(\i_spi_reg.addr[3] ),
    .C(\i_spi_reg.addr[2] ),
    .Y(_199_));
 sky130_fd_sc_hd__buf_1 _453_ (.A(_199_),
    .X(_200_));
 sky130_fd_sc_hd__and2b_2 _454_ (.A_N(_198_),
    .B(_200_),
    .X(_201_));
 sky130_fd_sc_hd__nand2_2 _455_ (.A(\i_spi_reg.dv ),
    .B(_201_),
    .Y(_202_));
 sky130_fd_sc_hd__and2_2 _456_ (.A(\i_spi_reg.dv ),
    .B(_201_),
    .X(_203_));
 sky130_fd_sc_hd__or2_2 _457_ (.A(\user_peripheral.pwm_level_0[0] ),
    .B(_203_),
    .X(_204_));
 sky130_fd_sc_hd__o211a_2 _458_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_202_),
    .B1(_204_),
    .C1(_137_),
    .X(_031_));
 sky130_fd_sc_hd__or2_2 _459_ (.A(\user_peripheral.pwm_level_0[1] ),
    .B(_203_),
    .X(_205_));
 sky130_fd_sc_hd__o211a_2 _460_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_202_),
    .B1(_205_),
    .C1(_137_),
    .X(_032_));
 sky130_fd_sc_hd__or2_2 _461_ (.A(\user_peripheral.pwm_level_0[2] ),
    .B(_203_),
    .X(_206_));
 sky130_fd_sc_hd__o211a_2 _462_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_202_),
    .B1(_206_),
    .C1(_137_),
    .X(_033_));
 sky130_fd_sc_hd__or2_2 _463_ (.A(\user_peripheral.pwm_level_0[3] ),
    .B(_203_),
    .X(_207_));
 sky130_fd_sc_hd__o211a_2 _464_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_202_),
    .B1(_207_),
    .C1(_137_),
    .X(_034_));
 sky130_fd_sc_hd__or2_2 _465_ (.A(\user_peripheral.pwm_level_0[4] ),
    .B(_203_),
    .X(_208_));
 sky130_fd_sc_hd__o211a_2 _466_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_202_),
    .B1(_208_),
    .C1(_137_),
    .X(_035_));
 sky130_fd_sc_hd__or2_2 _467_ (.A(\user_peripheral.pwm_level_0[5] ),
    .B(_203_),
    .X(_209_));
 sky130_fd_sc_hd__o211a_2 _468_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_202_),
    .B1(_209_),
    .C1(_137_),
    .X(_036_));
 sky130_fd_sc_hd__or2_2 _469_ (.A(\user_peripheral.pwm_level_0[6] ),
    .B(_203_),
    .X(_210_));
 sky130_fd_sc_hd__o211a_2 _470_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_202_),
    .B1(_210_),
    .C1(_137_),
    .X(_037_));
 sky130_fd_sc_hd__or2_2 _471_ (.A(\user_peripheral.pwm_level_0[7] ),
    .B(_203_),
    .X(_211_));
 sky130_fd_sc_hd__o211a_2 _472_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_202_),
    .B1(_211_),
    .C1(_137_),
    .X(_038_));
 sky130_fd_sc_hd__nor4b_2 _473_ (.A(\i_spi_reg.addr[1] ),
    .B(\i_spi_reg.addr[3] ),
    .C(\i_spi_reg.addr[2] ),
    .D_N(\i_spi_reg.addr[0] ),
    .Y(_212_));
 sky130_fd_sc_hd__nand2_2 _474_ (.A(\i_spi_reg.dv ),
    .B(_212_),
    .Y(_213_));
 sky130_fd_sc_hd__and2_2 _475_ (.A(\i_spi_reg.dv ),
    .B(_212_),
    .X(_214_));
 sky130_fd_sc_hd__or2_2 _476_ (.A(\user_peripheral.pwm_level_1[0] ),
    .B(_214_),
    .X(_215_));
 sky130_fd_sc_hd__buf_1 _477_ (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(_216_));
 sky130_fd_sc_hd__o211a_2 _478_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_213_),
    .B1(_215_),
    .C1(_216_),
    .X(_039_));
 sky130_fd_sc_hd__or2_2 _479_ (.A(\user_peripheral.pwm_level_1[1] ),
    .B(_214_),
    .X(_217_));
 sky130_fd_sc_hd__o211a_2 _480_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_213_),
    .B1(_217_),
    .C1(_216_),
    .X(_040_));
 sky130_fd_sc_hd__or2_2 _481_ (.A(\user_peripheral.pwm_level_1[2] ),
    .B(_214_),
    .X(_218_));
 sky130_fd_sc_hd__o211a_2 _482_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_213_),
    .B1(_218_),
    .C1(_216_),
    .X(_041_));
 sky130_fd_sc_hd__or2_2 _483_ (.A(\user_peripheral.pwm_level_1[3] ),
    .B(_214_),
    .X(_219_));
 sky130_fd_sc_hd__o211a_2 _484_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_213_),
    .B1(_219_),
    .C1(_216_),
    .X(_042_));
 sky130_fd_sc_hd__or2_2 _485_ (.A(\user_peripheral.pwm_level_1[4] ),
    .B(_214_),
    .X(_220_));
 sky130_fd_sc_hd__o211a_2 _486_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_213_),
    .B1(_220_),
    .C1(_216_),
    .X(_043_));
 sky130_fd_sc_hd__or2_2 _487_ (.A(\user_peripheral.pwm_level_1[5] ),
    .B(_214_),
    .X(_221_));
 sky130_fd_sc_hd__o211a_2 _488_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_213_),
    .B1(_221_),
    .C1(_216_),
    .X(_044_));
 sky130_fd_sc_hd__or2_2 _489_ (.A(\user_peripheral.pwm_level_1[6] ),
    .B(_214_),
    .X(_222_));
 sky130_fd_sc_hd__o211a_2 _490_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_213_),
    .B1(_222_),
    .C1(_216_),
    .X(_045_));
 sky130_fd_sc_hd__nand2_2 _491_ (.A(_179_),
    .B(_213_),
    .Y(_223_));
 sky130_fd_sc_hd__o211a_2 _492_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_213_),
    .B1(_223_),
    .C1(_216_),
    .X(_046_));
 sky130_fd_sc_hd__nand3_2 _493_ (.A(_198_),
    .B(\i_spi_reg.dv ),
    .C(_200_),
    .Y(_224_));
 sky130_fd_sc_hd__buf_1 _494_ (.A(_224_),
    .X(_225_));
 sky130_fd_sc_hd__nand2_2 _495_ (.A(_101_),
    .B(_225_),
    .Y(_226_));
 sky130_fd_sc_hd__o211a_2 _496_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_225_),
    .B1(_226_),
    .C1(_216_),
    .X(_047_));
 sky130_fd_sc_hd__and3_2 _497_ (.A(_198_),
    .B(\i_spi_reg.dv ),
    .C(_200_),
    .X(_227_));
 sky130_fd_sc_hd__or2_2 _498_ (.A(\user_peripheral.strobe_period[1] ),
    .B(_227_),
    .X(_228_));
 sky130_fd_sc_hd__o211a_2 _499_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_225_),
    .B1(_228_),
    .C1(_216_),
    .X(_048_));
 sky130_fd_sc_hd__or2_2 _500_ (.A(\user_peripheral.strobe_period[2] ),
    .B(_227_),
    .X(_229_));
 sky130_fd_sc_hd__o211a_2 _501_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_225_),
    .B1(_229_),
    .C1(_142_),
    .X(_049_));
 sky130_fd_sc_hd__or2_2 _502_ (.A(\user_peripheral.strobe_period[3] ),
    .B(_227_),
    .X(_230_));
 sky130_fd_sc_hd__o211a_2 _503_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_225_),
    .B1(_230_),
    .C1(_142_),
    .X(_050_));
 sky130_fd_sc_hd__or2_2 _504_ (.A(\user_peripheral.strobe_period[4] ),
    .B(_227_),
    .X(_231_));
 sky130_fd_sc_hd__o211a_2 _505_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_225_),
    .B1(_231_),
    .C1(_142_),
    .X(_051_));
 sky130_fd_sc_hd__or2_2 _506_ (.A(\user_peripheral.strobe_period[5] ),
    .B(_227_),
    .X(_232_));
 sky130_fd_sc_hd__o211a_2 _507_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_225_),
    .B1(_232_),
    .C1(_142_),
    .X(_052_));
 sky130_fd_sc_hd__nand2_2 _508_ (.A(_083_),
    .B(_225_),
    .Y(_233_));
 sky130_fd_sc_hd__o211a_2 _509_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_225_),
    .B1(_233_),
    .C1(_142_),
    .X(_053_));
 sky130_fd_sc_hd__nand2_2 _510_ (.A(_085_),
    .B(_224_),
    .Y(_234_));
 sky130_fd_sc_hd__o211a_2 _511_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_225_),
    .B1(_234_),
    .C1(_142_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_2 _512_ (.A0(\i_spi_reg.addr[0] ),
    .A1(\i_spi_reg.reg_data_o[0] ),
    .S(_193_),
    .X(_235_));
 sky130_fd_sc_hd__buf_1 _513_ (.A(_235_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_2 _514_ (.A0(_198_),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(_193_),
    .X(_236_));
 sky130_fd_sc_hd__buf_1 _515_ (.A(_236_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_2 _516_ (.A0(\i_spi_reg.addr[2] ),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_193_),
    .X(_237_));
 sky130_fd_sc_hd__buf_1 _517_ (.A(_237_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_2 _518_ (.A0(\i_spi_reg.addr[3] ),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_193_),
    .X(_238_));
 sky130_fd_sc_hd__buf_1 _519_ (.A(_238_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_2 _520_ (.A0(\i_spi_reg.reg_rw ),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_193_),
    .X(_239_));
 sky130_fd_sc_hd__buf_1 _521_ (.A(_239_),
    .X(_059_));
 sky130_fd_sc_hd__or4_2 _522_ (.A(\i_spi_reg.addr[0] ),
    .B(\i_spi_reg.addr[1] ),
    .C(\i_spi_reg.addr[3] ),
    .D(\i_spi_reg.addr[2] ),
    .X(_240_));
 sky130_fd_sc_hd__buf_1 _523_ (.A(_240_),
    .X(_241_));
 sky130_fd_sc_hd__nand2_2 _524_ (.A(_101_),
    .B(_198_),
    .Y(_242_));
 sky130_fd_sc_hd__a22o_2 _525_ (.A1(\user_peripheral.pwm_level_1[0] ),
    .A2(_212_),
    .B1(_242_),
    .B2(_199_),
    .X(_243_));
 sky130_fd_sc_hd__o211a_2 _526_ (.A1(\user_peripheral.pwm_level_0[0] ),
    .A2(_241_),
    .B1(_243_),
    .C1(_194_),
    .X(_244_));
 sky130_fd_sc_hd__a22o_2 _527_ (.A1(\i_spi_reg.spi_mosi ),
    .A2(_185_),
    .B1(_244_),
    .B2(\i_spi_reg.state[2] ),
    .X(_245_));
 sky130_fd_sc_hd__or3b_2 _528_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .C_N(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_246_));
 sky130_fd_sc_hd__inv_2 _529_ (.A(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .Y(_247_));
 sky130_fd_sc_hd__or3_2 _530_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(_247_),
    .C(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_248_));
 sky130_fd_sc_hd__a22o_2 _531_ (.A1(_185_),
    .A2(_246_),
    .B1(_248_),
    .B2(_191_),
    .X(_249_));
 sky130_fd_sc_hd__mux2_2 _532_ (.A0(_245_),
    .A1(\i_spi_reg.reg_data_o[0] ),
    .S(_249_),
    .X(_250_));
 sky130_fd_sc_hd__buf_1 _533_ (.A(_250_),
    .X(_060_));
 sky130_fd_sc_hd__or2b_2 _534_ (.A(\user_peripheral.strobe_period[1] ),
    .B_N(_198_),
    .X(_251_));
 sky130_fd_sc_hd__a22o_2 _535_ (.A1(\user_peripheral.pwm_level_1[1] ),
    .A2(_212_),
    .B1(_251_),
    .B2(_200_),
    .X(_252_));
 sky130_fd_sc_hd__o21ai_2 _536_ (.A1(\user_peripheral.pwm_level_0[1] ),
    .A2(_241_),
    .B1(_252_),
    .Y(_253_));
 sky130_fd_sc_hd__nand2_2 _537_ (.A(_195_),
    .B(_253_),
    .Y(_254_));
 sky130_fd_sc_hd__o211a_2 _538_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_195_),
    .B1(_254_),
    .C1(_186_),
    .X(_255_));
 sky130_fd_sc_hd__mux2_2 _539_ (.A0(_255_),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(_249_),
    .X(_256_));
 sky130_fd_sc_hd__buf_1 _540_ (.A(_256_),
    .X(_061_));
 sky130_fd_sc_hd__or2b_2 _541_ (.A(\user_peripheral.strobe_period[2] ),
    .B_N(_198_),
    .X(_257_));
 sky130_fd_sc_hd__a22o_2 _542_ (.A1(\user_peripheral.pwm_level_1[2] ),
    .A2(_212_),
    .B1(_257_),
    .B2(_200_),
    .X(_258_));
 sky130_fd_sc_hd__o21ai_2 _543_ (.A1(\user_peripheral.pwm_level_0[2] ),
    .A2(_241_),
    .B1(_258_),
    .Y(_259_));
 sky130_fd_sc_hd__nand2_2 _544_ (.A(_195_),
    .B(_259_),
    .Y(_260_));
 sky130_fd_sc_hd__o211a_2 _545_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_195_),
    .B1(_260_),
    .C1(_186_),
    .X(_261_));
 sky130_fd_sc_hd__mux2_2 _546_ (.A0(_261_),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_249_),
    .X(_262_));
 sky130_fd_sc_hd__buf_1 _547_ (.A(_262_),
    .X(_062_));
 sky130_fd_sc_hd__or2b_2 _548_ (.A(\user_peripheral.strobe_period[3] ),
    .B_N(_198_),
    .X(_263_));
 sky130_fd_sc_hd__a22o_2 _549_ (.A1(\user_peripheral.pwm_level_1[3] ),
    .A2(_212_),
    .B1(_263_),
    .B2(_200_),
    .X(_264_));
 sky130_fd_sc_hd__o21ai_2 _550_ (.A1(\user_peripheral.pwm_level_0[3] ),
    .A2(_241_),
    .B1(_264_),
    .Y(_265_));
 sky130_fd_sc_hd__nand2_2 _551_ (.A(_194_),
    .B(_265_),
    .Y(_266_));
 sky130_fd_sc_hd__o211a_2 _552_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_195_),
    .B1(_266_),
    .C1(_186_),
    .X(_267_));
 sky130_fd_sc_hd__mux2_2 _553_ (.A0(_267_),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_249_),
    .X(_268_));
 sky130_fd_sc_hd__buf_1 _554_ (.A(_268_),
    .X(_063_));
 sky130_fd_sc_hd__or2b_2 _555_ (.A(\user_peripheral.strobe_period[4] ),
    .B_N(\i_spi_reg.addr[1] ),
    .X(_269_));
 sky130_fd_sc_hd__a22o_2 _556_ (.A1(\user_peripheral.pwm_level_1[4] ),
    .A2(_212_),
    .B1(_269_),
    .B2(_200_),
    .X(_270_));
 sky130_fd_sc_hd__o21ai_2 _557_ (.A1(\user_peripheral.pwm_level_0[4] ),
    .A2(_241_),
    .B1(_270_),
    .Y(_271_));
 sky130_fd_sc_hd__nand2_2 _558_ (.A(_194_),
    .B(_271_),
    .Y(_272_));
 sky130_fd_sc_hd__o211a_2 _559_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_195_),
    .B1(_272_),
    .C1(_186_),
    .X(_273_));
 sky130_fd_sc_hd__mux2_2 _560_ (.A0(_273_),
    .A1(\i_spi_reg.reg_data_o[4] ),
    .S(_249_),
    .X(_274_));
 sky130_fd_sc_hd__buf_1 _561_ (.A(_274_),
    .X(_064_));
 sky130_fd_sc_hd__or2b_2 _562_ (.A(\user_peripheral.strobe_period[5] ),
    .B_N(\i_spi_reg.addr[1] ),
    .X(_275_));
 sky130_fd_sc_hd__a22o_2 _563_ (.A1(\user_peripheral.pwm_level_1[5] ),
    .A2(_212_),
    .B1(_275_),
    .B2(_200_),
    .X(_276_));
 sky130_fd_sc_hd__o21ai_2 _564_ (.A1(\user_peripheral.pwm_level_0[5] ),
    .A2(_241_),
    .B1(_276_),
    .Y(_277_));
 sky130_fd_sc_hd__nand2_2 _565_ (.A(_194_),
    .B(_277_),
    .Y(_278_));
 sky130_fd_sc_hd__o211a_2 _566_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_195_),
    .B1(_278_),
    .C1(_186_),
    .X(_279_));
 sky130_fd_sc_hd__mux2_2 _567_ (.A0(_279_),
    .A1(\i_spi_reg.reg_data_o[5] ),
    .S(_249_),
    .X(_280_));
 sky130_fd_sc_hd__buf_1 _568_ (.A(_280_),
    .X(_065_));
 sky130_fd_sc_hd__nand2_2 _569_ (.A(_083_),
    .B(_198_),
    .Y(_281_));
 sky130_fd_sc_hd__a22o_2 _570_ (.A1(\user_peripheral.pwm_level_1[6] ),
    .A2(_212_),
    .B1(_281_),
    .B2(_200_),
    .X(_282_));
 sky130_fd_sc_hd__o21ai_2 _571_ (.A1(\user_peripheral.pwm_level_0[6] ),
    .A2(_241_),
    .B1(_282_),
    .Y(_283_));
 sky130_fd_sc_hd__nand2_2 _572_ (.A(_194_),
    .B(_283_),
    .Y(_284_));
 sky130_fd_sc_hd__o211a_2 _573_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_195_),
    .B1(_284_),
    .C1(_186_),
    .X(_285_));
 sky130_fd_sc_hd__mux2_2 _574_ (.A0(_285_),
    .A1(\i_spi_reg.reg_data_o[6] ),
    .S(_249_),
    .X(_286_));
 sky130_fd_sc_hd__buf_1 _575_ (.A(_286_),
    .X(_066_));
 sky130_fd_sc_hd__nand2_2 _576_ (.A(_085_),
    .B(_198_),
    .Y(_287_));
 sky130_fd_sc_hd__a22o_2 _577_ (.A1(\user_peripheral.pwm_level_1[7] ),
    .A2(_212_),
    .B1(_287_),
    .B2(_200_),
    .X(_288_));
 sky130_fd_sc_hd__o21ai_2 _578_ (.A1(\user_peripheral.pwm_level_0[7] ),
    .A2(_241_),
    .B1(_288_),
    .Y(_289_));
 sky130_fd_sc_hd__nand2_2 _579_ (.A(_194_),
    .B(_289_),
    .Y(_290_));
 sky130_fd_sc_hd__o211a_2 _580_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_195_),
    .B1(_290_),
    .C1(_186_),
    .X(_291_));
 sky130_fd_sc_hd__mux2_2 _581_ (.A0(_291_),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_249_),
    .X(_292_));
 sky130_fd_sc_hd__buf_1 _582_ (.A(_292_),
    .X(_067_));
 sky130_fd_sc_hd__nor2_2 _583_ (.A(_075_),
    .B(_246_),
    .Y(_293_));
 sky130_fd_sc_hd__mux2_2 _584_ (.A0(_293_),
    .A1(_246_),
    .S(\i_spi_reg.buffer_counter[0] ),
    .X(_294_));
 sky130_fd_sc_hd__buf_1 _585_ (.A(_294_),
    .X(_068_));
 sky130_fd_sc_hd__and3_2 _586_ (.A(_182_),
    .B(_247_),
    .C(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_295_));
 sky130_fd_sc_hd__and3_2 _587_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(_295_),
    .X(_296_));
 sky130_fd_sc_hd__a21oi_2 _588_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_295_),
    .B1(\i_spi_reg.buffer_counter[1] ),
    .Y(_297_));
 sky130_fd_sc_hd__nor2_2 _589_ (.A(_296_),
    .B(_297_),
    .Y(_069_));
 sky130_fd_sc_hd__nand4_2 _590_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(_295_),
    .Y(_298_));
 sky130_fd_sc_hd__o21a_2 _591_ (.A1(\i_spi_reg.buffer_counter[2] ),
    .A2(_296_),
    .B1(_298_),
    .X(_070_));
 sky130_fd_sc_hd__nand2_2 _592_ (.A(\i_spi_reg.buffer_counter[3] ),
    .B(_298_),
    .Y(_299_));
 sky130_fd_sc_hd__or2_2 _593_ (.A(\i_spi_reg.buffer_counter[3] ),
    .B(_298_),
    .X(_300_));
 sky130_fd_sc_hd__a21oi_2 _594_ (.A1(_299_),
    .A2(_300_),
    .B1(_075_),
    .Y(_071_));
 sky130_fd_sc_hd__dfxtp_2 _595_ (.CLK(clk),
    .D(_002_),
    .Q(\user_peripheral.strobe_count[0] ));
 sky130_fd_sc_hd__dfxtp_2 _596_ (.CLK(clk),
    .D(_003_),
    .Q(\user_peripheral.strobe_count[1] ));
 sky130_fd_sc_hd__dfxtp_2 _597_ (.CLK(clk),
    .D(_004_),
    .Q(\user_peripheral.strobe_count[2] ));
 sky130_fd_sc_hd__dfxtp_2 _598_ (.CLK(clk),
    .D(_005_),
    .Q(\user_peripheral.strobe_count[3] ));
 sky130_fd_sc_hd__dfxtp_2 _599_ (.CLK(clk),
    .D(_006_),
    .Q(\user_peripheral.strobe_count[4] ));
 sky130_fd_sc_hd__dfxtp_2 _600_ (.CLK(clk),
    .D(_007_),
    .Q(\user_peripheral.strobe_count[5] ));
 sky130_fd_sc_hd__dfxtp_2 _601_ (.CLK(clk),
    .D(_008_),
    .Q(\user_peripheral.strobe_count[6] ));
 sky130_fd_sc_hd__dfxtp_2 _602_ (.CLK(clk),
    .D(_009_),
    .Q(\user_peripheral.strobe_count[7] ));
 sky130_fd_sc_hd__dfxtp_2 _603_ (.CLK(clk),
    .D(_010_),
    .Q(\user_peripheral.strobe_count[8] ));
 sky130_fd_sc_hd__dfxtp_2 _604_ (.CLK(clk),
    .D(_011_),
    .Q(\user_peripheral.strobe_count[9] ));
 sky130_fd_sc_hd__dfxtp_2 _605_ (.CLK(clk),
    .D(_012_),
    .Q(\user_peripheral.strobe_count[10] ));
 sky130_fd_sc_hd__dfxtp_2 _606_ (.CLK(clk),
    .D(_013_),
    .Q(\user_peripheral.strobe_count[11] ));
 sky130_fd_sc_hd__dfxtp_2 _607_ (.CLK(clk),
    .D(_014_),
    .Q(\user_peripheral.strobe_count[12] ));
 sky130_fd_sc_hd__dfxtp_2 _608_ (.CLK(clk),
    .D(_015_),
    .Q(\user_peripheral.strobe_count[13] ));
 sky130_fd_sc_hd__dfxtp_2 _609_ (.CLK(clk),
    .D(_016_),
    .Q(\user_peripheral.strobe_count[14] ));
 sky130_fd_sc_hd__dfxtp_2 _610_ (.CLK(clk),
    .D(_017_),
    .Q(\user_peripheral.strobe_count[15] ));
 sky130_fd_sc_hd__dfxtp_2 _611_ (.CLK(clk),
    .D(uio_in[6]),
    .Q(\synchronizer_spi_mosi_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_2 _612_ (.CLK(clk),
    .D(\synchronizer_spi_mosi_inst.data_sync[1] ),
    .Q(\i_spi_reg.spi_mosi ));
 sky130_fd_sc_hd__dfxtp_2 _613_ (.CLK(_001_),
    .D(rst_n),
    .Q(\i_spi_reg.falling_edge_detector_sof.rstb ));
 sky130_fd_sc_hd__dfxtp_2 _614_ (.CLK(clk),
    .D(uio_in[5]),
    .Q(\synchronizer_spi_clk_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_2 _615_ (.CLK(clk),
    .D(\synchronizer_spi_clk_inst.data_sync[1] ),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data ));
 sky130_fd_sc_hd__dfxtp_2 _616_ (.CLK(clk),
    .D(uio_in[4]),
    .Q(\synchronizer_spi_cs_n_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_2 _617_ (.CLK(clk),
    .D(\synchronizer_spi_cs_n_inst.data_sync[1] ),
    .Q(\i_spi_reg.falling_edge_detector_sof.data ));
 sky130_fd_sc_hd__dfxtp_2 _618_ (.CLK(clk),
    .D(_018_),
    .Q(\user_peripheral.pwm_count[0] ));
 sky130_fd_sc_hd__dfxtp_2 _619_ (.CLK(clk),
    .D(_019_),
    .Q(\user_peripheral.pwm_count[1] ));
 sky130_fd_sc_hd__dfxtp_2 _620_ (.CLK(clk),
    .D(_020_),
    .Q(\user_peripheral.pwm_count[2] ));
 sky130_fd_sc_hd__dfxtp_2 _621_ (.CLK(clk),
    .D(_021_),
    .Q(\user_peripheral.pwm_count[3] ));
 sky130_fd_sc_hd__dfxtp_2 _622_ (.CLK(clk),
    .D(_022_),
    .Q(\user_peripheral.pwm_count[4] ));
 sky130_fd_sc_hd__dfxtp_2 _623_ (.CLK(clk),
    .D(_023_),
    .Q(\user_peripheral.pwm_count[5] ));
 sky130_fd_sc_hd__dfxtp_2 _624_ (.CLK(clk),
    .D(_024_),
    .Q(\user_peripheral.pwm_count[6] ));
 sky130_fd_sc_hd__dfxtp_2 _625_ (.CLK(clk),
    .D(_025_),
    .Q(\user_peripheral.pwm_count[7] ));
 sky130_fd_sc_hd__dfxtp_2 _626_ (.CLK(clk),
    .D(_026_),
    .Q(uo_out[7]));
 sky130_fd_sc_hd__dfxtp_2 _627_ (.CLK(clk),
    .D(_027_),
    .Q(uo_out[6]));
 sky130_fd_sc_hd__dfrtp_2 _628_ (.CLK(clk),
    .D(_028_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _629_ (.CLK(clk),
    .D(_029_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _630_ (.CLK(clk),
    .D(_030_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.state[2] ));
 sky130_fd_sc_hd__dfxtp_2 _631_ (.CLK(clk),
    .D(_031_),
    .Q(\user_peripheral.pwm_level_0[0] ));
 sky130_fd_sc_hd__dfxtp_2 _632_ (.CLK(clk),
    .D(_032_),
    .Q(\user_peripheral.pwm_level_0[1] ));
 sky130_fd_sc_hd__dfxtp_2 _633_ (.CLK(clk),
    .D(_033_),
    .Q(\user_peripheral.pwm_level_0[2] ));
 sky130_fd_sc_hd__dfxtp_2 _634_ (.CLK(clk),
    .D(_034_),
    .Q(\user_peripheral.pwm_level_0[3] ));
 sky130_fd_sc_hd__dfxtp_2 _635_ (.CLK(clk),
    .D(_035_),
    .Q(\user_peripheral.pwm_level_0[4] ));
 sky130_fd_sc_hd__dfxtp_2 _636_ (.CLK(clk),
    .D(_036_),
    .Q(\user_peripheral.pwm_level_0[5] ));
 sky130_fd_sc_hd__dfxtp_2 _637_ (.CLK(clk),
    .D(_037_),
    .Q(\user_peripheral.pwm_level_0[6] ));
 sky130_fd_sc_hd__dfxtp_2 _638_ (.CLK(clk),
    .D(_038_),
    .Q(\user_peripheral.pwm_level_0[7] ));
 sky130_fd_sc_hd__dfxtp_2 _639_ (.CLK(clk),
    .D(_039_),
    .Q(\user_peripheral.pwm_level_1[0] ));
 sky130_fd_sc_hd__dfxtp_2 _640_ (.CLK(clk),
    .D(_040_),
    .Q(\user_peripheral.pwm_level_1[1] ));
 sky130_fd_sc_hd__dfxtp_2 _641_ (.CLK(clk),
    .D(_041_),
    .Q(\user_peripheral.pwm_level_1[2] ));
 sky130_fd_sc_hd__dfxtp_2 _642_ (.CLK(clk),
    .D(_042_),
    .Q(\user_peripheral.pwm_level_1[3] ));
 sky130_fd_sc_hd__dfxtp_2 _643_ (.CLK(clk),
    .D(_043_),
    .Q(\user_peripheral.pwm_level_1[4] ));
 sky130_fd_sc_hd__dfxtp_2 _644_ (.CLK(clk),
    .D(_044_),
    .Q(\user_peripheral.pwm_level_1[5] ));
 sky130_fd_sc_hd__dfxtp_2 _645_ (.CLK(clk),
    .D(_045_),
    .Q(\user_peripheral.pwm_level_1[6] ));
 sky130_fd_sc_hd__dfxtp_2 _646_ (.CLK(clk),
    .D(_046_),
    .Q(\user_peripheral.pwm_level_1[7] ));
 sky130_fd_sc_hd__dfxtp_2 _647_ (.CLK(clk),
    .D(_047_),
    .Q(\user_peripheral.strobe_period[0] ));
 sky130_fd_sc_hd__dfxtp_2 _648_ (.CLK(clk),
    .D(_048_),
    .Q(\user_peripheral.strobe_period[1] ));
 sky130_fd_sc_hd__dfxtp_2 _649_ (.CLK(clk),
    .D(_049_),
    .Q(\user_peripheral.strobe_period[2] ));
 sky130_fd_sc_hd__dfxtp_2 _650_ (.CLK(clk),
    .D(_050_),
    .Q(\user_peripheral.strobe_period[3] ));
 sky130_fd_sc_hd__dfxtp_2 _651_ (.CLK(clk),
    .D(_051_),
    .Q(\user_peripheral.strobe_period[4] ));
 sky130_fd_sc_hd__dfxtp_2 _652_ (.CLK(clk),
    .D(_052_),
    .Q(\user_peripheral.strobe_period[5] ));
 sky130_fd_sc_hd__dfxtp_2 _653_ (.CLK(clk),
    .D(_053_),
    .Q(\user_peripheral.strobe_period[6] ));
 sky130_fd_sc_hd__dfxtp_2 _654_ (.CLK(clk),
    .D(_054_),
    .Q(\user_peripheral.strobe_period[7] ));
 sky130_fd_sc_hd__dfrtp_2 _655_ (.CLK(clk),
    .D(_055_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.addr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _656_ (.CLK(clk),
    .D(_056_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.addr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _657_ (.CLK(clk),
    .D(_057_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.addr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _658_ (.CLK(clk),
    .D(_058_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.addr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _659_ (.CLK(clk),
    .D(_000_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.dv ));
 sky130_fd_sc_hd__dfrtp_2 _660_ (.CLK(clk),
    .D(_059_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_rw ));
 sky130_fd_sc_hd__dfrtp_2 _661_ (.CLK(clk),
    .D(_060_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[0] ));
 sky130_fd_sc_hd__dfrtp_2 _662_ (.CLK(clk),
    .D(_061_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[1] ));
 sky130_fd_sc_hd__dfrtp_2 _663_ (.CLK(clk),
    .D(_062_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[2] ));
 sky130_fd_sc_hd__dfrtp_2 _664_ (.CLK(clk),
    .D(_063_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[3] ));
 sky130_fd_sc_hd__dfrtp_2 _665_ (.CLK(clk),
    .D(_064_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[4] ));
 sky130_fd_sc_hd__dfrtp_2 _666_ (.CLK(clk),
    .D(_065_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[5] ));
 sky130_fd_sc_hd__dfrtp_2 _667_ (.CLK(clk),
    .D(_066_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[6] ));
 sky130_fd_sc_hd__dfrtp_2 _668_ (.CLK(clk),
    .D(_067_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.reg_data_o[7] ));
 sky130_fd_sc_hd__dfrtp_2 _669_ (.CLK(clk),
    .D(_068_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.buffer_counter[0] ));
 sky130_fd_sc_hd__dfrtp_2 _670_ (.CLK(clk),
    .D(_069_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.buffer_counter[1] ));
 sky130_fd_sc_hd__dfrtp_2 _671_ (.CLK(clk),
    .D(_070_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.buffer_counter[2] ));
 sky130_fd_sc_hd__dfrtp_2 _672_ (.CLK(clk),
    .D(_071_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.buffer_counter[3] ));
 sky130_fd_sc_hd__dfrtp_2 _673_ (.CLK(clk),
    .D(\i_spi_reg.falling_edge_detector_sof.data ),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.falling_edge_detector_sof.data_dly ));
 sky130_fd_sc_hd__dfrtp_2 _674_ (.CLK(clk),
    .D(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ));
 sky130_fd_sc_hd__conb_1 _675_ (.HI(uio_oe[3]));
 sky130_fd_sc_hd__conb_1 _676_ (.LO(uio_oe[0]));
 sky130_fd_sc_hd__conb_1 _677_ (.LO(uio_oe[1]));
 sky130_fd_sc_hd__conb_1 _678_ (.LO(uio_oe[2]));
 sky130_fd_sc_hd__conb_1 _679_ (.LO(uio_oe[4]));
 sky130_fd_sc_hd__conb_1 _680_ (.LO(uio_oe[5]));
 sky130_fd_sc_hd__conb_1 _681_ (.LO(uio_oe[6]));
 sky130_fd_sc_hd__conb_1 _682_ (.LO(uio_oe[7]));
 sky130_fd_sc_hd__conb_1 _683_ (.LO(uio_out[0]));
 sky130_fd_sc_hd__conb_1 _684_ (.LO(uio_out[1]));
 sky130_fd_sc_hd__conb_1 _685_ (.LO(uio_out[2]));
 sky130_fd_sc_hd__conb_1 _686_ (.LO(uio_out[4]));
 sky130_fd_sc_hd__conb_1 _687_ (.LO(uio_out[5]));
 sky130_fd_sc_hd__conb_1 _688_ (.LO(uio_out[6]));
 sky130_fd_sc_hd__conb_1 _689_ (.LO(uio_out[7]));
 sky130_fd_sc_hd__conb_1 _690_ (.LO(_017_));
 sky130_fd_sc_hd__conb_1 _691_ (.LO(_016_));
 sky130_fd_sc_hd__conb_1 _692_ (.LO(_015_));
 sky130_fd_sc_hd__conb_1 _693_ (.LO(_014_));
 sky130_fd_sc_hd__conb_1 _694_ (.LO(_013_));
 sky130_fd_sc_hd__conb_1 _695_ (.LO(_012_));
 sky130_fd_sc_hd__conb_1 _696_ (.LO(_011_));
 sky130_fd_sc_hd__conb_1 _697_ (.LO(_010_));
 sky130_fd_sc_hd__buf_2 _698_ (.A(uo_out[6]),
    .X(uo_out[0]));
 sky130_fd_sc_hd__buf_2 _699_ (.A(uo_out[7]),
    .X(uo_out[1]));
 sky130_fd_sc_hd__buf_2 _700_ (.A(uo_out[6]),
    .X(uo_out[2]));
 sky130_fd_sc_hd__buf_2 _701_ (.A(uo_out[7]),
    .X(uo_out[3]));
 sky130_fd_sc_hd__buf_2 _702_ (.A(uo_out[6]),
    .X(uo_out[4]));
 sky130_fd_sc_hd__buf_2 _703_ (.A(uo_out[7]),
    .X(uo_out[5]));
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
endmodule
