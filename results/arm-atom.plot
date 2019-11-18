load 'common.plot'
set xrange [0:4]
plot '191117-raspberry-pi-zero.dat' tit 'Raspberry Pi Zero',\
     '191118-atom-2core.dat' tit 'Atom dual core',\
     '191118-atom-1core.dat' tit 'Atom signle core'
