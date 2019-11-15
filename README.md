# pipi-bench
A small set of scripts to see parallel execution of processes

## Usage
### Prepare
```sh
$ sudo apt install pi
```

### Measure
```sh
$ ./bin/pipipi.sh | tee measure.dat
```

### Check result
```sh
$ gnuplot
reset
set xlabel "Numbe of parallel processes"
set ylabel "Elapsed time for same amount of work (sec)"
set style data lines
set xrange [0:*]
set yrange [0:*]
plot "measure.dat"
```

## License
[MIT](LICENSE)
