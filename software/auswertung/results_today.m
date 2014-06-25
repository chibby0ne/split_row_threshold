clear all;
xval{1} = [3.000000 ];
xval{2} = [3.000000 ];
xval{3} = [3.000000 ];
xval{4} = [3.000000 ];
xval{5} = [3.000000 ];
xval{6} = [3.000000 ];
xval{7} = [3.000000 ];
xval{8} = [3.000000 ];
xval{9} = [3.000000 ];
xval{10} = [3.000000 ];
yval{1} = [4.143990e-02 ];
yval{2} = [2.095300e-02 ];
yval{3} = [9.449400e-03 ];
yval{4} = [3.943450e-03 ];
yval{5} = [1.562500e-03 ];
yval{6} = [6.223210e-04 ];
yval{7} = [2.943450e-04 ];
yval{8} = [1.532740e-04 ];
yval{9} = [8.541670e-05 ];
yval{10} = [5.148810e-05 ];
legendval = {'iteration 1' 'iteration 2' 'iteration 3' 'iteration 4' 'iteration 5' 'iteration 6' 'iteration 7' 'iteration 8' 'iteration 9' 'iteration 10' };
graphtitle = 'WPAN, global.bw_dec_app1=0, global.bw_dec_app0=8, global.ldpc_code_rate=IEEE_802_11AD_P42_N672_R050, global.bw_dec_app2=0, global.bw_dec_app3=0, Source_Bits.start_seed=7878089, Demapper.channel_reliability=OPTIMAL_CRF, error_rates_decoding.print_status_permanent, global.bw_fl2fix=5, Decoder_LDPC_IEEE_802_11ad.dec_algorithm=MIN_SUM, Decoder_LDPC_IEEE_802_11ad.esf_factor=0.875, Source_Bits.mode=RANDOM, error_rates_decoding.out_port_inner_dim_name=ITERATION, Decoder_LDPC_IEEE_802_11ad.scheduling=TWO_PHASE, global.num_info_bits=336, global.bw_dec_fract=4, Decoder_LDPC_IEEE_802_11ad.app_parity_check, global.bw_fl2fix_fract=0, global.num_bits_per_symbol=2, global.num_ldpc_inner_iterations0=10, global.num_ldpc_inner_iterations1=0, global.num_ldpc_inner_iterations2=0, global.num_ldpc_inner_iterations3=0, global.bw_dec_ext1=0, global.bw_dec_ext0=5, global.bw_dec_ext3=0, global.bw_dec_ext2=0, error_rates_decoding.max_num_diff_blocks=5000, Decoder_LDPC_IEEE_802_11ad.num_lambda_min=3, Source_Bits.crc_poly=0, Channel_AWGN.start_seed=12424, error_rates_decoding.out_port_inner_dim_addr_offset=1, error_rates_decoding.max_num_total_blocks=10000, global.mapping=MAP_QPSK, global.num_other_bits=336';
figfilename = 'WPAN_global.bw_dec_app10_global.bw_dec_app08_global.ldpc_code_rateIEEE_802_11AD_P42_N672_R050_global.bw_dec_app20_global.bw_dec_app30_Source_Bits.start_seed7878089_Demapper.channel_reliabilityOPTIMAL_CRF_error_rates_decoding.print_status_permanent_global.bw_fl2fix5_Decoder_LDPC_IEEE_802_11ad.dec_algorithmMIN_SUM_Decoder_LDPC_IEEE_802_11ad.esf_factor0.875_Source_Bits.modeRANDOM_error_rates_decoding.out_port_inner_dim_nameITERATION_Decoder_LDPC_IEEE_802_11ad.schedulingTWO_PHASE_global.num_info_bits336_global.bw_dec_fract4_Decoder_LDPC_IEEE_802_11ad.app_parity_check_global.bw_fl2fix_fract0_global.num_bits_per_symbol2_global.num_ldpc_inner_iterations010_global.num_ldpc_inner_iterations10_global.num_ldpc_inner_iterations20_global.num_ldpc_inner_iterations30_global.bw_dec_ext10_global.bw_dec_ext05_global.bw_dec_ext30_global.bw_dec_ext20_error_rates_decoding.max_num_diff_blocks5000_Decoder_LDPC_IEEE_802_11ad.num_lambda_min3_Source_Bits.crc_poly0_Channel_AWGN.start_seed12424_error_rates_decoding.out_port_inner_dim_addr_offset1_error_rates_decoding.max_num_total_blocks10000_global.mappingMAP_QPSK_global.num_other_bits336';
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
