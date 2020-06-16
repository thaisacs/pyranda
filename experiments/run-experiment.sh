#!/bin/bash

mkdir -p results
path=$PWD/results
cd ../examples

for bench in 3Dadvect TaylorGreen; do
  for threads in 1 2 4 8; do
    now=$(date +"%m-%d-%y-%T")
    exp_path=$path/$bench/${threads}node06/$now
    mkdir -p $exp_path
    /usr/bin/time -o $exp_path/results.time -p mpiexec -n $threads python -m mpi4py ${bench}.py 1> $exp_path/results.out 2> $exp_path/results.err
    mv result.png $exp_path/results.png
  done
done
