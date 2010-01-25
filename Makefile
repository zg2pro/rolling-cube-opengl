CFLAGS = -O3 -I/usr/include/X11 -DSHM
XLIBS = -L/usr/X11/lib -lX11


LIBDIR = /usr/lib

GL_LIB = $(LIBDIR)/libGL.a

GLU_LIB = $(LIBDIR)/libGLU.a

TK_LIB = $(LIBDIR)/libtk.a

AUX_LIB = $(LIBDIR)/libaux.a

INCDIR = /usr/include/GL

GL_LIBS = -L$(LIBDIR) -lglut -lGLU -lGL $(XLIBS) -lm

LIB_DEP = $(GL_LIB) $(GLU_LIB)

####Type in your list of executable names###
###(same filename as source file less .c)###

PROGS = rubix

##### RULES #####

CC=g++

CPPFLAGS=-g -Wno-deprecated


all:screensaver

screensaver:screensaver.o main.cpp
	${CC} main.cpp -o screensaver screensaver.o  -I$(INCDIR) $(CFLAGS) $(GL_LIBS) -Wno-deprecated

screensaver.o:screensaver.cc
	${CC}  screensaver.cc -c  -Wno-deprecated



 clean :
	rm -f screensaver.o screensaver
