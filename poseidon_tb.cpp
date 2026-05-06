#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include "poseidon.hpp"

field_t hex_to_field(std::string hex) {
    if (hex.find("0x") == 0) hex = hex.substr(2);
    return field_t(hex.c_str(), 16);
}

int main(int argc, char** argv) {
    const std::string data_dir = (argc > 1) ? argv[1] : "data";
    
    static field_t rc[TOTAL_ROUNDS * STATE_SIZE];
    static field_t mds[STATE_SIZE][STATE_SIZE];
    
    std::ifstream cfile((data_dir + "/poseidon_constants.txt").c_str());
    if (!cfile.is_open()) return 1;

    std::string line;
    bool in_rc = false, in_mds = false;
    int rc_ptr = 0, mds_row = 0;
    while (std::getline(cfile, line)) {
        if (line.empty() || line[0] == '#') continue;
        if (line.find("[ROUND_CONSTANTS]") != std::string::npos) { in_rc = true; in_mds = false; continue; }
        if (line.find("[MDS_MATRIX]") != std::string::npos) { in_rc = false; in_mds = true; continue; }
        if (in_rc) rc[rc_ptr++] = hex_to_field(line);
        else if (in_mds) {
            std::stringstream ss(line);
            std::string val;
            int mds_col = 0;
            while (ss >> val) mds[mds_row][mds_col++] = hex_to_field(val);
            mds_row++;
        }
    }
    cfile.close();

    std::ifstream tfile((data_dir + "/poseidon_test_cases.txt").c_str());
    // Create output CSV
    std::ofstream outfile("hw_results.csv");
    outfile << "test_case";
    for(int i=0; i<STATE_SIZE; i++) outfile << ",lane_" << i;
    outfile << "\n";

    int test_count = 0;
    while (std::getline(tfile, line)) {
        if (line.empty() || line[0] == '#') continue;
        hls::stream<axis_word> in_stream("in_stream");
        hls::stream<axis_word> out_stream("out_stream");

        std::stringstream ss(line);
        std::string val;
        int count = 0;
        while (ss >> val && count < STATE_SIZE) {
            axis_word word;
            word.data = hex_to_field(val);
            word.last = (count == STATE_SIZE - 1);
            word.keep = 0xFFFFFFFF;
            in_stream.write(word);
            count++;
        }

        poseidon_top(in_stream, out_stream, rc, mds);

        outfile << test_count;
        for (int i = 0; i < STATE_SIZE; i++) {
            axis_word out_word = out_stream.read();
            outfile << ",0x" << out_word.data.to_string(16);
        }
        outfile << "\n";
        test_count++;
    }
    outfile.close();
    tfile.close();
    return 0;
}