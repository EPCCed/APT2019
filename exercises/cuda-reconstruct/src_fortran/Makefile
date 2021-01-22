# 
#Makefile
#

MF= Makefile

EXE= reconstruct

SRC= reconstruct_kernels.CUF  reconstruct.CUF 


ARCH=cc70
CC=nvfortran
CFLAGS=-cuda -gpu=$(ARCH) -O3 

.SUFFIXES:
.SUFFIXES: .CUF  .o

OBJ=	$(SRC:.CUF=.o)


.CUF.o:
	$(CC) $(CFLAGS) -c $<

default: $(EXE)

$(EXE):	$(OBJ) 
	$(CC) $(CFLAGS) -o $@ $(OBJ) 

$(OBJ):	$(MF) 

clean:
	rm -f $(OBJ) $(EXE) *.mod core
