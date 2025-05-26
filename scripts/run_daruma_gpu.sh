#!/bin/bash

# Please set the input fasta file path. Sample input fasta files are in the input_data directory.
input_file=./input_data/human_proteome.fasta

# Please set the output file path.
output_file=./output/daruma_multi.out

python3 ./../daruma/gpu/predict.py ${input_file} -o ${output_file}
