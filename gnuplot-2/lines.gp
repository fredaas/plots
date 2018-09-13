set terminal pdf enhanced size 3,3 font "Courier"

set size 1,1

set loadpath 'data'

set style line 1 lc -1 pt 6
set style line 2 lc -1 pt 7
set style line 3 lc -1 pt 8
set style line 4 lc -1 pt 9

set style data lp
set xtic 1
set grid ytics
set key r

set xrange [1:8]
set output 'out_lines.pdf'

plot 'lines.dat' u 1:2 ls 1 title 'K = 17', \
     '' u 1:3 ls 2 title 'K = 18', \
     '' u 1:4 ls 3 title 'K = 19', \
     '' u 1:5 ls 4 title 'K = 20'
