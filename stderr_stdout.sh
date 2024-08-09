#! /bin/bash

# ls 1> file.txt # 1 means stdout
# ls -123 1> file.txt 2> error_file.txt # 2 means stderr
# ls > new_file.txt 2>&1 # by defaul > its stdout and 2>&1 means store the error in the first parameter, which is the same file
ls -123 >& another_file.txt # shortcout for above instructions
