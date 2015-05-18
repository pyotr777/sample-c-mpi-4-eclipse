#!/bin/bash
#PJM --rsc-list "node=60"
#PJM --rsc-list "elapse=00:10:00"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgin "rank=* ./03.tau.bashrc %r:./"
#PJM --stgin-dir "rank=* ../tau-2.24.1/sparc64fx %r:./tau-2.24.1/sparc64fx recursive=3"
#PJM --stgout "rank=* ./*.trc ./"
#PJM --stgout "rank=* ./*.edf ./"
. /work/system/Env_base
. ./03.tau.bashrc
export TAU_VERBOSE=1
export TAU_TRACE=1
pwd
echo "TAU=$TAU"
env | grep -i tau
ls -la
date
mpiexec ./C_MPIt.exe
date
ls -la
