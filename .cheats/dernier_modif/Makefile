# DEMOS dans /usr/share/mesademos/progs/

CFLAGS = -O3 -I/usr/X11R6/include -DSHM
XLIBS = -L/usr/X11R6/lib -lX11
CC = gcc


LIBDIR = -L/usr/X11R6/lib

GL_LIB = $(LIBDIR)/libGL.a

GLU_LIB = $(LIBDIR)/libGLU.a

TK_LIB = $(LIBDIR)/libtk.a

AUX_LIB = $(LIBDIR)/libaux.a

INCDIR = -I/usr/X11R6/include 

GL_LIBS = -L$(LIBDIR) -lglut -lGLU -lGL $(XLIBS) -lm


LIB_DEP = $(GL_LIB) $(GLU_LIB)

####Type in your list of executable names###
###(same filename as source file less .c)###

PROGS = rubix

##### RULES #####

.SUFFIXES:
.SUFFIXES: .c

.c: $(LIB_DEP)
	$(CC) -I$(INCDIR) $(CFLAGS) $< $(GL_LIBS) -o $@

##### TARGETS #####

default:
	@echo "Specify a target configuration"

clean:
	-rm *.o *~

realclean:
	-rm $(PROGS)
	-rm *.o *~

targets: $(PROGS)


