set terminal pdf enhanced size 4,4 font 'Courier'
set size 1,1
set output 'limits.pdf'

set style lines 5

set yrange [0:60]
set xrange [1:10]
set format x ""
set format y ""

unset key

y1(x) = log(x)
y2(x) = x
y3(x) = x*log(x)
y4(x) = x**2
y5(x) = 2**x
y6(x) = x**x

set label 1 'log(x)'  at 7,3.6  rotate by 3  l tc ls 1
set label 2 'x'       at 7,8.2  rotate by 15 l tc ls 2
set label 3 'xlog(x)' at 7,16   rotate by 30 l tc ls 3
set label 4 'x^2'     at 6.4,46 rotate by 70 l tc ls 4
set label 5 '2^x'     at 5.2,46 rotate by 80 l tc ls 5
set label 6 'x^x'     at 2.9,46 rotate by 85 l tc ls 6

plot y1(x) ls 1, \
     y2(x) ls 2, \
     y3(x) ls 3, \
     y4(x) ls 4, \
     y5(x) ls 5, \
     y6(x) ls 6  \
