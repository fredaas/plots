set terminal pdf enhanced size 3.5,3.5 font "courier"

unset key

# Enable colorbox an uncomment to show value range
unset colorbox
# set rmargin 8
# set cblabel "Latency [microseconds]" offset 2,0

set tic scale 0
set xrange [-0.5:79.5]
set yrange [-0.5:79.5]
set xtics 10 offset -0.5,0
set ytics 10
set border linewidth 0
set palette defined (0 "white", 1 "red")
set view map

set output "out.pdf"
set xlabel "Rank"
set ylabel "Rank"

set title "Ping-pong IDUN: Latency, 4 Nodes, 80 ranks"
plot "dump_latency_idun.txt" matrix with image
