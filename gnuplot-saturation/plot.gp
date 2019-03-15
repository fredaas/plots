set terminal pdf enhanced size 4,3 font 'Courier'
set size 1,1
set xtic rotate by 0 right offset 0.5,0
set key l
set yrange [0:25]
set xrange [0:20]
set grid
set title 'Affinity Socket Saturation'
set xtics ("1" 0, "5" 5, "10" 10, "15" 15, "20" 20)
set ylabel 'Bandwidth'
set xlabel '# threads'
set output 'out.pdf'

plot 20 - 20 / 2**x t 'Scatter', \
     x < 10 ? 10 - 10 / 2**x : x t 'Compact'
