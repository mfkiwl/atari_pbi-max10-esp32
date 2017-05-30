
CL=cl65
CFLAGS=-t atarixl

all: rfi.xex pbi.xex pbi2spi.xex lmaptest.xex

rfi.xex: rfi.c
	$(CL) $(CFLAGS) -o $@ $^

pbi.xex: pbi.c
	$(CL) $(CFLAGS) -o $@ $^

pbi2spi.xex: pbi2spi.c
	$(CL) $(CFLAGS) -o $@ $^

lmaptest.xex: lmaptest.c
	$(CL) $(CFLAGS) -o $@ $^


clean:
	rm -f *.o *.s *.xex

