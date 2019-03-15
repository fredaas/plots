set terminal pdf enhanced size 4,3 font 'Courier'
set size 1,1
set xtic rotate by 0 right offset 0.5,0
set key l
set xrange [1:60]
set dummy N
set output 'out.pdf'

set title "Gustafson's Law"
set ylabel 'Speedup [s]'
set xlabel 'Cores [N]'
plot 0.20 + (1 - 0.20) * N title "s = 0.20", \
     0.15 + (1 - 0.15) * N title "s = 0.15", \
     0.10 + (1 - 0.10) * N title "s = 0.10", \
     0.05 + (1 - 0.05) * N title "s = 0.05"

set title "Amdahl's Law"
set ylabel 'Speedup [s]'
set xlabel 'Cores [N]'
plot 1 / (0.20 + (1 - 0.20) / N) title "s = 0.20", \
     1 / (0.15 + (1 - 0.15) / N) title "s = 0.15", \
     1 / (0.10 + (1 - 0.10) / N) title "s = 0.10", \
     1 / (0.05 + (1 - 0.05) / N) title "s = 0.05"
