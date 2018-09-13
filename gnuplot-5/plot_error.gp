set terminal pdf enhanced size 5,3 font 'Courier'

set loadpath 'data'

set xtic rotate by 0 right offset 1.5,0
set style data histogram
set style histogram clustered gap 1
set style fill pattern 1

set boxwidth 1
set grid ytics
set key r

set xtics scale 0

set yrange [0:2.000315e-08]
set ylabel 'Maximum Error (e)'
set xlabel 'Processes (P)'
set title 'Maximum Error, K = 14, T = 1/4'
set output 'out_error.pdf'
plot 'error_mpi.dat'    u 5:xtic(1) title 'MPI', \
     'error_hybrid.dat' u 5:xtic(1) title 'MPI/OMP', \

unset yrange
set ylabel 'Maximum Error (e)'
set xlabel 'Domain (K)'
set title 'Maximum Error, P = 16, T = 1/4'
# set output 'out_error_k.pdf'
plot 'error_mpi_k.dat'    u 5:xtic(3) title 'MPI', \
     'error_hybrid_k.dat' u 5:xtic(3) title 'MPI/OMP', \
