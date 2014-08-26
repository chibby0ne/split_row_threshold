/*
 * WPAN_chain.cpp
 *
 *  Created on: 09.11.2012
 *      Author: schlaefer
 */

#include "../cse/include/cse_lib.h"
#include "ldpc_enc/enc_ldpc_ieee_802_11ad.h"
#include "ldpc_dec/dec_ldpc_ieee_802_11ad.h"

#include <iostream>
#include <fstream>

using namespace cse_lib;

int main(int argc, char* argv[]) {

    // int codewords = 0;
    // int snr = 1;

	string configfile = "config.xml";
	if (argc >= 2)
		configfile = argv[1];

	string rfilename = "./results/";
	if (argc >= 3)
		rfilename = rfilename + argv[2];
	else
		rfilename = rfilename + "results.xml";

	Manage_Module_Config xml_config(configfile);
	Manage_Module_Result xml_result(rfilename, "WPAN");

	// Instantiate modules
	Source_Bits source_bits;

	Encoder_LDPC_IEEE_802_11ad encoder;

	Mapper mapper;

	Converter_Float_Fixpoint<float, int> converter;

	Channel_AWGN channel;

	Demapper demapper;

	// Decoder_LDPC_IEEE_802_11ad<int> decoder;
	Decoder_LDPC_IEEE_802_11ad decoder;

	Statistics_Error_Rates<2> error_rates_decoding;
	error_rates_decoding.instance_name("error_rates_decoding");

    // files used to write values
    // ofstream input_source;
    ofstream input_decoder;
    ofstream output_decoder;

    // input_source.open("input_source.txt");
    // input_decoder.open("input_decoder.txt");
    // output_decoder.open("output_decoder.txt");
    // input_decoder_test.open("input_decoder_test.txt");
    
    // input_source.open("input_source_high_SNR.txt");
    // input_decoder.open("input_decoder_high_SNR.txt");
    // output_decoder.open("output_decoder_high_SNR.txt");
    // input_decoder_test.open("input_decoder_test_high_SNR.txt");

    // input_decoder.open("input_decoder_allsnr_r050.txt");
    // output_decoder.open("output_decoder_allsnr_r050.txt");

    // input_decoder.open("input_decoder_allsnr_r062.txt");
    // output_decoder.open("output_decoder_allsnr_r062.txt");

    // input_decoder.open("input_decoder_allsnr_r075.txt");
    // output_decoder.open("output_decoder_allsnr_r075.txt");
    
    // input_decoder.open("input_decoder_allsnr_r081.txt");
    // output_decoder.open("output_decoder_allsnr_r081.txt");




	// Connect modules
	encoder.input_bits(source_bits.output_bits());
	mapper.input_bits(encoder.output_bits());
	// mapper.input_bits(source_bits.output_bits());
	channel.input_symb(mapper.output_symb());
	demapper.input_symb(channel.output_symb());
	converter.input(demapper.output_bits_llr());

	decoder.input_bits_llr(converter.output());

	error_rates_decoding.input_bits_ref(source_bits.output_bits());
	error_rates_decoding.input_bits(decoder.output_bits());

	int result;
	do {
		// Configure modules
		xml_config.Configure_Module(source_bits);
		xml_config.Configure_Module(encoder);
		xml_config.Configure_Module(mapper);
		xml_config.Configure_Module(channel);
		xml_config.Configure_Module(demapper);
		xml_config.Configure_Module(converter);
		xml_config.Configure_Module(decoder);
		xml_config.Configure_Module(error_rates_decoding);

		//RNG_reset();

		do {
			source_bits.Run();

            
			encoder.Run();


			mapper.Run();

			channel.Run();

			demapper.Run();
			converter.Run();

            // if (codewords == 0) {
            //     input_decoder << "SNR: " << snr << endl;
            // }
            // input_decoder << "Starting codeword" << endl;
            // input_decoder << decoder.input_bits_llr() << endl;
            // input_decoder << "Ending codeword" << endl;


            decoder.Run();


            // if (codewords == 0) {
            //     output_decoder << "SNR: " << snr << endl;
            // }
            // output_decoder << "Starting codeword" << endl;
            // output_decoder << decoder.output_bits() << endl;
            // output_decoder << "Ending codeword" << endl;
            //
            // codewords++;
            // if (codewords == 10) {
            //     snr++;
            //     codewords = 0;
            // }

            result = error_rates_decoding.Run(); 
		} while (result == 0);

		xml_result.Create_Iteration_Value_Result_Point(xml_config);  // Create a new iteration value XML tree to store the modules results (uses xml_config to as a template for results)
		xml_result.Insert_Results_From_Module(error_rates_decoding); // Insert the results from a Module into the current working tree
		xml_result.Insert_Results_From_Module(decoder); // Insert the results from a Module into the current working tree
		xml_result.Write_Current_State(); // Write the current XML result tree into the current working tree
	} while (xml_config.Update_To_Next_Iter() == 0); // Update configuration instance with the next iteration point

	return 0;
}

