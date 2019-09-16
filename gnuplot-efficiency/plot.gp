set terminal pdf enhanced size 3,3 font 'courier'
set size 1,1
set loadpath 'data'
set xtic rotate by 0 right offset 0.5,0
set key r
set grid ytics
set style data lp
set output 'out.pdf'

# Plot time
set yrange [0:1500]
set xrange [1:32]
set ytic 300
set xtic 8
set xlabel 'Processes (P)'
set ylabel 'Time (T_P)'
set title  'Time, K = 14, T = 1/4'
plot 'time_mpi.dat'    u 1:6 title 'MPI', \
     'time_hybrid.dat' u 1:6 title 'MPI/OMP', \

# Plot time
set yrange [0:120]
set xrange [10:14]
set ytic 20
set xtic 1
set xlabel 'Domain (K)'
set ylabel 'Time (T_S / T_P)'
set title  'Time, P = 16, T = 1/4'
plot 'time_mpi_k.dat'    u 3:6 title 'MPI', \
     'time_hybrid_k.dat' u 3:6 title 'MPI/OMP', \

# Serial time for K = 14, T = 1.
t_serial = 1.213900e+03

# Plot speedup
set yrange [0:32]
set xrange [1:32]
set ytic 4
set xtic 8
set xlabel 'Processes (P)'
set ylabel 'Speedup (T_S / T_P)'
set title  'Speedup, K = 14, T = 1/4'
plot 'time_mpi.dat'    u 1:(t_serial / $6) title 'MPI', \
     'time_hybrid.dat' u 1:(t_serial / $6) title 'MPI/OMP', \

# Plot efficiency
set yrange [0:4]
set xrange [1:32]
set ytic 1
set xtic 8
set xlabel 'Processes (P)'
set ylabel 'Efficiency (T_S / P * T_P)'
set title  'Efficiency, K = 14, T = 1/4'
plot 'time_mpi.dat'    u 1:(t_serial / ($1 * $6)) title 'MPI', \
     'time_hybrid.dat' u 1:(t_serial / ($1 * $6)) title 'MPI/OMP', \
