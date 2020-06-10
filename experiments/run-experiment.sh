#!/bin/bash

mkdir -p results
cd ../examples

mpiexec -n 1 python -m mpi4py 3Dadvect.py 1> ../experiments/results/3Dadvect-1.out 2> ../experiments/results/4Dadvect-1.err
