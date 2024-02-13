SRCS = step0_repl.p8
BINS = $(SRCS:.p8=.prg)

#####################

all: $(BINS)

dist: mal

mal: $(word $(words $(BINS)),$(BINS))
	cp $< $@

$(BINS): %.prg: %.p8 $(OTHER_SRCS)
	p8compile -target cx16 $< 

clean:
	rm -f $(BINS) mal *.asm
