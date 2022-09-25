#!/bin/bash

for i in $(ls activity2/)

do 
mv ./activity2/$i ./activity2/$i$(date +"%Y%m%d")
done
exit 0


