#!/bin/bash

# Please set the path to the directory containing input fasta files. Sample directory is in the input_data directory.
input_dir="./input_data/test_data1_single"

# Please set the output directory path.
output_dir="./output/daruma_single"

mkdir -p "$output_dir"

for file in "$input_dir"/*; do
    echo "Processing $file"
    filename=$(basename "$file")
    ac="${filename%.*}"
    python3 ./../daruma/cpu/predict.py "$file" -o "$output_dir/$ac.out"
done
