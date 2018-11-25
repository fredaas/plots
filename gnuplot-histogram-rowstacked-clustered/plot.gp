set terminal pdf enhanced size 4,3 font 'Courier'
set size 1,1

set style data histogram
set style histogram rowstack gap 1

set style fill pattern 1 border -1
#set style fill solid 1 border -1

do for [i = 1 : 4 ] {
    set style line i lc -1
}

set bmargin at screen 0.15

set boxwidth 1.0
set grid ytics
set key out vert right top
set ylabel 'Runtime Fraction'

set output 'out_plot.pdf'

plot newhistogram 'TITLE 1' offset 0,-1 fs patter 1, \
     'values1.dat' u 2 ls 1 t 'A', \
     '' u 2            ls 2 t 'B', \
     '' u 3            ls 3 t 'C', \
     '' u 4:xtic(1)    ls 4 t 'D', \
     newhistogram 'TITLE 2' offset 0,-1 fs patter 1, \
     'values2.dat' u 2 ls 1 t '', \
     '' u 2            ls 2 t '', \
     '' u 3            ls 3 t '', \
     '' u 4:xtic(1)    ls 4 t ''
