set terminal pdf enhanced size 4,3 font 'Courier'
set size 1,1

set xtic rotate by 0 right offset 0.5,0
set key r

set style line 1 lc -1 dt 2

# Plot time.
set yrange [0.5:128]
set xrange [0.25:16]
set logscale y 2
set logscale x 2
set xlabel 'Operational Intensity (FLOPs/byte)'
set ylabel 'Attainable GFLOPs/second'
set title  'Roofline Model'
set output 'roofline.pdf'

P_max = 17.6 # FLOP theoretical max (FLOPs/second).
M_max = 15   # DRAM theoretical max (bytes/second).
set dummy I  # Observed operational intensity (FLOPs/byte).

min(x, y) = (x < y) ? x : y

# Vertical line.
set arrow from (P_max / M_max),0.5 to (P_max / M_max),P_max nohead ls 1
# Horizontal line.
set arrow from 0.25,P_max to (P_max / M_max),P_max nohead ls 1

plot min(P_max, M_max * I) notitle
