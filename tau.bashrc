export PKG=$(pwd)
export TAUDIR=$PKG/tau-2.24.1
export TAU=$TAUDIR/sparc64fx/lib
export PATH=/opt/FJSVtclang/1.2.0/util/bin:$PATH
export LD_LIBRARY_PATH=$MPI_HOME/lib64:$PATH
export PATH=$TAUDIR/sparc64fx/bin:$PATH
export TAU_MAKEFILE="$TAU/Makefile.tau-mpi-pdt-fujitsu"
export TAU_PROFILE="1"
export TAU_THROTTLE="1"
export TAU_VERBOSE="1"
pwd
ls -l 
