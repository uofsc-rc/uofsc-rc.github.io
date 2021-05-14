#!/bin/sh
#SBATCH --job-name=dgx_test
#SBATCH -N 1 # number of notes
#SBATCH -n 24    ## number of CU cores
#SBATCH --gres=gpu:1   ## number of GPUs
#SBATCH --output dgx_%j.out #Output file
#SBATCH --error dgx_%j.err #Error output file
#SBATCH -p dgx_aic #DGX group

#Load desired modules
module load python3/anaconda/2020.02
module load cuda/11.1
source activate /work/examples/.conda/dgx
#The following is sample script

echo " The host name is"
hostname

echo " The current directory is:"
pwd

echo -e " \nConda environment list\n"
conda list

echo -e "\nCUDA Visible Devices  "
echo  $CUDA_VISIBLE_DEVICES

echo -e "\nNvidia GPU info\n"
nvidia-smi

#Add your script. Example:
# python ./your_script.py
#See our tutorials for how to run other applications on our clusters.