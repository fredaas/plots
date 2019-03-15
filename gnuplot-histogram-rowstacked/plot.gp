set terminal pdf enhanced size 4,3 font 'Courier'
set size 1,1
set style data histogram
set style histogram rowstacked gap 1
set style fill pattern 1
set style line 1 lc -1
set boxwidth 0.5
set grid ytics
set key r
set output "out.pdf"

plot 'values.dat' u 2 ls 1 t "A", \
     '' u 3           ls 1 t "B", \
     '' u 4           ls 1 t "C", \
     '' u 5:xtic(1)   ls 1 t "D"
