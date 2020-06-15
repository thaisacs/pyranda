#!/bin/bash

mkdir -p results
cd ../examples

/usr/bin/time -o ../experiments/results/3Dadvect-TIME-2.out -p mpiexec -n 2 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-2.out 2> ../experiments/results/3Dadvect-2.err

/usr/bin/time -o ../experiments/results/3Dadvect-TIME-4.out mpiexec -n 4 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-4.out 2> ../experiments/results/3Dadvect-4.err

/usr/bin/time -o ../experiments/results/3Dadvect-TIME-8.out -p mpiexec -n 8 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-8.out 2> ../experiments/results/3Dadvect-8.err
