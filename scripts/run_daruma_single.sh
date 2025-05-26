#!/bin/bash

# Please set the input fasta file path. Sample input fasta files are in the input_data directory.
input_file="./input_data/test_data1_single/DP01108.fasta"

# Please set the output file path.
output_file="./out_put/DP01108.out"

python3 ./../daruma/cpu/predict.py ${input_file} -o ${output_file}
