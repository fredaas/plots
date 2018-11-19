.PHONY : all clean

all :
	$(MAKE) -C gnuplot-1 
	$(MAKE) -C gnuplot-2
	$(MAKE) -C gnuplot-3
	$(MAKE) -C gnuplot-4
	$(MAKE) -C gnuplot-5
	$(MAKE) -C gnuplot-6
	$(MAKE) -C gnuplot-7
	$(MAKE) -C gnuplot-8

clean :
	$(MAKE) clean -C gnuplot-1 
	$(MAKE) clean -C gnuplot-2
	$(MAKE) clean -C gnuplot-3
	$(MAKE) clean -C gnuplot-4
	$(MAKE) clean -C gnuplot-5
	$(MAKE) clean -C gnuplot-6
	$(MAKE) clean -C gnuplot-7
	$(MAKE) clean -C gnuplot-8
