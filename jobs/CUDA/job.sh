#!/bin/bash

#SBATCH --job-name=cuda_test
#SBATCH -p v100-16gb-hiprio
#SBATCH -o cuda_out%j.out
#SBATCH -e cuda_err%j.err
#SBATCH --gres=gpu:1


echo -e '\nsubmitted cuda job'
echo 'hostname'
hostname

#loads the cuda module
module load cuda

#recompiles the vector_add.cu file
nvcc vector_add.cu -o vector_add

#runs the vector_add program
./vector_add