# pipi-bench
A small set of scripts to see parallel execution of processes

## Usage
### Prepare
```sh
$ sudo apt install pi time
```

### Measure
```sh
$ ./bin/pipipi.sh 16 | tee measure.dat
```

The `pipipi.sh` runs `pipi.sh` with different parallelism up to specified with the command line argument (16 for this example). The script `pipi.sh` runs sequences of `pi` commands in parallel.

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

## On Heroku
### Create an app
`Aptfile` lists `vim.tiny` to be installed so that the scripts can be edited on the fly on one-off dynos if needed.

```sh
$ heroku create
$ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-apt
$ git push heroku master
```

### Measure
```sh
$ heroku run ./bin/pipipi.sh 16 | tee measure.dat
```

To test different dyno types, the app needs to use professional dynos.

```sh
$ heroku ps:type worker=standard-1x
$ heroku run --size=standard-2x ./bin/pipipi.sh 16 | tee standard-2x.dat
```

## License
[MIT](LICENSE)
