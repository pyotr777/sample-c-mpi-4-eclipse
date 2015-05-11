CC = mpifccpx
CFLAGS = -Kfast,parallel
PROG = C_MPI.exe
TPROG = C_MPIt.exe
SRC= src/C_MPI.c
CCT = tau_cc.sh

# include eclipse.inc

all: $(PROG)

$(PROG): $(SRC) 
	$(CC) -V $(CFLAGS),optmsg=2 -o $(PROG) $(SRC) 
	
tau: $(TPROG)
	
$(TPROG) : $(SRC)
	env | grep -i tau
	echo $$PATH
	echo $$HOME
	pwd
	$(CCT) $(SRC) -o $(TPROG) $(TCFLAGS)
	
clean: 
	rm -f *.exe *.o* *.i* *.sh.e* *.sh.i* *.sh.o* *.sh.s* *script.e* *script.i* *script.s* profile* tautrace* events* *.log *file_for_script *.edf *.slog2 *.trc

