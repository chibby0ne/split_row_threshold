clear all;
xval{1} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{2} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{3} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{4} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{5} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{6} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{7} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{8} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{9} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
xval{10} = [1.000000 2.000000 3.000000 4.000000 5.000000 6.000000 7.000000 8.000000 9.000000 10.000000 ];
yval{1} = [1.057970e-01 6.759500e-02 3.655540e-02 1.518680e-02 4.504260e-03 8.419640e-04 8.907740e-05 5.089290e-06 1.488100e-07 0.000000e+00 ];
yval{2} = [9.548430e-02 4.895070e-02 1.631640e-02 2.800090e-03 2.002380e-04 5.833330e-06 8.928570e-08 2.976190e-08 0.000000e+00 0.000000e+00 ];
yval{3} = [9.011180e-02 3.524220e-02 6.135180e-03 3.033630e-04 5.297620e-06 5.952380e-08 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{4} = [8.573510e-02 2.573290e-02 2.000150e-03 2.809520e-05 2.678570e-07 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{5} = [8.269320e-02 1.867170e-02 6.405360e-04 2.886900e-06 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{6} = [8.032980e-02 1.359540e-02 2.186310e-04 2.976190e-07 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{7} = [7.910430e-02 1.034370e-02 8.651790e-05 2.976190e-08 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{8} = [7.702530e-02 8.092030e-03 3.955360e-05 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{9} = [7.479870e-02 6.553990e-03 1.803570e-05 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
yval{10} = [7.376470e-02 5.408960e-03 1.002980e-05 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 0.000000e+00 ];
legendval = {'iteration 1' 'iteration 2' 'iteration 3' 'iteration 4' 'iteration 5' 'iteration 6' 'iteration 7' 'iteration 8' 'iteration 9' 'iteration 10' };
graphtitle = 'WPAN, global.ldpc_code_rate=IEEE_802_11AD_P42_N672_R050, Decoder_LDPC_IEEE_802_11ad.num_iterations=10, Source_Bits.start_seed=7878089, global.num_ldpc_inner_iterations=10, Demapper.channel_reliability=OPTIMAL_CRF, error_rates_decoding.print_status_permanent, global.bw_fl2fix=6, Decoder_LDPC_IEEE_802_11ad.dec_algorithm=MIN_SUM, Decoder_LDPC_IEEE_802_11ad.esf_factor=0.875, global.bw_dec_app=9, Source_Bits.mode=RANDOM, error_rates_decoding.out_port_inner_dim_name=ITERATION, Decoder_LDPC_IEEE_802_11ad.num_partitions=2, Decoder_LDPC_IEEE_802_11ad.scheduling=TWO_PHASE, global.num_info_bits=336, global.bw_dec_fract=2, Decoder_LDPC_IEEE_802_11ad.threshold=16, global.bw_dec_ext=6, Decoder_LDPC_IEEE_802_11ad.app_parity_check, Decoder_LDPC_IEEE_802_11ad.edges_threshold=7, global.bw_fl2fix_fract=2, global.num_bits_per_symbol=2, Channel_AWGN.start_seed=12424, error_rates_decoding.max_num_diff_blocks=500, Decoder_LDPC_IEEE_802_11ad.num_lambda_min=3, Source_Bits.crc_poly=0, error_rates_decoding.out_port_inner_dim_addr_offset=1, error_rates_decoding.max_num_total_blocks=100000, global.mapping=MAP_QPSK, global.num_other_bits=336';
figfilename = 'WPAN_global.ldpc_code_rateIEEE_802_11AD_P42_N672_R050_Decoder_LDPC_IEEE_802_11ad.num_iterations10_Source_Bits.start_seed7878089_global.num_ldpc_inner_iterations10_Demapper.channel_reliabilityOPTIMAL_CRF_error_rates_decoding.print_status_permanent_global.bw_fl2fix6_Decoder_LDPC_IEEE_802_11ad.dec_algorithmMIN_SUM_Decoder_LDPC_IEEE_802_11ad.esf_factor0.875_global.bw_dec_app9_Source_Bits.modeRANDOM_error_rates_decoding.out_port_inner_dim_nameITERATION_Decoder_LDPC_IEEE_802_11ad.num_partitions2_Decoder_LDPC_IEEE_802_11ad.schedulingTWO_PHASE_global.num_info_bits336_global.bw_dec_fract2_Decoder_LDPC_IEEE_802_11ad.threshold16_global.bw_dec_ext6_Decoder_LDPC_IEEE_802_11ad.app_parity_check_Decoder_LDPC_IEEE_802_11ad.edges_threshold7_global.bw_fl2fix_fract2_global.num_bits_per_symbol2_Channel_AWGN.start_seed12424_error_rates_decoding.max_num_diff_blocks500_Decoder_LDPC_IEEE_802_11ad.num_lambda_min3_Source_Bits.crc_poly0_error_rates_decoding.out_port_inner_dim_addr_offset1_error_rates_decoding.max_num_total_blocks100000_global.mappingMAP_QPSK_global.num_other_bits336';
xtitle = 'E_b/N_0 / dB';
ytitle = 'BER';
%Farbvektor initialisieren, entsprechende Kurven haben gleiche Farben;
		farb=zeros(1,3);
		%Moegliche Marker
		mark=['+','o','*','s','d','h'];
		%Graph erzeugen
		figf=figure('Visible','off');
		for k=1:length(legendval)
		    %Graph zeichnen, Farbe zufaellig, marker aus Vektor mark
		    plot(xval{k}(:), yval{k}(:), 'linestyle','--', 'linewidth',1.2, 'color',rand(1,3), 'marker',mark(mod(k,6)+1), 'DisplayName',legendval{k});
		    hold on;
		end
		%Graph formatieren
		xlabel(xtitle);
		ylabel(ytitle);
		title(graphtitle);
		axis tight;
		grid on;
set(gca,'YScale','log');
set(gca,'YLimMode','auto');
		set(gca,'Position',[0.05511 0.07292 0.9389 0.8847]);  %fits for create_pdf.m, paper size 24x18
		box on;
		hold off;
		leg = legend('toggle');
		legend('boxon');
		set(leg,'Location','southwest','FontSize',10);
		% Grafiken anzeigen
		set(figf,'Visible','on');
		% Grafik speichern
		%saveas(figf,[figfilename, '.fig'],'fig');
		%h = gcf();
		%set(h,'PaperSize',[24 18]);
		%set(h,'PaperUnits','centimeters');
		%set(h,'PaperOrientation','portrait');
		%set(h,'PaperPosition',[0 0 24 18]);
		%print('-dpdf',[figfilename, '.pdf']);
