// This is the unpowered netlist.
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

 wire net18;
 wire net19;
 wire net20;
 wire net40;
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
 wire _000_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
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
 wire clknet_0_clk;
 wire clknet_3_0__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;
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
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net2;
 wire net3;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net5;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net6;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net7;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net8;
 wire net9;
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

 sky130_fd_sc_hd__decap_3 FILLER_0_0_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_14 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_181 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_188 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_208 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_220 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_225 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_248 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_309 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_217 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_45 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_329 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_95 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_289 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_106 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_119 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_140 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_261 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_317 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_329 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_161 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_221 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_265 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_289 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_142 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_154 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_164 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_173 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_203 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_215 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_305 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_31 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_66 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_104 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_112 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_145 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_153 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_194 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_213 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_235 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_247 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_265 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_157 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_166 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_244 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_264 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_276 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_329 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_89 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_161 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_190 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_237 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_269 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_309 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_329 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_56 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_225 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_246 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_270 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_278 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_293 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_120 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_155 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_222 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_245 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_289 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_109 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_138 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_193 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_205 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_223 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_225 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_247 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_256 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_268 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_293 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_317 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_32 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_329 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_161 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_195 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_231 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_333 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_71 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_8 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_165 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_19 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_206 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_223 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_268 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_66 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_99 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_151 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_160 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_186 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_194 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_213 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_230 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_256 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_268 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_280 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_292 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_304 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_32 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_74 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_128 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_140 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_160 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_186 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_213 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_221 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_238 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_274 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_54 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_86 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_90 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_154 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_173 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_230 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_250 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_261 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_273 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_285 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_297 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_60 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_153 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_162 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_247 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_265 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_293 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_317 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_32 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_329 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_192 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_289 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_28_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_28_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_165 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_176 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_193 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_205 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_211 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_242 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_254 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_266 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_278 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_329 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_43 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_148 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_172 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_19 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_196 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_208 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_220 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_31 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_124 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_172 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_33_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_116 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_140 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_33_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_33_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_33_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_33_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_116 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_34_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_34_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_34_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_34_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_34_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_34_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_34_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_35_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_35_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_35_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_35_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_35_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_35_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_35_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_36_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_213 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_230 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_36_242 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_36_250 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_36_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_233 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_245 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_257 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_37_269 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_37_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_37_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_117 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_149 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_157 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_193 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_225 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_237 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_245 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_250 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_256 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_268 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_321 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_89 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_309 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_177 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_18 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_253 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_265 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_309 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_93 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
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
 sky130_fd_sc_hd__decap_3 PHY_2 ();
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
 sky130_fd_sc_hd__decap_3 PHY_3 ();
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
 sky130_fd_sc_hd__decap_3 PHY_4 ();
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
 sky130_fd_sc_hd__decap_3 PHY_5 ();
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
 sky130_fd_sc_hd__decap_3 PHY_6 ();
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
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
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
 sky130_fd_sc_hd__nor2_1 _301_ (.A(\i_spi_reg.state[1] ),
    .B(\i_spi_reg.state[0] ),
    .Y(_072_));
 sky130_fd_sc_hd__and3_1 _302_ (.A(\i_spi_reg.reg_data_o[7] ),
    .B(\i_spi_reg.state[2] ),
    .C(_072_),
    .X(_073_));
 sky130_fd_sc_hd__clkbuf_1 _303_ (.A(_073_),
    .X(net5));
 sky130_fd_sc_hd__and2b_1 _304_ (.A_N(\i_spi_reg.state[2] ),
    .B(\i_spi_reg.state[1] ),
    .X(_074_));
 sky130_fd_sc_hd__nor4b_2 _305_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D_N(\i_spi_reg.buffer_counter[3] ),
    .Y(_075_));
 sky130_fd_sc_hd__and4_1 _306_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.reg_rw ),
    .C(_074_),
    .D(_075_),
    .X(_076_));
 sky130_fd_sc_hd__clkbuf_1 _307_ (.A(_076_),
    .X(_000_));
 sky130_fd_sc_hd__inv_2 _308_ (.A(net16),
    .Y(_077_));
 sky130_fd_sc_hd__inv_2 _309_ (.A(\user_peripheral.strobe_count[4] ),
    .Y(_078_));
 sky130_fd_sc_hd__or2b_1 _310_ (.A(\user_peripheral.strobe_period[7] ),
    .B_N(\user_peripheral.strobe_count[7] ),
    .X(_079_));
 sky130_fd_sc_hd__o21ai_1 _311_ (.A1(\user_peripheral.strobe_period[4] ),
    .A2(_078_),
    .B1(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__inv_2 _312_ (.A(\user_peripheral.strobe_count[5] ),
    .Y(_081_));
 sky130_fd_sc_hd__a22o_1 _313_ (.A1(\user_peripheral.strobe_period[5] ),
    .A2(_081_),
    .B1(_078_),
    .B2(\user_peripheral.strobe_period[4] ),
    .X(_082_));
 sky130_fd_sc_hd__inv_2 _314_ (.A(net48),
    .Y(_083_));
 sky130_fd_sc_hd__o2bb2a_1 _315_ (.A1_N(_083_),
    .A2_N(\user_peripheral.strobe_count[6] ),
    .B1(_081_),
    .B2(\user_peripheral.strobe_period[5] ),
    .X(_084_));
 sky130_fd_sc_hd__inv_2 _316_ (.A(net53),
    .Y(_085_));
 sky130_fd_sc_hd__o22a_1 _317_ (.A1(_085_),
    .A2(\user_peripheral.strobe_count[7] ),
    .B1(\user_peripheral.strobe_count[6] ),
    .B2(_083_),
    .X(_086_));
 sky130_fd_sc_hd__and4bb_1 _318_ (.A_N(_080_),
    .B_N(_082_),
    .C(_084_),
    .D(_086_),
    .X(_087_));
 sky130_fd_sc_hd__or2b_1 _319_ (.A(\user_peripheral.strobe_count[3] ),
    .B_N(\user_peripheral.strobe_period[3] ),
    .X(_088_));
 sky130_fd_sc_hd__or2b_1 _320_ (.A(\user_peripheral.strobe_count[2] ),
    .B_N(\user_peripheral.strobe_period[2] ),
    .X(_089_));
 sky130_fd_sc_hd__nand2_1 _321_ (.A(_088_),
    .B(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__or2b_1 _322_ (.A(\user_peripheral.strobe_period[3] ),
    .B_N(\user_peripheral.strobe_count[3] ),
    .X(_091_));
 sky130_fd_sc_hd__or2b_1 _323_ (.A(\user_peripheral.strobe_period[2] ),
    .B_N(\user_peripheral.strobe_count[2] ),
    .X(_092_));
 sky130_fd_sc_hd__and4_1 _324_ (.A(_088_),
    .B(_089_),
    .C(_092_),
    .D(_091_),
    .X(_093_));
 sky130_fd_sc_hd__or2b_1 _325_ (.A(\user_peripheral.strobe_period[1] ),
    .B_N(\user_peripheral.strobe_count[1] ),
    .X(_094_));
 sky130_fd_sc_hd__or2b_1 _326_ (.A(\user_peripheral.strobe_period[0] ),
    .B_N(\user_peripheral.strobe_count[0] ),
    .X(_095_));
 sky130_fd_sc_hd__or2b_1 _327_ (.A(\user_peripheral.strobe_count[1] ),
    .B_N(\user_peripheral.strobe_period[1] ),
    .X(_096_));
 sky130_fd_sc_hd__a21bo_1 _328_ (.A1(_094_),
    .A2(_095_),
    .B1_N(_096_),
    .X(_097_));
 sky130_fd_sc_hd__a22o_1 _329_ (.A1(_090_),
    .A2(_091_),
    .B1(_093_),
    .B2(_097_),
    .X(_098_));
 sky130_fd_sc_hd__a21bo_1 _330_ (.A1(_082_),
    .A2(_084_),
    .B1_N(_086_),
    .X(_099_));
 sky130_fd_sc_hd__a22o_1 _331_ (.A1(_087_),
    .A2(_098_),
    .B1(_099_),
    .B2(_079_),
    .X(_100_));
 sky130_fd_sc_hd__inv_2 _332_ (.A(net58),
    .Y(_101_));
 sky130_fd_sc_hd__and3_1 _333_ (.A(_096_),
    .B(_094_),
    .C(_095_),
    .X(_102_));
 sky130_fd_sc_hd__o211a_1 _334_ (.A1(_101_),
    .A2(\user_peripheral.strobe_count[0] ),
    .B1(_093_),
    .C1(_102_),
    .X(_103_));
 sky130_fd_sc_hd__or4_1 _335_ (.A(\user_peripheral.strobe_count[11] ),
    .B(\user_peripheral.strobe_count[10] ),
    .C(\user_peripheral.strobe_count[9] ),
    .D(\user_peripheral.strobe_count[8] ),
    .X(_104_));
 sky130_fd_sc_hd__or4_1 _336_ (.A(\user_peripheral.strobe_count[15] ),
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
 sky130_fd_sc_hd__and2b_1 _340_ (.A_N(\user_peripheral.strobe_count[0] ),
    .B(_108_),
    .X(_109_));
 sky130_fd_sc_hd__clkbuf_1 _341_ (.A(_109_),
    .X(_002_));
 sky130_fd_sc_hd__or2_1 _342_ (.A(\user_peripheral.strobe_count[1] ),
    .B(\user_peripheral.strobe_count[0] ),
    .X(_110_));
 sky130_fd_sc_hd__nand2_1 _343_ (.A(\user_peripheral.strobe_count[1] ),
    .B(\user_peripheral.strobe_count[0] ),
    .Y(_111_));
 sky130_fd_sc_hd__and3_1 _344_ (.A(_108_),
    .B(_110_),
    .C(_111_),
    .X(_112_));
 sky130_fd_sc_hd__clkbuf_1 _345_ (.A(_112_),
    .X(_003_));
 sky130_fd_sc_hd__and3_1 _346_ (.A(\user_peripheral.strobe_count[2] ),
    .B(\user_peripheral.strobe_count[1] ),
    .C(\user_peripheral.strobe_count[0] ),
    .X(_113_));
 sky130_fd_sc_hd__a21o_1 _347_ (.A1(\user_peripheral.strobe_count[1] ),
    .A2(\user_peripheral.strobe_count[0] ),
    .B1(\user_peripheral.strobe_count[2] ),
    .X(_114_));
 sky130_fd_sc_hd__and3b_1 _348_ (.A_N(_113_),
    .B(_108_),
    .C(_114_),
    .X(_115_));
 sky130_fd_sc_hd__clkbuf_1 _349_ (.A(_115_),
    .X(_004_));
 sky130_fd_sc_hd__or2_1 _350_ (.A(\user_peripheral.strobe_count[3] ),
    .B(_113_),
    .X(_116_));
 sky130_fd_sc_hd__nand2_1 _351_ (.A(\user_peripheral.strobe_count[3] ),
    .B(_113_),
    .Y(_117_));
 sky130_fd_sc_hd__and3_1 _352_ (.A(_108_),
    .B(_116_),
    .C(_117_),
    .X(_118_));
 sky130_fd_sc_hd__clkbuf_1 _353_ (.A(_118_),
    .X(_005_));
 sky130_fd_sc_hd__nor2_1 _354_ (.A(_078_),
    .B(_117_),
    .Y(_119_));
 sky130_fd_sc_hd__nand2_1 _355_ (.A(_078_),
    .B(_117_),
    .Y(_120_));
 sky130_fd_sc_hd__and3b_1 _356_ (.A_N(_119_),
    .B(_108_),
    .C(_120_),
    .X(_121_));
 sky130_fd_sc_hd__clkbuf_1 _357_ (.A(_121_),
    .X(_006_));
 sky130_fd_sc_hd__and2_1 _358_ (.A(\user_peripheral.strobe_count[5] ),
    .B(_119_),
    .X(_122_));
 sky130_fd_sc_hd__or2_1 _359_ (.A(\user_peripheral.strobe_count[5] ),
    .B(_119_),
    .X(_123_));
 sky130_fd_sc_hd__and3b_1 _360_ (.A_N(_122_),
    .B(_108_),
    .C(_123_),
    .X(_124_));
 sky130_fd_sc_hd__clkbuf_1 _361_ (.A(_124_),
    .X(_007_));
 sky130_fd_sc_hd__nand2_1 _362_ (.A(\user_peripheral.strobe_count[6] ),
    .B(_122_),
    .Y(_125_));
 sky130_fd_sc_hd__or2_1 _363_ (.A(\user_peripheral.strobe_count[6] ),
    .B(_122_),
    .X(_126_));
 sky130_fd_sc_hd__and3_1 _364_ (.A(_108_),
    .B(_125_),
    .C(_126_),
    .X(_127_));
 sky130_fd_sc_hd__clkbuf_1 _365_ (.A(_127_),
    .X(_008_));
 sky130_fd_sc_hd__xnor2_1 _366_ (.A(\user_peripheral.strobe_count[7] ),
    .B(_125_),
    .Y(_128_));
 sky130_fd_sc_hd__and2_1 _367_ (.A(_108_),
    .B(_128_),
    .X(_129_));
 sky130_fd_sc_hd__clkbuf_1 _368_ (.A(_129_),
    .X(_009_));
 sky130_fd_sc_hd__inv_2 _369__1 (.A(clknet_3_5__leaf_clk),
    .Y(net41));
 sky130_fd_sc_hd__buf_2 _370_ (.A(_107_),
    .X(_130_));
 sky130_fd_sc_hd__a21oi_1 _371_ (.A1(\user_peripheral.pwm_count[0] ),
    .A2(_130_),
    .B1(_077_),
    .Y(_131_));
 sky130_fd_sc_hd__o21a_1 _372_ (.A1(net62),
    .A2(_130_),
    .B1(_131_),
    .X(_018_));
 sky130_fd_sc_hd__and3_1 _373_ (.A(\user_peripheral.pwm_count[1] ),
    .B(\user_peripheral.pwm_count[0] ),
    .C(_107_),
    .X(_132_));
 sky130_fd_sc_hd__a21o_1 _374_ (.A1(\user_peripheral.pwm_count[0] ),
    .A2(_107_),
    .B1(\user_peripheral.pwm_count[1] ),
    .X(_133_));
 sky130_fd_sc_hd__and3b_1 _375_ (.A_N(_132_),
    .B(net16),
    .C(_133_),
    .X(_134_));
 sky130_fd_sc_hd__clkbuf_1 _376_ (.A(_134_),
    .X(_019_));
 sky130_fd_sc_hd__and3_1 _377_ (.A(\user_peripheral.pwm_count[2] ),
    .B(\user_peripheral.pwm_count[1] ),
    .C(\user_peripheral.pwm_count[0] ),
    .X(_135_));
 sky130_fd_sc_hd__nand2_1 _378_ (.A(_130_),
    .B(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__clkbuf_4 _379_ (.A(net16),
    .X(_137_));
 sky130_fd_sc_hd__o211a_1 _380_ (.A1(net47),
    .A2(_132_),
    .B1(_136_),
    .C1(_137_),
    .X(_020_));
 sky130_fd_sc_hd__inv_2 _381_ (.A(net63),
    .Y(_138_));
 sky130_fd_sc_hd__a31o_1 _382_ (.A1(\user_peripheral.pwm_count[3] ),
    .A2(_130_),
    .A3(_135_),
    .B1(_077_),
    .X(_139_));
 sky130_fd_sc_hd__a21oi_1 _383_ (.A1(_138_),
    .A2(_136_),
    .B1(_139_),
    .Y(_021_));
 sky130_fd_sc_hd__nand2_1 _384_ (.A(net56),
    .B(\user_peripheral.pwm_count[3] ),
    .Y(_140_));
 sky130_fd_sc_hd__a31o_1 _385_ (.A1(\user_peripheral.pwm_count[3] ),
    .A2(_130_),
    .A3(_135_),
    .B1(\user_peripheral.pwm_count[4] ),
    .X(_141_));
 sky130_fd_sc_hd__o211a_1 _386_ (.A1(_136_),
    .A2(net57),
    .B1(_141_),
    .C1(_137_),
    .X(_022_));
 sky130_fd_sc_hd__clkbuf_4 _387_ (.A(net15),
    .X(_142_));
 sky130_fd_sc_hd__a41o_1 _388_ (.A1(\user_peripheral.pwm_count[4] ),
    .A2(\user_peripheral.pwm_count[3] ),
    .A3(_107_),
    .A4(_135_),
    .B1(\user_peripheral.pwm_count[5] ),
    .X(_143_));
 sky130_fd_sc_hd__and4_1 _389_ (.A(\user_peripheral.pwm_count[5] ),
    .B(\user_peripheral.pwm_count[4] ),
    .C(\user_peripheral.pwm_count[3] ),
    .D(_135_),
    .X(_144_));
 sky130_fd_sc_hd__nand2_1 _390_ (.A(_130_),
    .B(_144_),
    .Y(_145_));
 sky130_fd_sc_hd__and3_1 _391_ (.A(_142_),
    .B(_143_),
    .C(_145_),
    .X(_146_));
 sky130_fd_sc_hd__clkbuf_1 _392_ (.A(_146_),
    .X(_023_));
 sky130_fd_sc_hd__inv_2 _393_ (.A(net50),
    .Y(_147_));
 sky130_fd_sc_hd__a31o_1 _394_ (.A1(\user_peripheral.pwm_count[6] ),
    .A2(_130_),
    .A3(_144_),
    .B1(_077_),
    .X(_148_));
 sky130_fd_sc_hd__a21oi_1 _395_ (.A1(_147_),
    .A2(_145_),
    .B1(_148_),
    .Y(_024_));
 sky130_fd_sc_hd__nand4_1 _396_ (.A(\user_peripheral.pwm_count[7] ),
    .B(\user_peripheral.pwm_count[6] ),
    .C(_107_),
    .D(_144_),
    .Y(_149_));
 sky130_fd_sc_hd__a31o_1 _397_ (.A1(\user_peripheral.pwm_count[6] ),
    .A2(_107_),
    .A3(_144_),
    .B1(\user_peripheral.pwm_count[7] ),
    .X(_150_));
 sky130_fd_sc_hd__and3_1 _398_ (.A(_142_),
    .B(_149_),
    .C(_150_),
    .X(_151_));
 sky130_fd_sc_hd__clkbuf_1 _399_ (.A(_151_),
    .X(_025_));
 sky130_fd_sc_hd__inv_2 _400_ (.A(\user_peripheral.pwm_count[5] ),
    .Y(_152_));
 sky130_fd_sc_hd__inv_2 _401_ (.A(\user_peripheral.pwm_count[2] ),
    .Y(_153_));
 sky130_fd_sc_hd__inv_2 _402_ (.A(\user_peripheral.pwm_count[0] ),
    .Y(_154_));
 sky130_fd_sc_hd__inv_2 _403_ (.A(\user_peripheral.pwm_count[1] ),
    .Y(_155_));
 sky130_fd_sc_hd__or2_1 _404_ (.A(\user_peripheral.pwm_level_0[1] ),
    .B(_155_),
    .X(_156_));
 sky130_fd_sc_hd__a22o_1 _405_ (.A1(\user_peripheral.pwm_level_0[2] ),
    .A2(_153_),
    .B1(_155_),
    .B2(\user_peripheral.pwm_level_0[1] ),
    .X(_157_));
 sky130_fd_sc_hd__a31o_1 _406_ (.A1(\user_peripheral.pwm_level_0[0] ),
    .A2(_154_),
    .A3(_156_),
    .B1(_157_),
    .X(_158_));
 sky130_fd_sc_hd__o221a_1 _407_ (.A1(\user_peripheral.pwm_level_0[3] ),
    .A2(_138_),
    .B1(_153_),
    .B2(\user_peripheral.pwm_level_0[2] ),
    .C1(_158_),
    .X(_159_));
 sky130_fd_sc_hd__inv_2 _408_ (.A(\user_peripheral.pwm_count[4] ),
    .Y(_160_));
 sky130_fd_sc_hd__a22o_1 _409_ (.A1(\user_peripheral.pwm_level_0[4] ),
    .A2(_160_),
    .B1(_138_),
    .B2(\user_peripheral.pwm_level_0[3] ),
    .X(_161_));
 sky130_fd_sc_hd__or2_1 _410_ (.A(\user_peripheral.pwm_level_0[4] ),
    .B(_160_),
    .X(_162_));
 sky130_fd_sc_hd__o221a_1 _411_ (.A1(\user_peripheral.pwm_level_0[5] ),
    .A2(_152_),
    .B1(_159_),
    .B2(_161_),
    .C1(_162_),
    .X(_163_));
 sky130_fd_sc_hd__a22o_1 _412_ (.A1(\user_peripheral.pwm_level_0[6] ),
    .A2(_147_),
    .B1(_152_),
    .B2(\user_peripheral.pwm_level_0[5] ),
    .X(_164_));
 sky130_fd_sc_hd__inv_2 _413_ (.A(\user_peripheral.pwm_count[7] ),
    .Y(_165_));
 sky130_fd_sc_hd__o22a_1 _414_ (.A1(\user_peripheral.pwm_level_0[7] ),
    .A2(_165_),
    .B1(_147_),
    .B2(\user_peripheral.pwm_level_0[6] ),
    .X(_166_));
 sky130_fd_sc_hd__o21a_1 _415_ (.A1(_163_),
    .A2(_164_),
    .B1(_166_),
    .X(_167_));
 sky130_fd_sc_hd__a22o_1 _416_ (.A1(\user_peripheral.pwm_level_0[7] ),
    .A2(_165_),
    .B1(_100_),
    .B2(_106_),
    .X(_168_));
 sky130_fd_sc_hd__o221a_1 _417_ (.A1(net13),
    .A2(_130_),
    .B1(_167_),
    .B2(_168_),
    .C1(_142_),
    .X(_026_));
 sky130_fd_sc_hd__or2_1 _418_ (.A(\user_peripheral.pwm_level_1[1] ),
    .B(_155_),
    .X(_169_));
 sky130_fd_sc_hd__a22o_1 _419_ (.A1(\user_peripheral.pwm_level_1[2] ),
    .A2(_153_),
    .B1(_155_),
    .B2(\user_peripheral.pwm_level_1[1] ),
    .X(_170_));
 sky130_fd_sc_hd__a31o_1 _420_ (.A1(\user_peripheral.pwm_level_1[0] ),
    .A2(_154_),
    .A3(_169_),
    .B1(_170_),
    .X(_171_));
 sky130_fd_sc_hd__o221a_1 _421_ (.A1(\user_peripheral.pwm_level_1[3] ),
    .A2(_138_),
    .B1(_153_),
    .B2(\user_peripheral.pwm_level_1[2] ),
    .C1(_171_),
    .X(_172_));
 sky130_fd_sc_hd__a22o_1 _422_ (.A1(\user_peripheral.pwm_level_1[4] ),
    .A2(_160_),
    .B1(_138_),
    .B2(\user_peripheral.pwm_level_1[3] ),
    .X(_173_));
 sky130_fd_sc_hd__or2_1 _423_ (.A(\user_peripheral.pwm_level_1[4] ),
    .B(_160_),
    .X(_174_));
 sky130_fd_sc_hd__o221a_1 _424_ (.A1(\user_peripheral.pwm_level_1[5] ),
    .A2(_152_),
    .B1(_172_),
    .B2(_173_),
    .C1(_174_),
    .X(_175_));
 sky130_fd_sc_hd__a22o_1 _425_ (.A1(\user_peripheral.pwm_level_1[6] ),
    .A2(_147_),
    .B1(_152_),
    .B2(\user_peripheral.pwm_level_1[5] ),
    .X(_176_));
 sky130_fd_sc_hd__o22a_1 _426_ (.A1(\user_peripheral.pwm_level_1[7] ),
    .A2(_165_),
    .B1(_147_),
    .B2(\user_peripheral.pwm_level_1[6] ),
    .X(_177_));
 sky130_fd_sc_hd__o21a_1 _427_ (.A1(_175_),
    .A2(_176_),
    .B1(_177_),
    .X(_178_));
 sky130_fd_sc_hd__inv_2 _428_ (.A(\user_peripheral.pwm_level_1[7] ),
    .Y(_179_));
 sky130_fd_sc_hd__o21ai_1 _429_ (.A1(_179_),
    .A2(\user_peripheral.pwm_count[7] ),
    .B1(_130_),
    .Y(_180_));
 sky130_fd_sc_hd__o221a_1 _430_ (.A1(net64),
    .A2(_130_),
    .B1(_178_),
    .B2(_180_),
    .C1(_142_),
    .X(_027_));
 sky130_fd_sc_hd__or4b_1 _431_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D_N(\i_spi_reg.buffer_counter[3] ),
    .X(_181_));
 sky130_fd_sc_hd__inv_2 _432_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .Y(_182_));
 sky130_fd_sc_hd__or2_1 _433_ (.A(_182_),
    .B(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .X(_183_));
 sky130_fd_sc_hd__and3_1 _434_ (.A(\i_spi_reg.state[0] ),
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
 sky130_fd_sc_hd__and3b_1 _438_ (.A_N(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.reg_rw ),
    .C(_074_),
    .X(_188_));
 sky130_fd_sc_hd__a21oi_1 _439_ (.A1(_182_),
    .A2(\i_spi_reg.falling_edge_detector_sof.data_dly ),
    .B1(_185_),
    .Y(_189_));
 sky130_fd_sc_hd__or4_1 _440_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(\i_spi_reg.buffer_counter[3] ),
    .X(_190_));
 sky130_fd_sc_hd__and3_1 _441_ (.A(\i_spi_reg.state[2] ),
    .B(_072_),
    .C(_190_),
    .X(_191_));
 sky130_fd_sc_hd__o21bai_1 _442_ (.A1(\i_spi_reg.state[2] ),
    .A2(_189_),
    .B1_N(_191_),
    .Y(_192_));
 sky130_fd_sc_hd__o31a_1 _443_ (.A1(_184_),
    .A2(_187_),
    .A3(_188_),
    .B1(_192_),
    .X(_028_));
 sky130_fd_sc_hd__and4bb_2 _444_ (.A_N(\i_spi_reg.state[2] ),
    .B_N(\i_spi_reg.state[1] ),
    .C(\i_spi_reg.state[0] ),
    .D(_075_),
    .X(_193_));
 sky130_fd_sc_hd__a211o_1 _445_ (.A1(_074_),
    .A2(_184_),
    .B1(_188_),
    .C1(_193_),
    .X(_029_));
 sky130_fd_sc_hd__nor2_2 _446_ (.A(_185_),
    .B(_190_),
    .Y(_194_));
 sky130_fd_sc_hd__buf_2 _447_ (.A(_194_),
    .X(_195_));
 sky130_fd_sc_hd__nor2_1 _448_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.reg_rw ),
    .Y(_196_));
 sky130_fd_sc_hd__a32o_1 _449_ (.A1(\i_spi_reg.state[2] ),
    .A2(_181_),
    .A3(_183_),
    .B1(_196_),
    .B2(_074_),
    .X(_197_));
 sky130_fd_sc_hd__a22o_1 _450_ (.A1(\i_spi_reg.state[2] ),
    .A2(_195_),
    .B1(_197_),
    .B2(_192_),
    .X(_030_));
 sky130_fd_sc_hd__clkbuf_2 _451_ (.A(\i_spi_reg.addr[1] ),
    .X(_198_));
 sky130_fd_sc_hd__nor3_1 _452_ (.A(\i_spi_reg.addr[0] ),
    .B(\i_spi_reg.addr[3] ),
    .C(\i_spi_reg.addr[2] ),
    .Y(_199_));
 sky130_fd_sc_hd__buf_2 _453_ (.A(_199_),
    .X(_200_));
 sky130_fd_sc_hd__and2b_1 _454_ (.A_N(_198_),
    .B(_200_),
    .X(_201_));
 sky130_fd_sc_hd__nand2_2 _455_ (.A(\i_spi_reg.dv ),
    .B(_201_),
    .Y(_202_));
 sky130_fd_sc_hd__and2_2 _456_ (.A(\i_spi_reg.dv ),
    .B(_201_),
    .X(_203_));
 sky130_fd_sc_hd__or2_1 _457_ (.A(\user_peripheral.pwm_level_0[0] ),
    .B(_203_),
    .X(_204_));
 sky130_fd_sc_hd__o211a_1 _458_ (.A1(net67),
    .A2(_202_),
    .B1(_204_),
    .C1(_137_),
    .X(_031_));
 sky130_fd_sc_hd__or2_1 _459_ (.A(\user_peripheral.pwm_level_0[1] ),
    .B(_203_),
    .X(_205_));
 sky130_fd_sc_hd__o211a_1 _460_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_202_),
    .B1(_205_),
    .C1(_137_),
    .X(_032_));
 sky130_fd_sc_hd__or2_1 _461_ (.A(\user_peripheral.pwm_level_0[2] ),
    .B(_203_),
    .X(_206_));
 sky130_fd_sc_hd__o211a_1 _462_ (.A1(net61),
    .A2(_202_),
    .B1(_206_),
    .C1(_137_),
    .X(_033_));
 sky130_fd_sc_hd__or2_1 _463_ (.A(\user_peripheral.pwm_level_0[3] ),
    .B(_203_),
    .X(_207_));
 sky130_fd_sc_hd__o211a_1 _464_ (.A1(net68),
    .A2(_202_),
    .B1(_207_),
    .C1(_137_),
    .X(_034_));
 sky130_fd_sc_hd__or2_1 _465_ (.A(\user_peripheral.pwm_level_0[4] ),
    .B(_203_),
    .X(_208_));
 sky130_fd_sc_hd__o211a_1 _466_ (.A1(net60),
    .A2(_202_),
    .B1(_208_),
    .C1(_137_),
    .X(_035_));
 sky130_fd_sc_hd__or2_1 _467_ (.A(\user_peripheral.pwm_level_0[5] ),
    .B(_203_),
    .X(_209_));
 sky130_fd_sc_hd__o211a_1 _468_ (.A1(net52),
    .A2(_202_),
    .B1(_209_),
    .C1(_137_),
    .X(_036_));
 sky130_fd_sc_hd__or2_1 _469_ (.A(\user_peripheral.pwm_level_0[6] ),
    .B(_203_),
    .X(_210_));
 sky130_fd_sc_hd__o211a_1 _470_ (.A1(net70),
    .A2(_202_),
    .B1(_210_),
    .C1(_137_),
    .X(_037_));
 sky130_fd_sc_hd__or2_1 _471_ (.A(\user_peripheral.pwm_level_0[7] ),
    .B(_203_),
    .X(_211_));
 sky130_fd_sc_hd__o211a_1 _472_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_202_),
    .B1(_211_),
    .C1(_137_),
    .X(_038_));
 sky130_fd_sc_hd__nor4b_1 _473_ (.A(\i_spi_reg.addr[1] ),
    .B(\i_spi_reg.addr[3] ),
    .C(\i_spi_reg.addr[2] ),
    .D_N(\i_spi_reg.addr[0] ),
    .Y(_212_));
 sky130_fd_sc_hd__nand2_4 _474_ (.A(\i_spi_reg.dv ),
    .B(net17),
    .Y(_213_));
 sky130_fd_sc_hd__and2_1 _475_ (.A(\i_spi_reg.dv ),
    .B(net17),
    .X(_214_));
 sky130_fd_sc_hd__or2_1 _476_ (.A(\user_peripheral.pwm_level_1[0] ),
    .B(_214_),
    .X(_215_));
 sky130_fd_sc_hd__clkbuf_4 _477_ (.A(net15),
    .X(_216_));
 sky130_fd_sc_hd__o211a_1 _478_ (.A1(net67),
    .A2(_213_),
    .B1(_215_),
    .C1(_216_),
    .X(_039_));
 sky130_fd_sc_hd__or2_1 _479_ (.A(\user_peripheral.pwm_level_1[1] ),
    .B(_214_),
    .X(_217_));
 sky130_fd_sc_hd__o211a_1 _480_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_213_),
    .B1(_217_),
    .C1(_216_),
    .X(_040_));
 sky130_fd_sc_hd__or2_1 _481_ (.A(\user_peripheral.pwm_level_1[2] ),
    .B(_214_),
    .X(_218_));
 sky130_fd_sc_hd__o211a_1 _482_ (.A1(net61),
    .A2(_213_),
    .B1(_218_),
    .C1(_216_),
    .X(_041_));
 sky130_fd_sc_hd__or2_1 _483_ (.A(\user_peripheral.pwm_level_1[3] ),
    .B(_214_),
    .X(_219_));
 sky130_fd_sc_hd__o211a_1 _484_ (.A1(net68),
    .A2(_213_),
    .B1(_219_),
    .C1(_216_),
    .X(_042_));
 sky130_fd_sc_hd__or2_1 _485_ (.A(\user_peripheral.pwm_level_1[4] ),
    .B(_214_),
    .X(_220_));
 sky130_fd_sc_hd__o211a_1 _486_ (.A1(net60),
    .A2(_213_),
    .B1(_220_),
    .C1(_216_),
    .X(_043_));
 sky130_fd_sc_hd__or2_1 _487_ (.A(\user_peripheral.pwm_level_1[5] ),
    .B(_214_),
    .X(_221_));
 sky130_fd_sc_hd__o211a_1 _488_ (.A1(net52),
    .A2(_213_),
    .B1(_221_),
    .C1(_216_),
    .X(_044_));
 sky130_fd_sc_hd__or2_1 _489_ (.A(\user_peripheral.pwm_level_1[6] ),
    .B(_214_),
    .X(_222_));
 sky130_fd_sc_hd__o211a_1 _490_ (.A1(net70),
    .A2(_213_),
    .B1(_222_),
    .C1(_216_),
    .X(_045_));
 sky130_fd_sc_hd__nand2_1 _491_ (.A(_179_),
    .B(_213_),
    .Y(_223_));
 sky130_fd_sc_hd__o211a_1 _492_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_213_),
    .B1(_223_),
    .C1(_216_),
    .X(_046_));
 sky130_fd_sc_hd__nand3_1 _493_ (.A(_198_),
    .B(\i_spi_reg.dv ),
    .C(_200_),
    .Y(_224_));
 sky130_fd_sc_hd__buf_2 _494_ (.A(_224_),
    .X(_225_));
 sky130_fd_sc_hd__nand2_1 _495_ (.A(_101_),
    .B(_225_),
    .Y(_226_));
 sky130_fd_sc_hd__o211a_1 _496_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_225_),
    .B1(_226_),
    .C1(_216_),
    .X(_047_));
 sky130_fd_sc_hd__and3_1 _497_ (.A(_198_),
    .B(\i_spi_reg.dv ),
    .C(_200_),
    .X(_227_));
 sky130_fd_sc_hd__or2_1 _498_ (.A(\user_peripheral.strobe_period[1] ),
    .B(_227_),
    .X(_228_));
 sky130_fd_sc_hd__o211a_1 _499_ (.A1(net69),
    .A2(_225_),
    .B1(_228_),
    .C1(_216_),
    .X(_048_));
 sky130_fd_sc_hd__or2_1 _500_ (.A(\user_peripheral.strobe_period[2] ),
    .B(_227_),
    .X(_229_));
 sky130_fd_sc_hd__o211a_1 _501_ (.A1(net61),
    .A2(_225_),
    .B1(_229_),
    .C1(_142_),
    .X(_049_));
 sky130_fd_sc_hd__or2_1 _502_ (.A(\user_peripheral.strobe_period[3] ),
    .B(_227_),
    .X(_230_));
 sky130_fd_sc_hd__o211a_1 _503_ (.A1(net71),
    .A2(_225_),
    .B1(_230_),
    .C1(_142_),
    .X(_050_));
 sky130_fd_sc_hd__or2_1 _504_ (.A(\user_peripheral.strobe_period[4] ),
    .B(_227_),
    .X(_231_));
 sky130_fd_sc_hd__o211a_1 _505_ (.A1(net60),
    .A2(_225_),
    .B1(_231_),
    .C1(_142_),
    .X(_051_));
 sky130_fd_sc_hd__or2_1 _506_ (.A(\user_peripheral.strobe_period[5] ),
    .B(_227_),
    .X(_232_));
 sky130_fd_sc_hd__o211a_1 _507_ (.A1(net52),
    .A2(_225_),
    .B1(_232_),
    .C1(_142_),
    .X(_052_));
 sky130_fd_sc_hd__nand2_1 _508_ (.A(_083_),
    .B(_225_),
    .Y(_233_));
 sky130_fd_sc_hd__o211a_1 _509_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_225_),
    .B1(_233_),
    .C1(_142_),
    .X(_053_));
 sky130_fd_sc_hd__nand2_1 _510_ (.A(_085_),
    .B(_224_),
    .Y(_234_));
 sky130_fd_sc_hd__o211a_1 _511_ (.A1(\i_spi_reg.reg_data_o[7] ),
    .A2(_225_),
    .B1(_234_),
    .C1(_142_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _512_ (.A0(\i_spi_reg.addr[0] ),
    .A1(\i_spi_reg.reg_data_o[0] ),
    .S(_193_),
    .X(_235_));
 sky130_fd_sc_hd__clkbuf_1 _513_ (.A(_235_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _514_ (.A0(_198_),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(_193_),
    .X(_236_));
 sky130_fd_sc_hd__clkbuf_1 _515_ (.A(_236_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _516_ (.A0(\i_spi_reg.addr[2] ),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_193_),
    .X(_237_));
 sky130_fd_sc_hd__clkbuf_1 _517_ (.A(_237_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_1 _518_ (.A0(\i_spi_reg.addr[3] ),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_193_),
    .X(_238_));
 sky130_fd_sc_hd__clkbuf_1 _519_ (.A(_238_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _520_ (.A0(\i_spi_reg.reg_rw ),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_193_),
    .X(_239_));
 sky130_fd_sc_hd__clkbuf_1 _521_ (.A(_239_),
    .X(_059_));
 sky130_fd_sc_hd__or4_1 _522_ (.A(\i_spi_reg.addr[0] ),
    .B(\i_spi_reg.addr[1] ),
    .C(\i_spi_reg.addr[3] ),
    .D(\i_spi_reg.addr[2] ),
    .X(_240_));
 sky130_fd_sc_hd__clkbuf_2 _523_ (.A(_240_),
    .X(_241_));
 sky130_fd_sc_hd__nand2_1 _524_ (.A(_101_),
    .B(_198_),
    .Y(_242_));
 sky130_fd_sc_hd__a22o_1 _525_ (.A1(\user_peripheral.pwm_level_1[0] ),
    .A2(_212_),
    .B1(_242_),
    .B2(_199_),
    .X(_243_));
 sky130_fd_sc_hd__o211a_1 _526_ (.A1(\user_peripheral.pwm_level_0[0] ),
    .A2(_241_),
    .B1(_243_),
    .C1(_194_),
    .X(_244_));
 sky130_fd_sc_hd__a22o_1 _527_ (.A1(\i_spi_reg.spi_mosi ),
    .A2(_185_),
    .B1(_244_),
    .B2(\i_spi_reg.state[2] ),
    .X(_245_));
 sky130_fd_sc_hd__or3b_1 _528_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .C_N(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_246_));
 sky130_fd_sc_hd__inv_2 _529_ (.A(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ),
    .Y(_247_));
 sky130_fd_sc_hd__or3_1 _530_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(_247_),
    .C(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_248_));
 sky130_fd_sc_hd__a22o_4 _531_ (.A1(_185_),
    .A2(_246_),
    .B1(_248_),
    .B2(_191_),
    .X(_249_));
 sky130_fd_sc_hd__mux2_1 _532_ (.A0(_245_),
    .A1(\i_spi_reg.reg_data_o[0] ),
    .S(_249_),
    .X(_250_));
 sky130_fd_sc_hd__clkbuf_1 _533_ (.A(_250_),
    .X(_060_));
 sky130_fd_sc_hd__or2b_1 _534_ (.A(\user_peripheral.strobe_period[1] ),
    .B_N(_198_),
    .X(_251_));
 sky130_fd_sc_hd__a22o_1 _535_ (.A1(\user_peripheral.pwm_level_1[1] ),
    .A2(net73),
    .B1(_251_),
    .B2(_200_),
    .X(_252_));
 sky130_fd_sc_hd__o21ai_1 _536_ (.A1(\user_peripheral.pwm_level_0[1] ),
    .A2(_241_),
    .B1(_252_),
    .Y(_253_));
 sky130_fd_sc_hd__nand2_1 _537_ (.A(_195_),
    .B(_253_),
    .Y(_254_));
 sky130_fd_sc_hd__o211a_1 _538_ (.A1(\i_spi_reg.reg_data_o[0] ),
    .A2(_195_),
    .B1(_254_),
    .C1(_186_),
    .X(_255_));
 sky130_fd_sc_hd__mux2_1 _539_ (.A0(_255_),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(_249_),
    .X(_256_));
 sky130_fd_sc_hd__clkbuf_1 _540_ (.A(_256_),
    .X(_061_));
 sky130_fd_sc_hd__or2b_1 _541_ (.A(\user_peripheral.strobe_period[2] ),
    .B_N(_198_),
    .X(_257_));
 sky130_fd_sc_hd__a22o_1 _542_ (.A1(\user_peripheral.pwm_level_1[2] ),
    .A2(net73),
    .B1(_257_),
    .B2(_200_),
    .X(_258_));
 sky130_fd_sc_hd__o21ai_1 _543_ (.A1(\user_peripheral.pwm_level_0[2] ),
    .A2(_241_),
    .B1(_258_),
    .Y(_259_));
 sky130_fd_sc_hd__nand2_1 _544_ (.A(_195_),
    .B(_259_),
    .Y(_260_));
 sky130_fd_sc_hd__o211a_1 _545_ (.A1(\i_spi_reg.reg_data_o[1] ),
    .A2(_195_),
    .B1(_260_),
    .C1(_186_),
    .X(_261_));
 sky130_fd_sc_hd__mux2_1 _546_ (.A0(_261_),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_249_),
    .X(_262_));
 sky130_fd_sc_hd__clkbuf_1 _547_ (.A(_262_),
    .X(_062_));
 sky130_fd_sc_hd__or2b_1 _548_ (.A(\user_peripheral.strobe_period[3] ),
    .B_N(_198_),
    .X(_263_));
 sky130_fd_sc_hd__a22o_1 _549_ (.A1(\user_peripheral.pwm_level_1[3] ),
    .A2(net73),
    .B1(_263_),
    .B2(_200_),
    .X(_264_));
 sky130_fd_sc_hd__o21ai_1 _550_ (.A1(\user_peripheral.pwm_level_0[3] ),
    .A2(_241_),
    .B1(_264_),
    .Y(_265_));
 sky130_fd_sc_hd__nand2_1 _551_ (.A(_194_),
    .B(_265_),
    .Y(_266_));
 sky130_fd_sc_hd__o211a_1 _552_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_195_),
    .B1(_266_),
    .C1(_186_),
    .X(_267_));
 sky130_fd_sc_hd__mux2_1 _553_ (.A0(_267_),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_249_),
    .X(_268_));
 sky130_fd_sc_hd__clkbuf_1 _554_ (.A(_268_),
    .X(_063_));
 sky130_fd_sc_hd__or2b_1 _555_ (.A(\user_peripheral.strobe_period[4] ),
    .B_N(\i_spi_reg.addr[1] ),
    .X(_269_));
 sky130_fd_sc_hd__a22o_1 _556_ (.A1(\user_peripheral.pwm_level_1[4] ),
    .A2(net17),
    .B1(_269_),
    .B2(_200_),
    .X(_270_));
 sky130_fd_sc_hd__o21ai_1 _557_ (.A1(\user_peripheral.pwm_level_0[4] ),
    .A2(_241_),
    .B1(_270_),
    .Y(_271_));
 sky130_fd_sc_hd__nand2_1 _558_ (.A(_194_),
    .B(_271_),
    .Y(_272_));
 sky130_fd_sc_hd__o211a_1 _559_ (.A1(\i_spi_reg.reg_data_o[3] ),
    .A2(_195_),
    .B1(_272_),
    .C1(_186_),
    .X(_273_));
 sky130_fd_sc_hd__mux2_1 _560_ (.A0(_273_),
    .A1(\i_spi_reg.reg_data_o[4] ),
    .S(_249_),
    .X(_274_));
 sky130_fd_sc_hd__clkbuf_1 _561_ (.A(_274_),
    .X(_064_));
 sky130_fd_sc_hd__or2b_1 _562_ (.A(\user_peripheral.strobe_period[5] ),
    .B_N(\i_spi_reg.addr[1] ),
    .X(_275_));
 sky130_fd_sc_hd__a22o_1 _563_ (.A1(\user_peripheral.pwm_level_1[5] ),
    .A2(net17),
    .B1(_275_),
    .B2(_200_),
    .X(_276_));
 sky130_fd_sc_hd__o21ai_1 _564_ (.A1(\user_peripheral.pwm_level_0[5] ),
    .A2(_241_),
    .B1(_276_),
    .Y(_277_));
 sky130_fd_sc_hd__nand2_1 _565_ (.A(_194_),
    .B(_277_),
    .Y(_278_));
 sky130_fd_sc_hd__o211a_1 _566_ (.A1(\i_spi_reg.reg_data_o[4] ),
    .A2(_195_),
    .B1(_278_),
    .C1(_186_),
    .X(_279_));
 sky130_fd_sc_hd__mux2_1 _567_ (.A0(_279_),
    .A1(net72),
    .S(_249_),
    .X(_280_));
 sky130_fd_sc_hd__clkbuf_1 _568_ (.A(_280_),
    .X(_065_));
 sky130_fd_sc_hd__nand2_1 _569_ (.A(_083_),
    .B(_198_),
    .Y(_281_));
 sky130_fd_sc_hd__a22o_1 _570_ (.A1(\user_peripheral.pwm_level_1[6] ),
    .A2(net17),
    .B1(_281_),
    .B2(_200_),
    .X(_282_));
 sky130_fd_sc_hd__o21ai_1 _571_ (.A1(\user_peripheral.pwm_level_0[6] ),
    .A2(_241_),
    .B1(_282_),
    .Y(_283_));
 sky130_fd_sc_hd__nand2_1 _572_ (.A(_194_),
    .B(_283_),
    .Y(_284_));
 sky130_fd_sc_hd__o211a_1 _573_ (.A1(\i_spi_reg.reg_data_o[5] ),
    .A2(_195_),
    .B1(_284_),
    .C1(_186_),
    .X(_285_));
 sky130_fd_sc_hd__mux2_1 _574_ (.A0(_285_),
    .A1(\i_spi_reg.reg_data_o[6] ),
    .S(_249_),
    .X(_286_));
 sky130_fd_sc_hd__clkbuf_1 _575_ (.A(_286_),
    .X(_066_));
 sky130_fd_sc_hd__nand2_1 _576_ (.A(_085_),
    .B(_198_),
    .Y(_287_));
 sky130_fd_sc_hd__a22o_1 _577_ (.A1(\user_peripheral.pwm_level_1[7] ),
    .A2(net17),
    .B1(_287_),
    .B2(_200_),
    .X(_288_));
 sky130_fd_sc_hd__o21ai_1 _578_ (.A1(\user_peripheral.pwm_level_0[7] ),
    .A2(_241_),
    .B1(_288_),
    .Y(_289_));
 sky130_fd_sc_hd__nand2_1 _579_ (.A(_194_),
    .B(_289_),
    .Y(_290_));
 sky130_fd_sc_hd__o211a_1 _580_ (.A1(\i_spi_reg.reg_data_o[6] ),
    .A2(_195_),
    .B1(_290_),
    .C1(_186_),
    .X(_291_));
 sky130_fd_sc_hd__mux2_1 _581_ (.A0(_291_),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_249_),
    .X(_292_));
 sky130_fd_sc_hd__clkbuf_1 _582_ (.A(_292_),
    .X(_067_));
 sky130_fd_sc_hd__nor2_1 _583_ (.A(_075_),
    .B(_246_),
    .Y(_293_));
 sky130_fd_sc_hd__mux2_1 _584_ (.A0(_293_),
    .A1(_246_),
    .S(\i_spi_reg.buffer_counter[0] ),
    .X(_294_));
 sky130_fd_sc_hd__clkbuf_1 _585_ (.A(_294_),
    .X(_068_));
 sky130_fd_sc_hd__and3_1 _586_ (.A(_182_),
    .B(_247_),
    .C(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(_295_));
 sky130_fd_sc_hd__and3_1 _587_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(_295_),
    .X(_296_));
 sky130_fd_sc_hd__a21oi_1 _588_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_295_),
    .B1(net66),
    .Y(_297_));
 sky130_fd_sc_hd__nor2_1 _589_ (.A(_296_),
    .B(_297_),
    .Y(_069_));
 sky130_fd_sc_hd__nand4_2 _590_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(_295_),
    .Y(_298_));
 sky130_fd_sc_hd__o21a_1 _591_ (.A1(net65),
    .A2(_296_),
    .B1(_298_),
    .X(_070_));
 sky130_fd_sc_hd__nand2_1 _592_ (.A(net55),
    .B(_298_),
    .Y(_299_));
 sky130_fd_sc_hd__or2_1 _593_ (.A(net55),
    .B(_298_),
    .X(_300_));
 sky130_fd_sc_hd__a21oi_1 _594_ (.A1(_299_),
    .A2(_300_),
    .B1(_075_),
    .Y(_071_));
 sky130_fd_sc_hd__dfxtp_1 _595_ (.CLK(clknet_3_2__leaf_clk),
    .D(_002_),
    .Q(\user_peripheral.strobe_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _596_ (.CLK(clknet_3_2__leaf_clk),
    .D(_003_),
    .Q(\user_peripheral.strobe_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _597_ (.CLK(clknet_3_3__leaf_clk),
    .D(_004_),
    .Q(\user_peripheral.strobe_count[2] ));
 sky130_fd_sc_hd__dfxtp_1 _598_ (.CLK(clknet_3_3__leaf_clk),
    .D(_005_),
    .Q(\user_peripheral.strobe_count[3] ));
 sky130_fd_sc_hd__dfxtp_1 _599_ (.CLK(clknet_3_6__leaf_clk),
    .D(_006_),
    .Q(\user_peripheral.strobe_count[4] ));
 sky130_fd_sc_hd__dfxtp_1 _600_ (.CLK(clknet_3_6__leaf_clk),
    .D(_007_),
    .Q(\user_peripheral.strobe_count[5] ));
 sky130_fd_sc_hd__dfxtp_1 _601_ (.CLK(clknet_3_6__leaf_clk),
    .D(_008_),
    .Q(\user_peripheral.strobe_count[6] ));
 sky130_fd_sc_hd__dfxtp_1 _602_ (.CLK(clknet_3_6__leaf_clk),
    .D(_009_),
    .Q(\user_peripheral.strobe_count[7] ));
 sky130_fd_sc_hd__dfxtp_1 _603_ (.CLK(clknet_3_2__leaf_clk),
    .D(net39),
    .Q(\user_peripheral.strobe_count[8] ));
 sky130_fd_sc_hd__conb_1 _603__39 (.LO(net39));
 sky130_fd_sc_hd__dfxtp_1 _604_ (.CLK(clknet_3_3__leaf_clk),
    .D(net38),
    .Q(\user_peripheral.strobe_count[9] ));
 sky130_fd_sc_hd__conb_1 _604__38 (.LO(net38));
 sky130_fd_sc_hd__dfxtp_1 _605_ (.CLK(clknet_3_3__leaf_clk),
    .D(net37),
    .Q(\user_peripheral.strobe_count[10] ));
 sky130_fd_sc_hd__conb_1 _605__37 (.LO(net37));
 sky130_fd_sc_hd__dfxtp_1 _606_ (.CLK(clknet_3_3__leaf_clk),
    .D(net36),
    .Q(\user_peripheral.strobe_count[11] ));
 sky130_fd_sc_hd__conb_1 _606__36 (.LO(net36));
 sky130_fd_sc_hd__dfxtp_1 _607_ (.CLK(clknet_3_2__leaf_clk),
    .D(net35),
    .Q(\user_peripheral.strobe_count[12] ));
 sky130_fd_sc_hd__conb_1 _607__35 (.LO(net35));
 sky130_fd_sc_hd__dfxtp_1 _608_ (.CLK(clknet_3_2__leaf_clk),
    .D(net34),
    .Q(\user_peripheral.strobe_count[13] ));
 sky130_fd_sc_hd__conb_1 _608__34 (.LO(net34));
 sky130_fd_sc_hd__dfxtp_1 _609_ (.CLK(clknet_3_2__leaf_clk),
    .D(net33),
    .Q(\user_peripheral.strobe_count[14] ));
 sky130_fd_sc_hd__conb_1 _609__33 (.LO(net33));
 sky130_fd_sc_hd__dfxtp_1 _610_ (.CLK(clknet_3_2__leaf_clk),
    .D(net32),
    .Q(\user_peripheral.strobe_count[15] ));
 sky130_fd_sc_hd__conb_1 _610__32 (.LO(net32));
 sky130_fd_sc_hd__dfxtp_1 _611_ (.CLK(clknet_3_7__leaf_clk),
    .D(net4),
    .Q(\synchronizer_spi_mosi_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _612_ (.CLK(clknet_3_7__leaf_clk),
    .D(net43),
    .Q(\i_spi_reg.spi_mosi ));
 sky130_fd_sc_hd__dfxtp_1 _613_ (.CLK(net41),
    .D(net1),
    .Q(\i_spi_reg.falling_edge_detector_sof.rstb ));
 sky130_fd_sc_hd__dfxtp_1 _614_ (.CLK(clknet_3_0__leaf_clk),
    .D(net3),
    .Q(\synchronizer_spi_clk_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _615_ (.CLK(clknet_3_0__leaf_clk),
    .D(net44),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data ));
 sky130_fd_sc_hd__dfxtp_1 _616_ (.CLK(clknet_3_2__leaf_clk),
    .D(net2),
    .Q(\synchronizer_spi_cs_n_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _617_ (.CLK(clknet_3_0__leaf_clk),
    .D(net42),
    .Q(\i_spi_reg.falling_edge_detector_sof.data ));
 sky130_fd_sc_hd__dfxtp_1 _618_ (.CLK(clknet_3_5__leaf_clk),
    .D(_018_),
    .Q(\user_peripheral.pwm_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _619_ (.CLK(clknet_3_5__leaf_clk),
    .D(_019_),
    .Q(\user_peripheral.pwm_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _620_ (.CLK(clknet_3_5__leaf_clk),
    .D(_020_),
    .Q(\user_peripheral.pwm_count[2] ));
 sky130_fd_sc_hd__dfxtp_1 _621_ (.CLK(clknet_3_5__leaf_clk),
    .D(_021_),
    .Q(\user_peripheral.pwm_count[3] ));
 sky130_fd_sc_hd__dfxtp_1 _622_ (.CLK(clknet_3_5__leaf_clk),
    .D(_022_),
    .Q(\user_peripheral.pwm_count[4] ));
 sky130_fd_sc_hd__dfxtp_1 _623_ (.CLK(clknet_3_5__leaf_clk),
    .D(_023_),
    .Q(\user_peripheral.pwm_count[5] ));
 sky130_fd_sc_hd__dfxtp_1 _624_ (.CLK(clknet_3_7__leaf_clk),
    .D(net51),
    .Q(\user_peripheral.pwm_count[6] ));
 sky130_fd_sc_hd__dfxtp_1 _625_ (.CLK(clknet_3_7__leaf_clk),
    .D(_025_),
    .Q(\user_peripheral.pwm_count[7] ));
 sky130_fd_sc_hd__dfxtp_2 _626_ (.CLK(clknet_3_7__leaf_clk),
    .D(_026_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_2 _627_ (.CLK(clknet_3_7__leaf_clk),
    .D(_027_),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_2 _628_ (.CLK(clknet_3_0__leaf_clk),
    .D(_028_),
    .RESET_B(net14),
    .Q(\i_spi_reg.state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _629_ (.CLK(clknet_3_1__leaf_clk),
    .D(_029_),
    .RESET_B(net15),
    .Q(\i_spi_reg.state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _630_ (.CLK(clknet_3_0__leaf_clk),
    .D(_030_),
    .RESET_B(net14),
    .Q(\i_spi_reg.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _631_ (.CLK(clknet_3_4__leaf_clk),
    .D(_031_),
    .Q(\user_peripheral.pwm_level_0[0] ));
 sky130_fd_sc_hd__dfxtp_1 _632_ (.CLK(clknet_3_4__leaf_clk),
    .D(_032_),
    .Q(\user_peripheral.pwm_level_0[1] ));
 sky130_fd_sc_hd__dfxtp_1 _633_ (.CLK(clknet_3_4__leaf_clk),
    .D(_033_),
    .Q(\user_peripheral.pwm_level_0[2] ));
 sky130_fd_sc_hd__dfxtp_1 _634_ (.CLK(clknet_3_4__leaf_clk),
    .D(_034_),
    .Q(\user_peripheral.pwm_level_0[3] ));
 sky130_fd_sc_hd__dfxtp_1 _635_ (.CLK(clknet_3_5__leaf_clk),
    .D(_035_),
    .Q(\user_peripheral.pwm_level_0[4] ));
 sky130_fd_sc_hd__dfxtp_1 _636_ (.CLK(clknet_3_6__leaf_clk),
    .D(_036_),
    .Q(\user_peripheral.pwm_level_0[5] ));
 sky130_fd_sc_hd__dfxtp_1 _637_ (.CLK(clknet_3_7__leaf_clk),
    .D(_037_),
    .Q(\user_peripheral.pwm_level_0[6] ));
 sky130_fd_sc_hd__dfxtp_1 _638_ (.CLK(clknet_3_7__leaf_clk),
    .D(_038_),
    .Q(\user_peripheral.pwm_level_0[7] ));
 sky130_fd_sc_hd__dfxtp_1 _639_ (.CLK(clknet_3_4__leaf_clk),
    .D(_039_),
    .Q(\user_peripheral.pwm_level_1[0] ));
 sky130_fd_sc_hd__dfxtp_1 _640_ (.CLK(clknet_3_4__leaf_clk),
    .D(_040_),
    .Q(\user_peripheral.pwm_level_1[1] ));
 sky130_fd_sc_hd__dfxtp_1 _641_ (.CLK(clknet_3_4__leaf_clk),
    .D(_041_),
    .Q(\user_peripheral.pwm_level_1[2] ));
 sky130_fd_sc_hd__dfxtp_1 _642_ (.CLK(clknet_3_5__leaf_clk),
    .D(_042_),
    .Q(\user_peripheral.pwm_level_1[3] ));
 sky130_fd_sc_hd__dfxtp_1 _643_ (.CLK(clknet_3_4__leaf_clk),
    .D(_043_),
    .Q(\user_peripheral.pwm_level_1[4] ));
 sky130_fd_sc_hd__dfxtp_1 _644_ (.CLK(clknet_3_7__leaf_clk),
    .D(_044_),
    .Q(\user_peripheral.pwm_level_1[5] ));
 sky130_fd_sc_hd__dfxtp_1 _645_ (.CLK(clknet_3_6__leaf_clk),
    .D(_045_),
    .Q(\user_peripheral.pwm_level_1[6] ));
 sky130_fd_sc_hd__dfxtp_1 _646_ (.CLK(clknet_3_6__leaf_clk),
    .D(_046_),
    .Q(\user_peripheral.pwm_level_1[7] ));
 sky130_fd_sc_hd__dfxtp_1 _647_ (.CLK(clknet_3_3__leaf_clk),
    .D(net59),
    .Q(\user_peripheral.strobe_period[0] ));
 sky130_fd_sc_hd__dfxtp_1 _648_ (.CLK(clknet_3_1__leaf_clk),
    .D(_048_),
    .Q(\user_peripheral.strobe_period[1] ));
 sky130_fd_sc_hd__dfxtp_1 _649_ (.CLK(clknet_3_1__leaf_clk),
    .D(_049_),
    .Q(\user_peripheral.strobe_period[2] ));
 sky130_fd_sc_hd__dfxtp_1 _650_ (.CLK(clknet_3_1__leaf_clk),
    .D(_050_),
    .Q(\user_peripheral.strobe_period[3] ));
 sky130_fd_sc_hd__dfxtp_1 _651_ (.CLK(clknet_3_3__leaf_clk),
    .D(_051_),
    .Q(\user_peripheral.strobe_period[4] ));
 sky130_fd_sc_hd__dfxtp_1 _652_ (.CLK(clknet_3_3__leaf_clk),
    .D(_052_),
    .Q(\user_peripheral.strobe_period[5] ));
 sky130_fd_sc_hd__dfxtp_1 _653_ (.CLK(clknet_3_3__leaf_clk),
    .D(net49),
    .Q(\user_peripheral.strobe_period[6] ));
 sky130_fd_sc_hd__dfxtp_1 _654_ (.CLK(clknet_3_3__leaf_clk),
    .D(net54),
    .Q(\user_peripheral.strobe_period[7] ));
 sky130_fd_sc_hd__dfrtp_1 _655_ (.CLK(clknet_3_4__leaf_clk),
    .D(_055_),
    .RESET_B(net16),
    .Q(\i_spi_reg.addr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _656_ (.CLK(clknet_3_1__leaf_clk),
    .D(_056_),
    .RESET_B(net16),
    .Q(\i_spi_reg.addr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _657_ (.CLK(clknet_3_1__leaf_clk),
    .D(_057_),
    .RESET_B(net16),
    .Q(\i_spi_reg.addr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _658_ (.CLK(clknet_3_1__leaf_clk),
    .D(_058_),
    .RESET_B(net16),
    .Q(\i_spi_reg.addr[3] ));
 sky130_fd_sc_hd__dfrtp_4 _659_ (.CLK(clknet_3_0__leaf_clk),
    .D(_000_),
    .RESET_B(net16),
    .Q(\i_spi_reg.dv ));
 sky130_fd_sc_hd__dfrtp_1 _660_ (.CLK(clknet_3_0__leaf_clk),
    .D(_059_),
    .RESET_B(net14),
    .Q(\i_spi_reg.reg_rw ));
 sky130_fd_sc_hd__dfrtp_2 _661_ (.CLK(clknet_3_1__leaf_clk),
    .D(_060_),
    .RESET_B(net15),
    .Q(\i_spi_reg.reg_data_o[0] ));
 sky130_fd_sc_hd__dfrtp_4 _662_ (.CLK(clknet_3_0__leaf_clk),
    .D(_061_),
    .RESET_B(net14),
    .Q(\i_spi_reg.reg_data_o[1] ));
 sky130_fd_sc_hd__dfrtp_1 _663_ (.CLK(clknet_3_1__leaf_clk),
    .D(_062_),
    .RESET_B(net15),
    .Q(\i_spi_reg.reg_data_o[2] ));
 sky130_fd_sc_hd__dfrtp_2 _664_ (.CLK(clknet_3_1__leaf_clk),
    .D(_063_),
    .RESET_B(net15),
    .Q(\i_spi_reg.reg_data_o[3] ));
 sky130_fd_sc_hd__dfrtp_1 _665_ (.CLK(clknet_3_0__leaf_clk),
    .D(_064_),
    .RESET_B(net14),
    .Q(\i_spi_reg.reg_data_o[4] ));
 sky130_fd_sc_hd__dfrtp_1 _666_ (.CLK(clknet_3_2__leaf_clk),
    .D(_065_),
    .RESET_B(net15),
    .Q(\i_spi_reg.reg_data_o[5] ));
 sky130_fd_sc_hd__dfrtp_1 _667_ (.CLK(clknet_3_2__leaf_clk),
    .D(_066_),
    .RESET_B(net15),
    .Q(\i_spi_reg.reg_data_o[6] ));
 sky130_fd_sc_hd__dfrtp_4 _668_ (.CLK(clknet_3_0__leaf_clk),
    .D(_067_),
    .RESET_B(net14),
    .Q(\i_spi_reg.reg_data_o[7] ));
 sky130_fd_sc_hd__dfrtp_4 _669_ (.CLK(clknet_3_0__leaf_clk),
    .D(_068_),
    .RESET_B(net14),
    .Q(\i_spi_reg.buffer_counter[0] ));
 sky130_fd_sc_hd__dfrtp_2 _670_ (.CLK(clknet_3_0__leaf_clk),
    .D(_069_),
    .RESET_B(net14),
    .Q(\i_spi_reg.buffer_counter[1] ));
 sky130_fd_sc_hd__dfrtp_2 _671_ (.CLK(clknet_3_0__leaf_clk),
    .D(_070_),
    .RESET_B(net16),
    .Q(\i_spi_reg.buffer_counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _672_ (.CLK(clknet_3_1__leaf_clk),
    .D(_071_),
    .RESET_B(net15),
    .Q(\i_spi_reg.buffer_counter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _673_ (.CLK(clknet_3_0__leaf_clk),
    .D(net46),
    .RESET_B(net14),
    .Q(\i_spi_reg.falling_edge_detector_sof.data_dly ));
 sky130_fd_sc_hd__dfrtp_1 _674_ (.CLK(clknet_3_0__leaf_clk),
    .D(net45),
    .RESET_B(net14),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ));
 sky130_fd_sc_hd__clkbuf_1 _698_ (.A(net12),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 _699_ (.A(net13),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 _700_ (.A(net12),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 _701_ (.A(net13),
    .X(net9));
 sky130_fd_sc_hd__buf_1 _702_ (.A(net12),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 _703_ (.A(net13),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 fanout14 (.A(net15),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_4 fanout15 (.A(net16),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_4 fanout16 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\synchronizer_spi_cs_n_inst.data_sync[1] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(_024_),
    .X(net51));
 sky130_fd_sc_hd__buf_1 hold11 (.A(\i_spi_reg.reg_data_o[5] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\user_peripheral.strobe_period[7] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(_054_),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\i_spi_reg.buffer_counter[3] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\user_peripheral.pwm_count[4] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(_140_),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\user_peripheral.strobe_period[0] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(_047_),
    .X(net59));
 sky130_fd_sc_hd__buf_1 hold19 (.A(\i_spi_reg.reg_data_o[4] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\synchronizer_spi_mosi_inst.data_sync[1] ),
    .X(net43));
 sky130_fd_sc_hd__buf_1 hold20 (.A(\i_spi_reg.reg_data_o[2] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\user_peripheral.pwm_count[0] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\user_peripheral.pwm_count[3] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(net12),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\i_spi_reg.buffer_counter[2] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\i_spi_reg.buffer_counter[1] ),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\i_spi_reg.reg_data_o[0] ),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\i_spi_reg.reg_data_o[3] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\i_spi_reg.reg_data_o[1] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\i_spi_reg.reg_data_o[6] ),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\synchronizer_spi_clk_inst.data_sync[1] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\i_spi_reg.reg_data_o[3] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\i_spi_reg.reg_data_o[5] ),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\user_peripheral.pwm_count[2] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\user_peripheral.strobe_period[6] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(_053_),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\user_peripheral.pwm_count[6] ),
    .X(net50));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(uio_in[4]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(uio_in[5]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(uio_in[6]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 max_cap1 (.A(_212_),
    .X(net73));
 sky130_fd_sc_hd__clkbuf_2 max_cap17 (.A(net73),
    .X(net17));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(uo_out[4]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(uo_out[5]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(uo_out[6]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(uo_out[7]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(uio_out[3]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(uo_out[0]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(uo_out[1]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(uo_out[2]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(uo_out[3]));
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
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_40 (.HI(net40));
 assign uio_oe[0] = net18;
 assign uio_oe[1] = net19;
 assign uio_oe[2] = net20;
 assign uio_oe[3] = net40;
 assign uio_oe[4] = net21;
 assign uio_oe[5] = net22;
 assign uio_oe[6] = net23;
 assign uio_oe[7] = net24;
 assign uio_out[0] = net25;
 assign uio_out[1] = net26;
 assign uio_out[2] = net27;
 assign uio_out[4] = net28;
 assign uio_out[5] = net29;
 assign uio_out[6] = net30;
 assign uio_out[7] = net31;
endmodule

