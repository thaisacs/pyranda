#!/bin/bash

cd ../examples
/usr/bin/time -a -p mpiexec -n 2 python -m mpi4py TaylorGreen.py
