#!/bin/bash

#SBATCH --job-name=matlab_test
#SBATCH -o matlab_out%j.out
#SBATCH -e matlab_err%j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=1

echo -e '\n submitted Matlab job'
echo 'hostname'
hostname

#loads the matlab module
module load matlab

#runs the matlabtest.m file using matlab, forwards results to results.txt
matlab -r matlabtest > results.txt