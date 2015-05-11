#!/bin/bash
#PJM --rsc-list "node=2x3x2"
#PJM --rsc-list "elapse=00:01:00"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin "rank=* ./C_MPIt.exe %r:./"
#PJM --stgin "rank=* ./tau.bashrc %r:./"
#PJM --stgin "rank=* ./tau/sparc64fx/* %r:./tau/sparc64fx/"
. /work/system/Env_base
. ./tau.bashrc
pwd
ls -la
env | grep -i tau
export PATH="$(pwd)/tau/sparc64fx/bin:$PATH"
mpiexec ./C_MPIt.exe
