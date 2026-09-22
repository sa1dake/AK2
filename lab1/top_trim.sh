#!/bin/bash
n="${1:-5}"
output_file="top_output.txt"
top -b -n 1 > "$output_file"
head -n "$n" "$output_file" > "${output_file}.tmp" && mv "${output_file}.tmp" "$output_file"
echo "Успішно збережено перші $n рядків у $output_file:"
cat "$output_file"
