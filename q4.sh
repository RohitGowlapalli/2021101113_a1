#!/bin/bash
IFS=","
read -ra array
y=${#array[*]}

for (( i = 0; i < $y ; i++ ))
do
    for (( j = $i+1; j < $y; j++ ))
    do
        if [ ${array[$i]} -gt ${array[$j]}  ]; then
        t=${array[$i]}
        array[$i]=${array[$j]}
        array[$j]=$t
        fi
    done
done
echo ${array[*]}