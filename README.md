# Shell Scripting Bug: Empty File Check

This repository demonstrates a common yet subtle bug in shell scripting when checking for empty files using the `wc -l` command.  The script attempts to count the lines in a file and reports whether the file is empty or not. However, the way it handles the output of `wc -l` leads to an error.

## Bug Description:
The primary issue lies in how the script interprets the output of `wc -l`. This command prints both the line count and the filename, leading to unexpected behavior when comparing the result to 0. When a file is empty, `wc -l` still produces an output, but this output is not just the number 0. 

## Solution:
The solution involves properly parsing the output of `wc -l` to extract only the numerical count of lines, ensuring accurate comparison for empty files. We use a more robust approach to handle the output of the command to avoid the issue.