#!/bin/sh
maxproc=$1

bindir=`dirname $0`
$bindir/pipi.sh 1
echo '#nproc wall-sec swap-out'
for n in `seq 1 $maxproc`; do
	echo -n $n ''
	time -f '%e %W' $bindir/pipi.sh $n 2>&1
done
