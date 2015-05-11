#!/bin/bash
#PJM --rsc-list "node=2x3x2"
#PJM --rsc-list "elapse=00:01:00"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgin "rank=* ./tau.bashrc %r:./"
#PJM --stgout "rank=* ./profile* ./"
. /work/system/Env_base
. ./tau.bashrc
export TAU_SAMPLING=1
export TAU_VERBOSE=1
export TAU_TRACE=1
pwd
ls -la
env | grep -i tau
mpiexec ./C_MPIt.exe
