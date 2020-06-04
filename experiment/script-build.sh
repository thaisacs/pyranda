#!/bin/bash

cd ../util/mpi4py-3.0.0
python setup.py build --mpicc=/usr/bin/mpicc
python setup.py install --prefix=install_location_mpi4py
cd ../..
python setup.py build
python setup.py install --prefix=install_location_pyranda

export PYTHONPATH="$PWD/../util/mpi4py-3.0.0/install_location_mpi4py/lib/python2.7/site-packages:
$PWD/../install_location_pyranda/lib/python2.7/site-packages:$PWD/../kernel_stats"
