#!/bin/bash

u="$USER"
echo "Username : $u"


now=$(date)
echo "Today Date and time  : $now"

echo "script executed from : ${PWD}"

echo "No. of files is $(find "$@" -type f | wc -l)"
echo "No. of directories is $(find "$@" -type d | wc -l)"
echo "Biggest file in current directory is $(ls -S | head -1)"
