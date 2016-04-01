EXEC = manual
.PHONY: all
all: $(EXEC)

CC ?= gcc
CFLAGS = -std=gnu99 -Wall -O2 -g
LDFLAGS =

OBJS := manual.o

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<


$(EXEC): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

doc:
	@doxygen

clean:
	$(RM) $(EXEC) $(OBJS)

distclean:
	rm -rf doc
