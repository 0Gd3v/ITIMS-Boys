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

 wire net30;
 wire net31;
 wire net32;
 wire net44;
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
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
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
 wire net18;
 wire net19;
 wire net2;
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
 wire net3;
 wire net4;
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
 wire net8;
 wire net9;
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
 wire \user_peripheral.example_data[0] ;
 wire \user_peripheral.example_data[1] ;
 wire \user_peripheral.example_data[2] ;
 wire \user_peripheral.example_data[3] ;
 wire \user_peripheral.example_data[4] ;
 wire \user_peripheral.example_data[5] ;
 wire \user_peripheral.example_data[6] ;
 wire \user_peripheral.example_data[7] ;

 sky130_fd_sc_hd__decap_8 FILLER_0_0_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_14 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_153 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_181 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_188 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_197 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_20 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_208 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_220 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_248 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_253 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_264 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_276 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_292 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_304 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_320 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_97 ();
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
 sky130_fd_sc_hd__fill_2 FILLER_0_13_329 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_14_144 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_156 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_168 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_192 ();
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
 sky130_fd_sc_hd__fill_2 FILLER_0_15_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_129 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_150 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_177 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_189 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_197 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_216 ();
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
 sky130_fd_sc_hd__decap_3 FILLER_0_15_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_102 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_129 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_138 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_144 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_162 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_195 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_204 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_216 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_228 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_240 ();
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
 sky130_fd_sc_hd__decap_3 FILLER_0_16_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_60 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_142 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_153 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_206 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_218 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_237 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_266 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_278 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_127 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_165 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_195 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_210 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_247 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_251 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_271 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_283 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_295 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_309 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_154 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_210 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_220 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_231 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_239 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_247 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_267 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_317 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_32 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_91 ();
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
 sky130_fd_sc_hd__decap_3 FILLER_0_20_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_150 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_156 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_212 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_222 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_230 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_269 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_95 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_155 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_200 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_222 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_27 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_21_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_116 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_152 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_179 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_186 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_244 ();
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
 sky130_fd_sc_hd__decap_4 FILLER_0_22_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_89 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_192 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_203 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_222 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_250 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_274 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_31 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_205 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_231 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_256 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_273 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_285 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_297 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_223 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_231 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_254 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_268 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_109 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_118 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_127 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_201 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_210 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_235 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_275 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_287 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_299 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_104 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_117 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_240 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_248 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_260 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_272 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_68 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_92 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_217 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_241 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_250 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_291 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_303 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_307 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_309 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_333 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_28_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_150 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_211 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_243 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_255 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_267 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_275 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_332 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_93 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_30_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_187 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_30_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_193 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_205 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_217 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_223 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_237 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_249 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_261 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_195 ();
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
 sky130_fd_sc_hd__decap_3 FILLER_0_32_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_60 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_33_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_33_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_143 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_167 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_33_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_34_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_139 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_34_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_34_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_35_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_35_111 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_35_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_35_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_36_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_117 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_134 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_36_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_36_195 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_36_197 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_36_205 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_210 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36_222 ();
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
 sky130_fd_sc_hd__decap_6 FILLER_0_37_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_193 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_199 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_37_216 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_225 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_237 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_249 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_37_271 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37_279 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_281 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_293 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_317 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_37_329 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_37_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_37_6 ();
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
 sky130_ef_sc_hd__decap_12 FILLER_0_38_146 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_38_158 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_197 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_228 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_38_240 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_246 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_250 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_38_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38_305 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_38_309 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_38_321 ();
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
 sky130_fd_sc_hd__nor2_2 _134_ (.A(\i_spi_reg.state[0] ),
    .B(\i_spi_reg.state[1] ),
    .Y(_122_));
 sky130_fd_sc_hd__and3_1 _135_ (.A(\i_spi_reg.reg_data_o[7] ),
    .B(\i_spi_reg.state[2] ),
    .C(_122_),
    .X(_123_));
 sky130_fd_sc_hd__clkbuf_1 _136_ (.A(_123_),
    .X(net13));
 sky130_fd_sc_hd__or4b_4 _137_ (.A(\i_spi_reg.buffer_counter[1] ),
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
 sky130_fd_sc_hd__xnor2_2 _171_ (.A(_045_),
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
 sky130_fd_sc_hd__nor4_4 _181_ (.A(\i_spi_reg.addr[1] ),
    .B(\i_spi_reg.addr[0] ),
    .C(\i_spi_reg.addr[3] ),
    .D(\i_spi_reg.addr[2] ),
    .Y(_055_));
 sky130_fd_sc_hd__nand2_4 _182_ (.A(\i_spi_reg.dv ),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__and2_2 _183_ (.A(\i_spi_reg.dv ),
    .B(_055_),
    .X(_057_));
 sky130_fd_sc_hd__or2_1 _184_ (.A(\user_peripheral.example_data[0] ),
    .B(_057_),
    .X(_058_));
 sky130_fd_sc_hd__o211a_1 _185_ (.A1(net70),
    .A2(_056_),
    .B1(_058_),
    .C1(net27),
    .X(_002_));
 sky130_fd_sc_hd__or2_1 _186_ (.A(\user_peripheral.example_data[1] ),
    .B(_057_),
    .X(_059_));
 sky130_fd_sc_hd__o211a_1 _187_ (.A1(net67),
    .A2(_056_),
    .B1(_059_),
    .C1(net27),
    .X(_003_));
 sky130_fd_sc_hd__or2_1 _188_ (.A(\user_peripheral.example_data[2] ),
    .B(_057_),
    .X(_060_));
 sky130_fd_sc_hd__o211a_1 _189_ (.A1(net71),
    .A2(_056_),
    .B1(_060_),
    .C1(net27),
    .X(_004_));
 sky130_fd_sc_hd__or2_1 _190_ (.A(\user_peripheral.example_data[3] ),
    .B(_057_),
    .X(_061_));
 sky130_fd_sc_hd__o211a_1 _191_ (.A1(net69),
    .A2(_056_),
    .B1(_061_),
    .C1(net27),
    .X(_005_));
 sky130_fd_sc_hd__or2_1 _192_ (.A(\user_peripheral.example_data[4] ),
    .B(_057_),
    .X(_062_));
 sky130_fd_sc_hd__o211a_1 _193_ (.A1(net63),
    .A2(_056_),
    .B1(_062_),
    .C1(net26),
    .X(_006_));
 sky130_fd_sc_hd__or2_1 _194_ (.A(\user_peripheral.example_data[5] ),
    .B(_057_),
    .X(_063_));
 sky130_fd_sc_hd__o211a_1 _195_ (.A1(net59),
    .A2(_056_),
    .B1(_063_),
    .C1(net26),
    .X(_007_));
 sky130_fd_sc_hd__or2_1 _196_ (.A(\user_peripheral.example_data[6] ),
    .B(_057_),
    .X(_064_));
 sky130_fd_sc_hd__o211a_1 _197_ (.A1(net60),
    .A2(_056_),
    .B1(_064_),
    .C1(net26),
    .X(_008_));
 sky130_fd_sc_hd__or2_1 _198_ (.A(\user_peripheral.example_data[7] ),
    .B(_057_),
    .X(_065_));
 sky130_fd_sc_hd__o211a_1 _199_ (.A1(net68),
    .A2(_056_),
    .B1(_065_),
    .C1(net26),
    .X(_009_));
 sky130_fd_sc_hd__inv_2 _200__1 (.A(clknet_2_2__leaf_clk),
    .Y(net45));
 sky130_fd_sc_hd__inv_2 _201_ (.A(\i_spi_reg.spi_mosi ),
    .Y(_066_));
 sky130_fd_sc_hd__or4_1 _202_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(\i_spi_reg.buffer_counter[3] ),
    .X(_067_));
 sky130_fd_sc_hd__nor4_1 _203_ (.A(_125_),
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
    .B1(net72),
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
    .B1(net72),
    .B2(_096_),
    .X(_097_));
 sky130_fd_sc_hd__mux2_1 _240_ (.A0(\i_spi_reg.reg_data_o[7] ),
    .A1(_097_),
    .S(_076_),
    .X(_098_));
 sky130_fd_sc_hd__clkbuf_1 _241_ (.A(_098_),
    .X(_017_));
 sky130_fd_sc_hd__nor4b_2 _242_ (.A(\i_spi_reg.state[2] ),
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
 sky130_fd_sc_hd__nor2_2 _245_ (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .B(_072_),
    .Y(_101_));
 sky130_fd_sc_hd__a21oi_1 _246_ (.A1(_124_),
    .A2(_101_),
    .B1(\i_spi_reg.buffer_counter[0] ),
    .Y(_102_));
 sky130_fd_sc_hd__a21oi_1 _247_ (.A1(net65),
    .A2(_101_),
    .B1(_102_),
    .Y(_019_));
 sky130_fd_sc_hd__and3_1 _248_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(_101_),
    .X(_103_));
 sky130_fd_sc_hd__a21oi_1 _249_ (.A1(\i_spi_reg.buffer_counter[0] ),
    .A2(_101_),
    .B1(net64),
    .Y(_104_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(_103_),
    .B(_104_),
    .Y(_020_));
 sky130_fd_sc_hd__nand4_2 _251_ (.A(\i_spi_reg.buffer_counter[1] ),
    .B(\i_spi_reg.buffer_counter[0] ),
    .C(\i_spi_reg.buffer_counter[2] ),
    .D(_101_),
    .Y(_105_));
 sky130_fd_sc_hd__o21a_1 _252_ (.A1(net62),
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
 sky130_fd_sc_hd__dfxtp_1 _277_ (.CLK(clknet_2_3__leaf_clk),
    .D(net12),
    .Q(\synchronizer_spi_mosi_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _278_ (.CLK(clknet_2_3__leaf_clk),
    .D(net47),
    .Q(\i_spi_reg.spi_mosi ));
 sky130_fd_sc_hd__dfxtp_1 _279_ (.CLK(clknet_2_0__leaf_clk),
    .D(net11),
    .Q(\synchronizer_spi_clk_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_1 _280_ (.CLK(clknet_2_0__leaf_clk),
    .D(net50),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data ));
 sky130_fd_sc_hd__dfxtp_1 _281_ (.CLK(clknet_2_1__leaf_clk),
    .D(net10),
    .Q(\synchronizer_spi_cs_n_inst.data_sync[1] ));
 sky130_fd_sc_hd__dfxtp_2 _282_ (.CLK(clknet_2_0__leaf_clk),
    .D(net46),
    .Q(\i_spi_reg.falling_edge_detector_sof.data ));
 sky130_fd_sc_hd__dfxtp_1 _283_ (.CLK(clknet_2_3__leaf_clk),
    .D(_002_),
    .Q(\user_peripheral.example_data[0] ));
 sky130_fd_sc_hd__dfxtp_1 _284_ (.CLK(clknet_2_3__leaf_clk),
    .D(_003_),
    .Q(\user_peripheral.example_data[1] ));
 sky130_fd_sc_hd__dfxtp_1 _285_ (.CLK(clknet_2_3__leaf_clk),
    .D(_004_),
    .Q(\user_peripheral.example_data[2] ));
 sky130_fd_sc_hd__dfxtp_1 _286_ (.CLK(clknet_2_2__leaf_clk),
    .D(_005_),
    .Q(\user_peripheral.example_data[3] ));
 sky130_fd_sc_hd__dfxtp_1 _287_ (.CLK(clknet_2_2__leaf_clk),
    .D(_006_),
    .Q(\user_peripheral.example_data[4] ));
 sky130_fd_sc_hd__dfxtp_1 _288_ (.CLK(clknet_2_2__leaf_clk),
    .D(_007_),
    .Q(\user_peripheral.example_data[5] ));
 sky130_fd_sc_hd__dfxtp_1 _289_ (.CLK(clknet_2_0__leaf_clk),
    .D(net61),
    .Q(\user_peripheral.example_data[6] ));
 sky130_fd_sc_hd__dfxtp_1 _290_ (.CLK(clknet_2_2__leaf_clk),
    .D(_009_),
    .Q(\user_peripheral.example_data[7] ));
 sky130_fd_sc_hd__dfxtp_1 _291_ (.CLK(clknet_2_2__leaf_clk),
    .D(net2),
    .Q(\synchronizer_ui_in_inst.data_sync[1][0] ));
 sky130_fd_sc_hd__dfxtp_1 _292_ (.CLK(clknet_2_1__leaf_clk),
    .D(net3),
    .Q(\synchronizer_ui_in_inst.data_sync[1][1] ));
 sky130_fd_sc_hd__dfxtp_1 _293_ (.CLK(clknet_2_2__leaf_clk),
    .D(net4),
    .Q(\synchronizer_ui_in_inst.data_sync[1][2] ));
 sky130_fd_sc_hd__dfxtp_1 _294_ (.CLK(clknet_2_2__leaf_clk),
    .D(net5),
    .Q(\synchronizer_ui_in_inst.data_sync[1][3] ));
 sky130_fd_sc_hd__dfxtp_1 _295_ (.CLK(clknet_2_2__leaf_clk),
    .D(net6),
    .Q(\synchronizer_ui_in_inst.data_sync[1][4] ));
 sky130_fd_sc_hd__dfxtp_1 _296_ (.CLK(clknet_2_0__leaf_clk),
    .D(net7),
    .Q(\synchronizer_ui_in_inst.data_sync[1][5] ));
 sky130_fd_sc_hd__dfxtp_1 _297_ (.CLK(clknet_2_0__leaf_clk),
    .D(net8),
    .Q(\synchronizer_ui_in_inst.data_sync[1][6] ));
 sky130_fd_sc_hd__dfxtp_1 _298_ (.CLK(clknet_2_3__leaf_clk),
    .D(net9),
    .Q(\synchronizer_ui_in_inst.data_sync[1][7] ));
 sky130_fd_sc_hd__dfxtp_1 _299_ (.CLK(clknet_2_2__leaf_clk),
    .D(net51),
    .Q(\synchronizer_ui_in_inst.data_out[0] ));
 sky130_fd_sc_hd__dfxtp_1 _300_ (.CLK(clknet_2_1__leaf_clk),
    .D(net54),
    .Q(\synchronizer_ui_in_inst.data_out[1] ));
 sky130_fd_sc_hd__dfxtp_1 _301_ (.CLK(clknet_2_2__leaf_clk),
    .D(net55),
    .Q(\synchronizer_ui_in_inst.data_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _302_ (.CLK(clknet_2_2__leaf_clk),
    .D(net53),
    .Q(\synchronizer_ui_in_inst.data_out[3] ));
 sky130_fd_sc_hd__dfxtp_1 _303_ (.CLK(clknet_2_2__leaf_clk),
    .D(net52),
    .Q(\synchronizer_ui_in_inst.data_out[4] ));
 sky130_fd_sc_hd__dfxtp_1 _304_ (.CLK(clknet_2_0__leaf_clk),
    .D(net56),
    .Q(\synchronizer_ui_in_inst.data_out[5] ));
 sky130_fd_sc_hd__dfxtp_1 _305_ (.CLK(clknet_2_0__leaf_clk),
    .D(net49),
    .Q(\synchronizer_ui_in_inst.data_out[6] ));
 sky130_fd_sc_hd__dfxtp_1 _306_ (.CLK(clknet_2_3__leaf_clk),
    .D(net48),
    .Q(\synchronizer_ui_in_inst.data_out[7] ));
 sky130_fd_sc_hd__dfxtp_1 _307_ (.CLK(net45),
    .D(net1),
    .Q(\i_spi_reg.falling_edge_detector_sof.rstb ));
 sky130_fd_sc_hd__dfrtp_1 _308_ (.CLK(clknet_2_3__leaf_clk),
    .D(_010_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[0] ));
 sky130_fd_sc_hd__dfrtp_1 _309_ (.CLK(clknet_2_3__leaf_clk),
    .D(_011_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[1] ));
 sky130_fd_sc_hd__dfrtp_1 _310_ (.CLK(clknet_2_2__leaf_clk),
    .D(_012_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[2] ));
 sky130_fd_sc_hd__dfrtp_1 _311_ (.CLK(clknet_2_2__leaf_clk),
    .D(_013_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[3] ));
 sky130_fd_sc_hd__dfrtp_1 _312_ (.CLK(clknet_2_2__leaf_clk),
    .D(_014_),
    .RESET_B(net27),
    .Q(\i_spi_reg.reg_data_o[4] ));
 sky130_fd_sc_hd__dfrtp_1 _313_ (.CLK(clknet_2_0__leaf_clk),
    .D(_015_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[5] ));
 sky130_fd_sc_hd__dfrtp_1 _314_ (.CLK(clknet_2_0__leaf_clk),
    .D(_016_),
    .RESET_B(net26),
    .Q(\i_spi_reg.reg_data_o[6] ));
 sky130_fd_sc_hd__dfrtp_1 _315_ (.CLK(clknet_2_0__leaf_clk),
    .D(_017_),
    .RESET_B(net24),
    .Q(\i_spi_reg.reg_data_o[7] ));
 sky130_fd_sc_hd__dfrtp_1 _316_ (.CLK(clknet_2_0__leaf_clk),
    .D(_018_),
    .RESET_B(net24),
    .Q(\i_spi_reg.reg_rw ));
 sky130_fd_sc_hd__dfrtp_2 _317_ (.CLK(clknet_2_0__leaf_clk),
    .D(net66),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[0] ));
 sky130_fd_sc_hd__dfrtp_1 _318_ (.CLK(clknet_2_0__leaf_clk),
    .D(_020_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _319_ (.CLK(clknet_2_0__leaf_clk),
    .D(_021_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _320_ (.CLK(clknet_2_0__leaf_clk),
    .D(_022_),
    .RESET_B(net24),
    .Q(\i_spi_reg.buffer_counter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _321_ (.CLK(clknet_2_1__leaf_clk),
    .D(_023_),
    .RESET_B(net25),
    .Q(\i_spi_reg.addr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _322_ (.CLK(clknet_2_1__leaf_clk),
    .D(_024_),
    .RESET_B(net25),
    .Q(\i_spi_reg.addr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _323_ (.CLK(clknet_2_1__leaf_clk),
    .D(_025_),
    .RESET_B(net25),
    .Q(\i_spi_reg.addr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _324_ (.CLK(clknet_2_1__leaf_clk),
    .D(_026_),
    .RESET_B(net27),
    .Q(\i_spi_reg.addr[3] ));
 sky130_fd_sc_hd__dfrtp_1 _325_ (.CLK(clknet_2_1__leaf_clk),
    .D(_000_),
    .RESET_B(net24),
    .Q(\i_spi_reg.dv ));
 sky130_fd_sc_hd__dfrtp_1 _326_ (.CLK(clknet_2_0__leaf_clk),
    .D(net58),
    .RESET_B(net24),
    .Q(\i_spi_reg.falling_edge_detector_sof.data_dly ));
 sky130_fd_sc_hd__dfrtp_1 _327_ (.CLK(clknet_2_0__leaf_clk),
    .D(net57),
    .RESET_B(net24),
    .Q(\i_spi_reg.falling_edge_detector_spi_clk.data_dly ));
 sky130_fd_sc_hd__dfrtp_4 _328_ (.CLK(clknet_2_1__leaf_clk),
    .D(_027_),
    .RESET_B(net25),
    .Q(\i_spi_reg.state[0] ));
 sky130_fd_sc_hd__dfrtp_4 _329_ (.CLK(clknet_2_1__leaf_clk),
    .D(_028_),
    .RESET_B(net25),
    .Q(\i_spi_reg.state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _330_ (.CLK(clknet_2_1__leaf_clk),
    .D(_029_),
    .RESET_B(net24),
    .Q(\i_spi_reg.state[2] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 fanout24 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_2 fanout25 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_4 fanout26 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_2 fanout27 (.A(\i_spi_reg.falling_edge_detector_sof.rstb ),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\synchronizer_spi_cs_n_inst.data_sync[1] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\synchronizer_ui_in_inst.data_sync[1][2] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\synchronizer_ui_in_inst.data_sync[1][5] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\i_spi_reg.falling_edge_detector_spi_clk.data ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\i_spi_reg.falling_edge_detector_sof.data ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\i_spi_reg.reg_data_o[5] ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\i_spi_reg.reg_data_o[6] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(_008_),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\i_spi_reg.buffer_counter[2] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\i_spi_reg.reg_data_o[4] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\i_spi_reg.buffer_counter[1] ),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\synchronizer_spi_mosi_inst.data_sync[1] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\i_spi_reg.buffer_counter[0] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(_019_),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\i_spi_reg.reg_data_o[1] ),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\i_spi_reg.reg_data_o[7] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\i_spi_reg.reg_data_o[3] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\i_spi_reg.reg_data_o[0] ),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\i_spi_reg.reg_data_o[2] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\synchronizer_ui_in_inst.data_sync[1][7] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\synchronizer_ui_in_inst.data_sync[1][6] ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\synchronizer_spi_clk_inst.data_sync[1] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\synchronizer_ui_in_inst.data_sync[1][0] ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\synchronizer_ui_in_inst.data_sync[1][4] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\synchronizer_ui_in_inst.data_sync[1][3] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\synchronizer_ui_in_inst.data_sync[1][1] ),
    .X(net54));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(uio_in[4]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(uio_in[5]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(uio_in[6]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input2 (.A(ui_in[0]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(ui_in[1]),
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
 sky130_fd_sc_hd__dlymetal6s2s_1 max_cap1 (.A(_068_),
    .X(net72));
 sky130_fd_sc_hd__clkbuf_2 max_cap22 (.A(_099_),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_2 max_cap23 (.A(net72),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_2 max_cap28 (.A(_069_),
    .X(net28));
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
 sky130_fd_sc_hd__conb_1 tt_um_tqv_peripheral_harness_30 (.LO(net30));
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
 sky130_fd_sc_hd__clkbuf_2 wire29 (.A(_055_),
    .X(net29));
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
