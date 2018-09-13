set terminal pdf enhanced size 3,3 font "Courier"

set loadpath 'data'

set output 'out_main.pdf'

set samples 1000
set xtic 5

set fit quiet

plot 'data.dat' notitle,             \
     '' smooth csplines title 'f(x)' \

f(x) = a + b*x + c*x**2 + d*x**3
fit f(x) 'data.dat' using 1:2 via a,b,c,d

plot 'data.dat' u 1:2 notitle, \
     f(x) title 'f(x)'         \

f(x) = a*x**2 / exp(x)
fit f(x) 'data.dat' using 1:2 via a

plot 'data.dat' u 1:2 notitle, \
     f(x) title 'f(x)'         \
