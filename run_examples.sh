#!/bin/bash

# Compile the Go code
go build -o main main.go

# Input file names
input_files=("example00.txt" "example01.txt" "example02.txt" "example03.txt" "example04.txt" "example05.txt" "example06.txt" "example07.txt" "example08.txt" "badexample00.txt" "badexample01.txt" "cycle.txt")

# Run the code with each input file
for input_file in "${input_files[@]}"; do
  example_name="${input_file%.txt}"  # Extract example name without extension

  echo "================= $example_name ====================="
  go run . "$input_file"
  # echo "=========================="
done

# Clean up the executable
rm main


for filename in $(find . -type f -name "assemblyDB.*.las"); do
   echo $filename
   no=${ls $filename | sed 's/assemblyDB.//' | sed 's/.las//'}
   echo $no
done