load 'common.plot'
set yrange [0:8]
set key right bottom
plot '191124-xeon-4core.dat' tit 'Xeon 4-core',\
     '191117-xeon-8core.dat' tit 'Xeon 8-core',\
     '191117-ryzen5-6core.dat' tit 'Ryzen 6-core'

