#!/bin/bash

RANDOM=$$
echo "Generate Draw Number"
for i in {1..5}
do
echo $(( $RANDOM % 50 + 1 ))>>file_draw_number
done
echo "Generate bonus number"
echo $(( $RANDOM % 10 + 1 ))>>file_draw_number
