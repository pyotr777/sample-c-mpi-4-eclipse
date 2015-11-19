#!/bin/bash
#PJM --rsc-list "node=2x3x2"
#PJM --rsc-list "elapse=00:01:00"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgout "rank=* ./profile.* ./"
. /work/system/Env_base
pwd
ls -la
env | grep -i tau
mpiexec ./C_MPIt.exe
ls -la
