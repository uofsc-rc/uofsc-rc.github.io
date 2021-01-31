#!/bin/bash

#SBATCH --job-name=qe_test
#SBATCH -o qe_out%j.out
#SBATCH -e qe_err%j.err
#SBATCH -N 2
#SBATCH --ntasks-per-node=4
#SBATCH -p defq

echo -e '\n submitted Quantum Espresso job'
echo 'hostname'
hostname

# loads Open MPI and Quantum Espresso modules
module load openmpi/gcc
module load qe

# run Quantum Espresso using Open MPI's mpirun
# results will be printed to output.file
mpirun pw.x < pwscf.in