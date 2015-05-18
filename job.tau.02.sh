#!/bin/bash
#PJM --rsc-list "node=2x3x2"
#PJM --rsc-list "elapse=00:01:00"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPI.exe %r:./"
#PJM --stgin "rank=* ./03.tau.bashrc %r:./"
#PJM --stgin-dir "rank=* ../tau-2.24.1/sparc64fx %r:./tau-2.24.1/sparc64fx recursive=3"
#PJM --stgout "rank=* ./*.trc ./"
#PJM --stgout "rank=* ./*.edf ./"
. /work/system/Env_base
. ./03.tau.bashrc
env | grep -i '/home/ra000007/a03106'
pwd
ls -la
env | grep -i tau
export PATH="$(pwd)/tau/sparc64fx/bin:$PATH"
mpiexec tau_exec ./C_MPI.exe
