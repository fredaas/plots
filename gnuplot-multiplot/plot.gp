set terminal pdf enhanced size 5,3 font 'courier'
set xlabel 'X'
set ylabel 'Y'
set xrange [-10:10]
set yrange [-5:5]
set samples 1000
set output 'out.pdf'

f(x) = sin(x)
g(x) = cos(x)

# Plot 1
set key outside
set title 'Combined'
plot for [i = 1 : 10] f(x * i * 0.1) * i * 0.2 title sprintf('f_{%d}', i)

# Plot 2
set key inside
set multiplot layout 1,3 title 'Separate'
do for [i = 1 : 3] {
    set title sprintf('Subtitle %d', i)
    plot g(x) * i * 0.5 title sprintf('f_{%d}', i)
}

# Plot 3
unset multiplot
set title 'Styles'
set style fill transparent solid 0.5 border
set style function filledcurves x1
plot [0:][-4:] \
    sin(x * 4) * 5 * exp(-x * 0.3) fs transparent pattern 4 border title 'f_{1}', \
    sin(x * 3) * 3 * exp(-x * 0.3) - 2 title 'f_{2}' lc rgb '#00afff', \
    sin(x * 2) * 2 * exp(-x * 0.3) - 3 title 'f_{3}' lc rgb '#ffa100'

# Plot 4
unset style
unset key
set title 'Multiple'
plot [-1:] \
    for [i = 1 : 3] (4 - i) * sin(x * i) * exp(-x * i * 0.2), \
    for [i = 1 : 3] -(4 - i) * sin(x * i) * exp(-x * i * 0.2)
