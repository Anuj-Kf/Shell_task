#!/bin/bash

TOTAL_COUNT=$(wc -l < python_output.log)
#count the number of error lines
ERROR_COUNT=$(grep -c 'ERROR' python_output.log)

#count the number of non-error lines
NON_ERROR_COUNT=$(grep -c -v 'ERROR' python_output.log)

echo "Total lines: $TOTAL_COUNT"
echo "Error lines: $ERROR_COUNT"
echo "Non-Error lines: $NON_ERROR_COUNT"

#gets the lines containing info log msg(non-error msg)
nern=$(awk '/INFO/{print $6}' python_output.log)
#gets the lines containing error log msg
ern=$(awk '/ERROR/{print $6}' python_output.log)
echo "error random_numbers"
echo "$ern"
echo "non-error random_numbers"
echo "$nern"


