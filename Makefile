# GNU Makefile to build a Singularity container

all: fenics.sif
.PHONY: all clean

%.sif: %.def
	sudo singularity build $@ $<

clean:
	rm -rvf *.sif
