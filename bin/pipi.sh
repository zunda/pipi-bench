#!/bin/bash
parallel=$1
sequence=32
digits=99999

for i in `seq 1 $parallel`; do
	for j in `seq 1 $sequence`; do
		pi $digits > /dev/null
	done &
done
wait
