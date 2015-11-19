#! /bin/bash -x
#PJM --rsc-list "rscgrp=small"
#PJM --rsc-list "node=10"
#PJM --rsc-list "elapse=00:01:00"
#PJM --stg-transfiles "all"
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgout "rank=* ./events.* ./traces/"
#PJM --stgout "rank=* ./tautrace.* ./traces/"
. /work/system/Env_base
. /opt/aics/TAU/env.sh
export TAU_PROFILE="0"
export TAU_THROTTLE="1"
export TAU_TRACE="1"
export TAU_VERBOSE="1"
echo $HOSTNAME
mpiexec ./C_MPIt.exe
