#!/bin/bash

# This script demonstrates the corrected way to check for empty files
# using wc -l.

filename="my_file.txt"

# Get the number of lines in the file and extract only the count
line_count=$(wc -l < "$filename" | awk '{print $1}')

# Check if the file is empty
if [[ "$line_count" -eq 0 ]]; then
  echo "File is empty"
else
  echo "File has $line_count lines"
fi