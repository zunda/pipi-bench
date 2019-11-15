#!/bin/bash
p=$1
s=8
d=999999

for i in `seq 1 $p`; do
	for j in `seq 1 $s`; do
		pi $d > /dev/null
	done &
done
wait
