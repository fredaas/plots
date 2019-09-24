set terminal pdf enhanced size 5,3 font 'courier'
set size 1,1
set rmargin 5
set key r L
set grid ytics
set style data l

set output 'out.pdf'

set format x '%.2sx10^{%T}'

set yrange [0:45]

set title  'Button Press'
set xlabel 'Time (us)'

set datafile separator ';'
plot 'data.csv' u 1:2 title 'Current (mA)', \
     ''         u 1:3 title 'Voltage (V)', \
     ''         u 1:($2 * $3) title 'Power (mW)'
