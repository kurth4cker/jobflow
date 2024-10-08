#Makefile autogenerated by RcB2
prefix = /usr/local
bindir = $(prefix)/bin

PROG = jobflow
SRCS =  sblist.c \
	jobflow.c

LIBS = 

CFLAGS_N = 
CPPFLAGS_N = 
LDFLAGS_N = 

OBJS = $(SRCS:.c=.o)

MAKEFILE := $(firstword $(MAKEFILE_LIST))

-include config.mak

all: $(PROG)

clean:
	rm -f $(PROG)
	rm -f $(OBJS)

rebuild:
	$(MAKE) -f $(MAKEFILE) clean && $(MAKE) -f $(MAKEFILE) all

install: $(PROG)
	install -d $(DESTDIR)/$(bindir)
	install -D -m 755 $(PROG) $(DESTDIR)/$(bindir)/

src: $(SRCS)
	$(CC) $(CPPFLAGS_N) $(CPPFLAGS) $(CFLAGS_N) $(CFLAGS) -o $(PROG) $^ $(LDFLAGS_N) $(LDFLAGS) $(LIBS)

%.o: %.c
	$(CC) $(CPPFLAGS_N) $(CPPFLAGS) $(CFLAGS_N) $(CFLAGS) $(CFLAGS_RCB) -c -o $@ $<

$(PROG): $(OBJS)
	$(CC) $(CFLAGS_N) $(CFLAGS) $(LDFLAGS_N) $(LDFLAGS) $(OBJS) $(LIBS) -o $@

check: $(PROG)
	sh test.sh

.PHONY: all clean rebuild install src check
