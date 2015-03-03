#!/bin/sh -x 
#
#PJM --rsc-list "node=2x2x2"
#PJM --rsc-list "elapse=00:01:00"
#PJM --mpi "shape=2x2x2"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgin "rank=* /volume1/home/ra000007/a03106/tau.bashrc %r:./"
#PJM --stgout "rank=* ./profile* ./"
#
. /work/system/Env_base
. ./tau.bashrc 
export TAU_SAMPLING=1
export TAU_VERBOSE=1
#
mpiexec ./C_MPIt.exe