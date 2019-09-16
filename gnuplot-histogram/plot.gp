set terminal pdf enhanced size 5,3 font 'courier'
set loadpath 'data'
set xtic rotate by 45 right offset 0.5,0
set style data histogram
set style histogram clustered gap 2
set style fill pattern 10
set style line 1 lc -1
set boxwidth 1
set grid ytics
set key tm
set xlabel 'Benchmark'
set output 'out.pdf'

# Speedup
set ytics ('0.9' -0.1, '1.0' 0, '1.1' 0.1, '1.2' 0.2, '1.3' 0.3, '1.4' 0.4, '1.5' 0.5, '1.6' 0.6)
set yrange [-0.1:0.6]
set ylabel 'Speedup'
plot 'speedup.dat' u ($2 - 1):xtic(1) ls 1 title 'SDP', \
     '' u ($3 - 1):xtic(1) ls 1 t 'RPT', \
     '' u ($4 - 1):xtic(1) ls 1 t 'GHB PC/CS', \

# Accuracy
set ytics 0,0.1,1
set yrange [0:1]
set ylabel 'Accuracy'
plot 'accuracy.dat' u 2:xtic(1) ls 1 title 'SDP', \
     '' u 3:xtic(1) ls 1 t 'RPT', \
     '' u 4:xtic(1) ls 1 t 'GHB PC/CS', \

# Coverage
set yrange [0:1]
set ylabel 'Coverage'
plot 'coverage.dat' u 2:xtic(1) ls 1 title 'SDP', \
     '' u 3:xtic(1) ls 1 t 'RPT', \
     '' u 4:xtic(1) ls 1 t 'GHB PC/CS', \
