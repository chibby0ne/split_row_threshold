clear all;
xval{1} = [1.000000 2.000000 ];
xval{2} = [1.000000 2.000000 ];
xval{3} = [1.000000 2.000000 ];
xval{4} = [1.000000 2.000000 ];
xval{5} = [1.000000 2.000000 ];
xval{6} = [1.000000 2.000000 ];
xval{7} = [1.000000 2.000000 ];
xval{8} = [1.000000 2.000000 ];
xval{9} = [1.000000 2.000000 ];
xval{10} = [1.000000 2.000000 ];
yval{1} = [1.005330e-01 5.500570e-02 ];
yval{2} = [8.840030e-02 2.928560e-02 ];
yval{3} = [8.231640e-02 1.579770e-02 ];
yval{4} = [7.884490e-02 9.289560e-03 ];
yval{5} = [7.480360e-02 6.292440e-03 ];
yval{6} = [7.327830e-02 4.770520e-03 ];
yval{7} = [7.067900e-02 3.867140e-03 ];
yval{8} = [6.920630e-02 3.353560e-03 ];
yval{9} = [6.836910e-02 2.988630e-03 ];
yval{10} = [6.748810e-02 2.708630e-03 ];
legendval = {'iteration 1' 'iteration 2' 'iteration 3' 'iteration 4' 'iteration 5' 'iteration 6' 'iteration 7' 'iteration 8' 'iteration 9' 'iteration 10' };
graphtitle = 'WPAN, global.ldpc_code_rate=IEEE_802_11AD_P42_N672_R050, Decoder_LDPC_IEEE_802_11ad.num_iterations=10, Source_Bits.start_seed=7878089, global.num_ldpc_inner_iterations=10, Demapper.channel_reliability=OPTIMAL_CRF, error_rates_decoding.print_status_permanent, global.bw_fl2fix=6, Decoder_LDPC_IEEE_802_11ad.dec_algorithm=MIN_SUM, Decoder_LDPC_IEEE_802_11ad.esf_factor=0.875, global.bw_dec_app=9, Source_Bits.mode=RANDOM, error_rates_decoding.out_port_inner_dim_name=ITERATION, Decoder_LDPC_IEEE_802_11ad.num_partitions=2, Decoder_LDPC_IEEE_802_11ad.scheduling=LAYERED, global.num_info_bits=336, global.bw_dec_fract=2, Decoder_LDPC_IEEE_802_11ad.threshold=16, global.bw_dec_ext=6, Decoder_LDPC_IEEE_802_11ad.app_parity_check, global.bw_fl2fix_fract=2, global.num_bits_per_symbol=2, Channel_AWGN.start_seed=12424, error_rates_decoding.max_num_diff_blocks=500, Decoder_LDPC_IEEE_802_11ad.num_lambda_min=3, Source_Bits.crc_poly=0, error_rates_decoding.out_port_inner_dim_addr_offset=1, error_rates_decoding.max_num_total_blocks=100000, global.mapping=MAP_QPSK, global.num_other_bits=336';
figfilename = 'WPAN_global.ldpc_code_rateIEEE_802_11AD_P42_N672_R050_Decoder_LDPC_IEEE_802_11ad.num_iterations10_Source_Bits.start_seed7878089_global.num_ldpc_inner_iterations10_Demapper.channel_reliabilityOPTIMAL_CRF_error_rates_decoding.print_status_permanent_global.bw_fl2fix6_Decoder_LDPC_IEEE_802_11ad.dec_algorithmMIN_SUM_Decoder_LDPC_IEEE_802_11ad.esf_factor0.875_global.bw_dec_app9_Source_Bits.modeRANDOM_error_rates_decoding.out_port_inner_dim_nameITERATION_Decoder_LDPC_IEEE_802_11ad.num_partitions2_Decoder_LDPC_IEEE_802_11ad.schedulingLAYERED_global.num_info_bits336_global.bw_dec_fract2_Decoder_LDPC_IEEE_802_11ad.threshold16_global.bw_dec_ext6_Decoder_LDPC_IEEE_802_11ad.app_parity_check_global.bw_fl2fix_fract2_global.num_bits_per_symbol2_Channel_AWGN.start_seed12424_error_rates_decoding.max_num_diff_blocks500_Decoder_LDPC_IEEE_802_11ad.num_lambda_min3_Source_Bits.crc_poly0_error_rates_decoding.out_port_inner_dim_addr_offset1_error_rates_decoding.max_num_total_blocks100000_global.mappingMAP_QPSK_global.num_other_bits336';
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
