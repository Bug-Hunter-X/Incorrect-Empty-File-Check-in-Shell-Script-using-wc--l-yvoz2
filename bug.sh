#!/bin/bash

# This script attempts to process a file, but it contains a subtle error.
# The error lies in the way it handles the output of the `wc -l` command.

filename="my_file.txt"

# Get the number of lines in the file
line_count=$(wc -l < "$filename")

# Check if the file is empty
if [[ "$line_count" -eq 0 ]]; then
  echo "File is empty"
else
  echo "File has $line_count lines"
fi