#!/bin/sh

#SBATCH --job-name=r_test
#SBATCH -o r_out%j.out
#SBATCH -e r_err%j.err
#SBATCH -N 1
#SBATCH --tasks-per-node=1

echo -e '\n submitted R job'
echo 'hostname'
hostname

# loads python module
module load python3/anaconda/2020.02 

# activates R virtual environment
conda activate r-environment

# runs R program
R < test.r --no-save

# exit the virtual environment
conda deactivate