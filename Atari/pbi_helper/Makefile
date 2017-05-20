
CL=cl65
CFLAGS=-t atarixl

all: pbi.xex pbi2spi.xex lmaptest.xex

pbi.xex: pbi.c
	$(CL) $(CFLAGS) -o $@ $^

pbi2spi.xex: pbi2spi.c
	$(CL) $(CFLAGS) -o $@ $^

lmaptest.xex: lmaptest.c
	$(CL) $(CFLAGS) -o $@ $^


clean:
	rm -f *.o *.s *.xex

