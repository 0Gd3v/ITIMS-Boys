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

 wire net13;
 wire net14;
 wire net15;
 wire net32;
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
 wire _000_;
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
 wire net2;
 wire net3;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
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
 wire net74;
 wire net75;
 wire net8;
 wire net9;
 wire \synchronizer_spi_clk_inst.data_sync[1] ;
 wire \synchronizer_spi_cs_n_inst.data_sync[1] ;
 wire \synchronizer_spi_mosi_inst.data_sync[1] ;
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
 sky130_fd_sc_hd__decap_8 FILLER_0_0_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_195 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_10_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_251 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_10_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_105 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_11_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_15 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_193 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_199 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_203 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_215 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_112 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_195 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_215 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_227 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_239 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_309 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_329 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_89 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_98 ();
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
 sky130_fd_sc_hd__decap_3 FILLER_0_20_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_195 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_49 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_61 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_79 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_134 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_178 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_190 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_202 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_214 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_222 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_112 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_162 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_186 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_194 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_233 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_212 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_261 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_92 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_105 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_203 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_215 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_227 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_239 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_289 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_119 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_147 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_158 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_172 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_203 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_215 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_329 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_119 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_166 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_211 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_223 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_243 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_289 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_111 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_140 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_174 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_196 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_234 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_271 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_98 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_147 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_168 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_213 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_236 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_28_246 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_273 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_285 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_297 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_94 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_140 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_166 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_190 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_215 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_219 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_233 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_245 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_84 ();
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
 sky130_fd_sc_hd__decap_4 FILLER_0_30_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_193 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_203 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_210 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_270 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_291 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_303 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_79 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_222 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_237 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_241 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_255 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_276 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_86 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_158 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_273 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_285 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_297 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_333 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_32_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_32_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_129 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_138 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_33_185 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_33_203 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_225 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_33_243 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_257 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_33_269 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_33_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_33_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_150 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_34_182 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_34_193 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_205 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_34_234 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_34_242 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_270 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_282 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_294 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_34_306 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_34_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_34_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_34_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_35_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_35_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_35_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_35_160 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_35_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_202 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_208 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_35_222 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_35_243 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_251 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_263 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_35_275 ();
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
 sky130_fd_sc_hd__decap_3 FILLER_0_35_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_36_106 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_36_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_36_148 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_36_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_209 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_234 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_246 ();
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
 sky130_fd_sc_hd__decap_8 FILLER_0_36_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_36_73 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_36_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_37_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_111 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_144 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_37_165 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_201 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_37_221 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_279 ();
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
 sky130_fd_sc_hd__decap_8 FILLER_0_37_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_37_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_38_117 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_38_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_195 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_38_241 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_250 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_253 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_277 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_309 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_38_321 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_53 ();
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
 sky130_fd_sc_hd__buf_2 _214_ (.A(\i_spi_reg.state[2] ),
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
 sky130_fd_sc_hd__inv_2 _228_ (.A(net41),
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
 sky130_fd_sc_hd__inv_2 _249_ (.A(net69),
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
 sky130_fd_sc_hd__clkbuf_4 _256_ (.A(_092_),
    .X(_093_));
 sky130_fd_sc_hd__o211ai_4 _257_ (.A1(_085_),
    .A2(_088_),
    .B1(_093_),
    .C1(net6),
    .Y(_094_));
 sky130_fd_sc_hd__or2b_1 _258_ (.A(_061_),
    .B_N(_094_),
    .X(_095_));
 sky130_fd_sc_hd__clkbuf_4 _259_ (.A(_061_),
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
 sky130_fd_sc_hd__o211a_1 _264_ (.A1(net50),
    .A2(_095_),
    .B1(_099_),
    .C1(_100_),
    .X(_002_));
 sky130_fd_sc_hd__inv_2 _265__1 (.A(clknet_3_5__leaf_clk),
    .Y(net33));
 sky130_fd_sc_hd__or4b_1 _266_ (.A(\user_peripheral.bit_count[2] ),
    .B(\user_peripheral.bit_count[1] ),
    .C(\user_peripheral.bit_count[3] ),
    .D_N(\user_peripheral.bit_count[0] ),
    .X(_101_));
 sky130_fd_sc_hd__inv_2 _267_ (.A(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__a21oi_1 _268_ (.A1(_095_),
    .A2(_102_),
    .B1(net44),
    .Y(_103_));
 sky130_fd_sc_hd__o21ai_1 _269_ (.A1(_096_),
    .A2(_103_),
    .B1(_100_),
    .Y(_003_));
 sky130_fd_sc_hd__or2_2 _270_ (.A(_085_),
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
 sky130_fd_sc_hd__or4_2 _284_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[3] ),
    .D(\i_spi_reg.buffer_counter[2] ),
    .X(_116_));
 sky130_fd_sc_hd__nand2_1 _285_ (.A(_054_),
    .B(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__a22oi_2 _286_ (.A1(_110_),
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
 sky130_fd_sc_hd__o211a_1 _303_ (.A1(net71),
    .A2(_127_),
    .B1(_130_),
    .C1(_100_),
    .X(_010_));
 sky130_fd_sc_hd__a21bo_1 _304_ (.A1(\i_spi_reg.reg_data_o[2] ),
    .A2(_129_),
    .B1_N(net11),
    .X(_131_));
 sky130_fd_sc_hd__a21o_1 _305_ (.A1(net45),
    .A2(_127_),
    .B1(_131_),
    .X(_011_));
 sky130_fd_sc_hd__or2_1 _306_ (.A(\user_peripheral.clk_divider[3] ),
    .B(_129_),
    .X(_132_));
 sky130_fd_sc_hd__o211a_1 _307_ (.A1(net72),
    .A2(_127_),
    .B1(_132_),
    .C1(_100_),
    .X(_012_));
 sky130_fd_sc_hd__nand2_1 _308_ (.A(_062_),
    .B(_127_),
    .Y(_133_));
 sky130_fd_sc_hd__o211a_1 _309_ (.A1(net59),
    .A2(_127_),
    .B1(_133_),
    .C1(_100_),
    .X(_013_));
 sky130_fd_sc_hd__nand2_1 _310_ (.A(_068_),
    .B(_091_),
    .Y(_134_));
 sky130_fd_sc_hd__o211a_1 _311_ (.A1(net55),
    .A2(_127_),
    .B1(_134_),
    .C1(_100_),
    .X(_014_));
 sky130_fd_sc_hd__nand2_1 _312_ (.A(_066_),
    .B(_091_),
    .Y(_135_));
 sky130_fd_sc_hd__o211a_1 _313_ (.A1(net63),
    .A2(_127_),
    .B1(_135_),
    .C1(_100_),
    .X(_015_));
 sky130_fd_sc_hd__or2_1 _314_ (.A(\user_peripheral.clk_divider[7] ),
    .B(_129_),
    .X(_136_));
 sky130_fd_sc_hd__o211a_1 _315_ (.A1(net67),
    .A2(_127_),
    .B1(_136_),
    .C1(_100_),
    .X(_016_));
 sky130_fd_sc_hd__or2b_2 _316_ (.A(_061_),
    .B_N(net12),
    .X(_137_));
 sky130_fd_sc_hd__a21oi_4 _317_ (.A1(_104_),
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
 sky130_fd_sc_hd__o21ai_1 _331_ (.A1(net62),
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
 sky130_fd_sc_hd__o21ai_1 _334_ (.A1(net54),
    .A2(_148_),
    .B1(_138_),
    .Y(_151_));
 sky130_fd_sc_hd__nor2_1 _335_ (.A(_150_),
    .B(_151_),
    .Y(_021_));
 sky130_fd_sc_hd__and2_1 _336_ (.A(\user_peripheral.div_count[5] ),
    .B(_150_),
    .X(_152_));
 sky130_fd_sc_hd__o21ai_1 _337_ (.A1(net65),
    .A2(_150_),
    .B1(_138_),
    .Y(_153_));
 sky130_fd_sc_hd__nor2_1 _338_ (.A(_152_),
    .B(_153_),
    .Y(_022_));
 sky130_fd_sc_hd__nand2_1 _339_ (.A(net66),
    .B(_152_),
    .Y(_154_));
 sky130_fd_sc_hd__o211a_1 _340_ (.A1(net66),
    .A2(_152_),
    .B1(_154_),
    .C1(_138_),
    .X(_023_));
 sky130_fd_sc_hd__a21boi_1 _341_ (.A1(_065_),
    .A2(_154_),
    .B1_N(_138_),
    .Y(_024_));
 sky130_fd_sc_hd__xor2_1 _342_ (.A(net68),
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
    .B1(net73),
    .X(_157_));
 sky130_fd_sc_hd__o21ba_1 _346_ (.A1(_156_),
    .A2(_157_),
    .B1_N(_137_),
    .X(_026_));
 sky130_fd_sc_hd__o21bai_1 _347_ (.A1(net39),
    .A2(_156_),
    .B1_N(_137_),
    .Y(_158_));
 sky130_fd_sc_hd__a21oi_1 _348_ (.A1(net39),
    .A2(_156_),
    .B1(_158_),
    .Y(_027_));
 sky130_fd_sc_hd__and2_1 _349_ (.A(\i_spi_reg.reg_data_o[0] ),
    .B(_096_),
    .X(_159_));
 sky130_fd_sc_hd__and2_1 _350_ (.A(net12),
    .B(_095_),
    .X(_160_));
 sky130_fd_sc_hd__clkbuf_4 _351_ (.A(_160_),
    .X(_161_));
 sky130_fd_sc_hd__mux2_1 _352_ (.A0(net52),
    .A1(_159_),
    .S(_161_),
    .X(_162_));
 sky130_fd_sc_hd__clkbuf_1 _353_ (.A(_162_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _354_ (.A0(\user_peripheral.shift_reg[0] ),
    .A1(\i_spi_reg.reg_data_o[1] ),
    .S(_096_),
    .X(_163_));
 sky130_fd_sc_hd__mux2_1 _355_ (.A0(net48),
    .A1(_163_),
    .S(_161_),
    .X(_164_));
 sky130_fd_sc_hd__clkbuf_1 _356_ (.A(_164_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _357_ (.A0(\user_peripheral.shift_reg[1] ),
    .A1(\i_spi_reg.reg_data_o[2] ),
    .S(_096_),
    .X(_165_));
 sky130_fd_sc_hd__mux2_1 _358_ (.A0(net49),
    .A1(_165_),
    .S(_161_),
    .X(_166_));
 sky130_fd_sc_hd__clkbuf_1 _359_ (.A(_166_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _360_ (.A0(\user_peripheral.shift_reg[2] ),
    .A1(\i_spi_reg.reg_data_o[3] ),
    .S(_096_),
    .X(_167_));
 sky130_fd_sc_hd__mux2_1 _361_ (.A0(net47),
    .A1(_167_),
    .S(_161_),
    .X(_168_));
 sky130_fd_sc_hd__clkbuf_1 _362_ (.A(_168_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _363_ (.A0(\user_peripheral.shift_reg[3] ),
    .A1(\i_spi_reg.reg_data_o[4] ),
    .S(_096_),
    .X(_169_));
 sky130_fd_sc_hd__mux2_1 _364_ (.A0(net51),
    .A1(_169_),
    .S(_161_),
    .X(_170_));
 sky130_fd_sc_hd__clkbuf_1 _365_ (.A(_170_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _366_ (.A0(\user_peripheral.shift_reg[4] ),
    .A1(\i_spi_reg.reg_data_o[5] ),
    .S(_096_),
    .X(_171_));
 sky130_fd_sc_hd__mux2_1 _367_ (.A0(net53),
    .A1(_171_),
    .S(_161_),
    .X(_172_));
 sky130_fd_sc_hd__clkbuf_1 _368_ (.A(_172_),
    .X(_033_));
 sky130_fd_sc_hd__mux2_1 _369_ (.A0(\user_peripheral.shift_reg[5] ),
    .A1(\i_spi_reg.reg_data_o[6] ),
    .S(_096_),
    .X(_173_));
 sky130_fd_sc_hd__mux2_1 _370_ (.A0(net58),
    .A1(_173_),
    .S(_161_),
    .X(_174_));
 sky130_fd_sc_hd__clkbuf_1 _371_ (.A(_174_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _372_ (.A0(\user_peripheral.shift_reg[6] ),
    .A1(\i_spi_reg.reg_data_o[7] ),
    .S(_061_),
    .X(_175_));
 sky130_fd_sc_hd__mux2_1 _373_ (.A0(net74),
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
 sky130_fd_sc_hd__clkbuf_2 _383_ (.A(_184_),
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
    .B1(net46),
    .Y(_204_));
 sky130_fd_sc_hd__a21oi_1 _411_ (.A1(net46),
    .A2(_185_),
    .B1(_204_),
    .Y(_044_));
 sky130_fd_sc_hd__and3_1 _412_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(_185_),
    .X(_205_));
 sky130_fd_sc_hd__a21oi_1 _413_ (.A1(net46),
    .A2(_185_),
    .B1(net61),
    .Y(_206_));
 sky130_fd_sc_hd__nor2_1 _414_ (.A(_205_),
    .B(_206_),
    .Y(_045_));
 sky130_fd_sc_hd__and4_1 _415_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(_185_),
    .X(_207_));
 sky130_fd_sc_hd__o21ba_1 _416_ (.A1(net57),
    .A2(_205_),
    .B1_N(_207_),
    .X(_046_));
 sky130_fd_sc_hd__o21ai_1 _417_ (.A1(net43),
    .A2(_207_),
    .B1(_056_),
    .Y(_208_));
 sky130_fd_sc_hd__a21oi_1 _418_ (.A1(net43),
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
 sky130_fd_sc_hd__mux2_1 _425_ (.A0(net75),
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
 sky130_fd_sc_hd__dfxtp_1 _429_ (.CLK(clknet_3_6__leaf_clk),
    .D(_002_),
    .Q(\user_peripheral.bit_count[3] ));
 sky130_fd_sc_hd__dfxtp_1 _430_ (.CLK(net33),
    .D(net1),
    .Q(\i_spi_reg.falling_edge_detector_sof.rstb ));
 sky130_fd_sc_hd__dfxtp_1 _431_ (.CLK(clknet_3_3__leaf_clk),
    .D(_003_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_2 _432_ (.CLK(clknet_3_7__leaf_clk),
    .D(_004_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _433_ (.CLK(clknet_3_6__leaf_clk),
    .D(_005_),
    .Q(\user_peripheral.busy ));
 sky130_fd_sc_hd__dfrtp_2 _434_ (.CLK(clknet_3_1__leaf_clk),
    .D(_006_),
    .RESET_B(net10),
    .Q(\i_spi_reg.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _435_ (.CLK(clknet_3_1__leaf_clk),
    .D(_007_),
    .RESET_B(net12),
    .Q(\i_spi_reg.state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _436_ (.CLK(clknet_3_1__leaf_clk),
    .D(_008_),
    .RESET_B(net10),
    .Q(\i_spi_reg.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _437_ (.CLK(clknet_3_6__leaf_clk),
    .D(net70),
    .Q(\user_peripheral.clk_divider[0] ));
 sky130_fd_sc_hd__dfxtp_1 _438_ (.CLK(clknet_3_4__leaf_clk),
    .D(_010_),
    .Q(\user_peripheral.clk_divider[1] ));
 sky130_fd_sc_hd__dfxtp_1 _439_ (.CLK(clknet_3_3__leaf_clk),
    .D(_011_),
    .Q(\user_peripheral.clk_divider[2] ));
 sky130_fd_sc_hd__dfxtp_1 _440_ (.CLK(clknet_3_4__leaf_clk),
    .D(_012_),
    .Q(\user_peripheral.clk_divider[3] ));
 sky130_fd_sc_hd__dfxtp_1 _441_ (.CLK(clknet_3_3__leaf_clk),
    .D(net60),
    .Q(\user_peripheral.clk_divider[4] ));
 sky130_fd_sc_hd__dfxtp_1 _442_ (.CLK(clknet_3_6__leaf_clk),
    .D(net56),
    .Q(\user_peripheral.clk_divider[5] ));
 sky130_fd_sc_hd__dfxtp_1 _443_ (.CLK(clknet_3_6__leaf_clk),
    .D(net64),
    .Q(\user_peripheral.clk_divider[6] ));
 sky130_fd_sc_hd__dfxtp_1 _444_ (.CLK(clknet_3_4__leaf_clk),
    .D(_016_),
    .Q(\user_peripheral.clk_divider[7] ));
 sky130_fd_sc_hd__dfxtp_2 _445_ (.CLK(clknet_3_7__leaf_clk),
    .D(_017_),
    .Q(\user_peripheral.div_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _446_ (.CLK(clknet_3_7__leaf_clk),
    .D(_018_),
    .Q(\user_peripheral.div_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _447_ (.CLK(clknet_3_7__leaf_clk),
    .D(_019_),
    .Q(\user_peripheral.div_count[2] ));
 sky130_fd_sc_hd__dfxtp_1 _448_ (.CLK(clknet_3_7__leaf_clk),
    .D(_020_),
    .Q(\user_peripheral.div_count[3] ));
 sky130_fd_sc_hd__dfxtp_1 _449_ (.CLK(clknet_3_5__leaf_clk),
    .D(_021_),
    .Q(\user_peripheral.div_count[4] ));
 sky130_fd_sc_hd__dfxtp_1 _450_ (.CLK(clknet_3_5__leaf_clk),
    .D(_022_),
    .Q(\user_peripheral.div_count[5] ));
 sky130_fd_sc_hd__dfxtp_1 _451_ (.CLK(clknet_3_5__leaf_clk),
    .D(_023_),
    .Q(\user_peripheral.div_count[6] ));
 sky130_fd_sc_hd__dfxtp_1 _452_ (.CLK(clknet_3_5__leaf_clk),
    .D(net42),
    .Q(\user_peripheral.div_count[7] ));
 sky130_fd_sc_hd__dfxtp_1 _453_ (.CLK(clknet_3_7__leaf_clk),
    .D(_025_),
    .Q(\user_peripheral.bit_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _454_ (.CLK(clknet_3_6__leaf_clk),
    .D(_026_),
    .Q(\user_peripheral.bit_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _455_ (.CLK(clknet_3_7__leaf_clk),
    .D(net40),
    .Q(\user_peripheral.bit_count[2] ));
 sky130_fd_sc_hd__dfxtp_1 _456_ (.CLK(clknet_3_2__leaf_clk),
    .D(_028_),
    .Q(\user_peripheral.shift_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _457_ (.CLK(clknet_3_2__leaf_clk),
    .D(_029_),
    .Q(\user_peripheral.shift_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _458_ (.CLK(clknet_3_2__leaf_clk),
    .D(_030_),
    .Q(\user_peripheral.shift_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _459_ (.CLK(clknet_3_2__leaf_clk),
    .D(_031_),
    .Q(\user_peripheral.shift_reg[3] ));
 sky130_fd_sc_hd__dfxtp_1 _460_ (.CLK(clknet_3_2__leaf_clk),
    .D(_032_),
    .Q(\user_peripheral.shift_reg[4] ));
 sky130_fd_sc_hd__dfxtp_1 _461_ (.CLK(clknet_3_2__leaf_clk),
    .D(_033_),
    .Q(\user_peripheral.shift_reg[5] ));
 sky130_fd_sc_hd__dfxtp_1 _462_ (.CLK(clknet_3_3__leaf_clk),
    .D(_034_),
    .Q(\user_peripheral.shift_reg[6] ));
 sky130_fd_sc_hd__dfxtp_1 _463_ (.CLK(clknet_3_6__leaf_clk),
    .D(_035_),
    .Q(net7));
 sky130_fd_sc_hd__dfrtp_2 _464_ (.CLK(clknet_3_0__leaf_clk),
    .D(_036_),
    .RESET_B(net10),
    .Q(\i_spi_reg.reg_data_o[0] ));
 sky130_fd_sc_hd__dfrtp_1 _465_ (.CLK(clknet_3_3__leaf_clk),
    .D(_037_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[1] ));
 sky130_fd_sc_hd__dfrtp_1 _466_ (.CLK(clknet_3_0__leaf_clk),
    .D(_038_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[2] ));
 sky130_fd_sc_hd__dfrtp_2 _467_ (.CLK(clknet_3_2__leaf_clk),
    .D(_039_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[3] ));
 sky130_fd_sc_hd__dfrtp_1 _468_ (.CLK(clknet_3_2__leaf_clk),
    .D(_040_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[4] ));
 sky130_fd_sc_hd__dfrtp_1 _469_ (.CLK(clknet_3_3__leaf_clk),
    .D(_041_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[5] ));
 sky130_fd_sc_hd__dfrtp_1 _470_ (.CLK(clknet_3_6__leaf_clk),
    .D(_042_),
    .RESET_B(net11),
    .Q(\i_spi_reg.reg_data_o[6] ));
 sky130_fd_sc_hd__dfrtp_2 _471_ (.CLK(clknet_3_1__leaf_clk),
    .D(_043_),
    .RESET_B(net10),
    .Q(\i_spi_reg.reg_data_o[7] ));
 sky130_fd_sc_hd__dfrtp_1 _472_ (.CLK(clknet_3_1__leaf_clk),
    .D(_044_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[0] ));
 sky130_fd_sc_hd__dfrtp_1 _473_ (.CLK(clknet_3_0__leaf_clk),
    .D(_045_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _474_ (.CLK(clknet_3_0__leaf_clk),
    .D(_046_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _475_ (.CLK(clknet_3_1__leaf_clk),
    .D(_047_),
    .RESET_B(net10),
    .Q(\i_spi_reg.buffer_counter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _476_ (.CLK(clknet_3_4__leaf_clk),
    .D(_048_),
    .RESET_B(net12),
    .Q(\i_spi_reg.addr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _477_ (.CLK(clknet_3_4__leaf_clk),
    .D(_049_),
    .RESET_B(net12),
    .Q(\i_spi_reg.addr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _478_ (.CLK(clknet_3_1__leaf_clk),
    .D(_050_),
    .RESET_B(net11),
    .Q(\i_spi_reg.addr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _479_ (.CLK(clknet_3_1__leaf_clk),
    .D(_051_),
    .RESET_B(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .Q(\i_spi_reg.addr[3] ));
 sky130_fd_sc_hd__dfrtp_1 _480_ (.CLK(clknet_3_4__leaf_clk),
    .D(_052_),
    .RESET_B(net12),
    .Q(\i_spi_reg.reg_rw ));
 sky130_fd_sc_hd__dfrtp_1 _481_ (.CLK(clknet_3_4__leaf_clk),
    .D(_000_),
    .RESET_B(net12),
    .Q(\i_spi_reg.dv ));
 sky130_fd_sc_hd__dfxtp_1 _482_ (.CLK(clknet_3_7__leaf_clk),
    .D(net4),
    .Q(\synchronizer_spi_mosi_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _483_ (.CLK(clknet_3_6__leaf_clk),
    .D(net36),
    .Q(\i_spi_reg.spi_mosi ));
 sky130_fd_sc_hd__dfxtp_1 _484_ (.CLK(clknet_3_0__leaf_clk),
    .D(net3),
    .Q(\synchronizer_spi_clk_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _485_ (.CLK(clknet_3_0__leaf_clk),
    .D(net34),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data ));
 sky130_fd_sc_hd__dfrtp_1 _486_ (.CLK(clknet_3_0__leaf_clk),
    .D(net38),
    .RESET_B(net10),
    .Q(\i_spi_reg.falling_edge_detector_sof.data_dly ));
 sky130_fd_sc_hd__dfxtp_1 _487_ (.CLK(clknet_3_0__leaf_clk),
    .D(net2),
    .Q(\synchronizer_spi_cs_n_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _488_ (.CLK(clknet_3_0__leaf_clk),
    .D(net35),
    .Q(\i_spi_reg.falling_edge_detector_sof.data ));
 sky130_fd_sc_hd__dfrtp_1 _489_ (.CLK(clknet_3_0__leaf_clk),
    .D(net37),
    .RESET_B(net10),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ));
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
 sky130_fd_sc_hd__clkbuf_4 fanout10 (.A(net11),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_4 fanout11 (.A(net12),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_4 fanout12 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net12));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\synchronizer_spi_clk_inst.data_sync[1] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\i_spi_reg.buffer_counter[3] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(net8),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\user_peripheral.clk_divider[2] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\i_spi_reg.buffer_counter[0] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\user_peripheral.shift_reg[3] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\user_peripheral.shift_reg[1] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\user_peripheral.shift_reg[2] ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\user_peripheral.bit_count[3] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\user_peripheral.shift_reg[4] ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\user_peripheral.shift_reg[0] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\synchronizer_spi_cs_n_inst.data_sync[1] ),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\user_peripheral.shift_reg[5] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\user_peripheral.div_count[4] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\i_spi_reg.reg_data_o[5] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(_014_),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\i_spi_reg.buffer_counter[2] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\user_peripheral.shift_reg[6] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\i_spi_reg.reg_data_o[4] ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(_013_),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\i_spi_reg.buffer_counter[1] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\user_peripheral.div_count[3] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\synchronizer_spi_mosi_inst.data_sync[1] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\i_spi_reg.reg_data_o[6] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(_015_),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\user_peripheral.div_count[5] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\user_peripheral.div_count[6] ),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\i_spi_reg.reg_data_o[7] ),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\user_peripheral.bit_count[0] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\user_peripheral.clk_divider[0] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(_009_),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(\i_spi_reg.reg_data_o[1] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(\i_spi_reg.reg_data_o[3] ),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(\user_peripheral.bit_count[1] ),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold41 (.A(net7),
    .X(net74));
 sky130_fd_sc_hd__dlygate4sd3_1 hold42 (.A(\i_spi_reg.addr[3] ),
    .X(net75));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\user_peripheral.bit_count[2] ),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(_027_),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\user_peripheral.div_count[7] ),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_024_),
    .X(net42));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(uio_in[4]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(uio_in[5]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(uio_in[6]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_2 max_cap9 (.A(_120_),
    .X(net9));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(uio_out[3]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(uo_out[0]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(uo_out[1]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(uo_out[2]));
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_13 (.LO(net13));
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

