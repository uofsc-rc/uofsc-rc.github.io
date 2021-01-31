#!/bin/sh

#SBATCH --job-name=py_test
#SBATCH -o py_out%j.out
#SBATCH -e py_err%j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=1

echo -e '\nsubmitted Python job'
echo 'hostname'
hostname

# creates a python virtual environment
module load python3/anaconda/2020.02 
source activate python-environment

# run python script
python3 test.py

# exit the virtual environment
conda deactivate