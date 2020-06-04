#!/bin/bash

mkdir -p results

/usr/bin/time -a -p mpiexec -n 1 python -m mpi4py TaylorGreen.py 1> TaylorGreen-1.out 2> TaylorGreen-1.err
#/usr/bin/time -a -p mpiexec -n 2 python -m mpi4py TaylorGreen.py 1> TaylorGreen-2.out 2> TaylorGreen-2.err
#/usr/bin/time -a -p mpiexec -n 4 python -m mpi4py TaylorGreen.py 1> TaylorGreen-2.out 2> TaylorGreen-2.err
#/usr/bin/time -a -p mpiexec -n 8 python -m mpi4py TaylorGreen.py 1> TaylorGreen-2.out 2> TaylorGreen-2.err

/usr/bin/time -a -p mpiexec -n 1 python -m mpi4py 3Dadvect.py 1> 3Dadvect-1.out 2> 3Dadvect-1.err
#/usr/bin/time -a -p mpiexec -n 2 python -m mpi4py 3Dadvect.py 1> 3Dadvect-2.out 2> 3Dadvect-2.err
#/usr/bin/time -a -p mpiexec -n 4 python -m mpi4py 3Dadvect.py 1> 3Dadvect-4.out 2> 3Dadvect-4.err
#/usr/bin/time -a -p mpiexec -n 8 python -m mpi4py 3Dadvect.py 1> 3Dadvect-8.out 2> 3Dadvect-8.err
