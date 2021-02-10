#!/bin/bash
#SBATCH --job-name=torch_test
#SBATCH -o r_out%j.out
#SBATCH -e r_err%j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -p defq,defq-48core

module purge
module load python3/anaconda/2020.02 
#Create PyTorch Enviroment
conda create --name torch-env pytorch torchvision cudatoolkit=10.2 --channel pytorch
#Activate that environment
source activate torch-env
#Run script
python example.py
#Exit the conda system
conda deactivate