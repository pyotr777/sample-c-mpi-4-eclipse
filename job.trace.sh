#! /bin/bash -x
#PJM --rsc-list "rscgrp=small"
#PJM --rsc-list "node=100"
#PJM --rsc-list "elapse=00:10:00"
#PJM --stg-transfiles "all"
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgin "rank=* ./tau.trace.bashrc %r:./"
#PJM --stgin-dir "rank=* ../tau-2.24.1/sparc64fx %r:./tau-2.24.1/sparc64fx recursive=3"
#PJM --stgout "rank=* ./*.* ./"
. /work/system/Env_base
export TAU_PROFILE="0"
export TAU_THROTTLE="1"
export TAU_TRACE="1"
export TAU_VERBOSE="1"
. ./tau.trace.bashrc
export PATH="$(pwd)/tau/sparc64fx/bin:$PATH"
echo $HOSTNAME
env
mpiexec ./C_MPIt.exe
