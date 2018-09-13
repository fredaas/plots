set terminal pdf enhanced size 3,3 font 'Courier'
set size 1,1

set loadpath 'data'

set style data histogram
set style histogram clustered gap 1
set style fill pattern 1
set style line 1 lc -1

set boxwidth 0.9
set grid ytics
set key r

set yrange [0:1.5e-5]
set output 'out_bars.pdf'

plot 'bars.dat' u 2:xtic(1) ls 1 title 'K = 17', \
     '' u 3:xtic(1) ls 1 title 'K = 18', \
     '' u 4:xtic(1) ls 1 title 'K = 19', \
     '' u 5:xtic(1) ls 1 title 'K = 20'
