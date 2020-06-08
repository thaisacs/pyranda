#!/bin/bash

mkdir -p results
cd ../examples

/usr/bin/time -o $bench-$size-TIME.out -v -p mpiexec -n 1 python -m mpi4py TaylorGreen.py 1> ../experiments/TaylorGreen-1.out 2> ../experiments/TaylorGreen-1.err
#/usr/bin/time -a -p mpiexec -n 2 python -m mpi4py TaylorGreen.py 1> TaylorGreen-2.out 2> TaylorGreen-2.err
#/usr/bin/time -a -p mpiexec -n 4 python -m mpi4py TaylorGreen.py 1> TaylorGreen-2.out 2> TaylorGreen-2.err
#/usr/bin/time -a -p mpiexec -n 8 python -m mpi4py TaylorGreen.py 1> TaylorGreen-2.out 2> TaylorGreen-2.err

/usr/bin/time -o $bench-$size-TIME.out -v -p mpiexec -n 1 python -m mpi4py 3Dadvect.py 1> ../experiments/3Dadvect-1.out 2> ../experiments/3Dadvect-1.err
#/usr/bin/time -a -p mpiexec -n 2 python -m mpi4py 3Dadvect.py 1> 3Dadvect-2.out 2> 3Dadvect-2.err
#/usr/bin/time -a -p mpiexec -n 4 python -m mpi4py 3Dadvect.py 1> 3Dadvect-4.out 2> 3Dadvect-4.err
#/usr/bin/time -a -p mpiexec -n 8 python -m mpi4py 3Dadvect.py 1> 3Dadvect-8.out 2> 3Dadvect-8.err
