#!/bin/bash
#SBATCH --job-name=tf_test
#SBATCH -o r_out%j.out
#SBATCH -e r_err%j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -p defq

module purge
module load python3/anaconda/2020.02 
source activate tensorflow_env

python example.py
conda deactivate