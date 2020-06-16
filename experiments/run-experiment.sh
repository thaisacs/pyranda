#!/bin/bash

mkdir -p results
cd ../examples

/usr/bin/time -o ../experiments/results/3Dadvect-TIME-2.out -p mpiexec -n 2 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-2.out 2> ../experiments/results/3Dadvect-2.err
mv 3da.png ../experiments/results/3Dadvect-2.png

/usr/bin/time -o ../experiments/results/3Dadvect-TIME-4.out -p mpiexec -n 4 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-4.out 2> ../experiments/results/3Dadvect-4.err
mv 3da.png ../experiments/results/3Dadvect-4.png

/usr/bin/time -o ../experiments/results/3Dadvect-TIME-8.out -p mpiexec -n 8 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-8.out 2> ../experiments/results/3Dadvect-8.err
mv 3da.png ../experiments/results/3Dadvect-8.png

/usr/bin/time -o ../experiments/results/TaylorGreen-TIME-2.out -p mpiexec -n 2 python -m mpi4py TaylorGreen.py 1> ../experiments/results/TaylorGreen-2.out 2> ../experiments/results/TaylorGreen-2.err
mv taylor.png ../experiments/results/Taylor-2.png

/usr/bin/time -o ../experiments/results/TaylorGreen-TIME-4.out -p mpiexec -n 4 python -m mpi4py TaylorGreen.py 1> ../experiments/results/TaylorGreen-4.out 2> ../experiments/results/TaylorGreen-4.err
mv taylor.png ../experiments/results/Taylor-4.png

/usr/bin/time -o ../experiments/results/TaylorGreen-TIME-8.out -p mpiexec -n 8 python -m mpi4py TaylorGreen.py 1> ../experiments/results/TaylorGreen-8.out 2> ../experiments/results/TaylorGreen-8.err
mv taylor.png ../experiments/results/Taylor-8.png
