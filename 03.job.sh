#!/bin/bash
#PJM --rsc-list "node=2x3x2"
#PJM --rsc-list "elapse=00:01:00"
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
echo "$TAU"
touch $TAU/foo
ls -la $TAU
env | grep -i tau
mpiexec ./C_MPIt.exe
