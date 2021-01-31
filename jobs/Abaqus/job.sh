#!/bin/sh
#SBATCH -o aba_out%j.out
#SBATCH -e aba_err%j.err
#SBATCH --ntasks-per-node=28
#SBATCH -N 1
#SBATCH -p no-kill

## this example simulates the impact of a tennis ball onto a racket

## creates a directory to throw all the files in located in /data, creates directory in /local to run the job in
fdir=abaqus_test$SLURM_JOB_ID
resultsDir=/work/$USER/abaqus-examples/results/$fdir
mkdir /work/$USER/abaqus-examples/scratrch/$fdir
mkdir $resultsDir

scratchDir=/work/$USER/abaqus-examples/scratch/

## initializes locations of inFile and paramFile to be copied to local later
inFile=/work/$USER/abaqus-examples/tennis_surfcav.inp
paramFile="/work/$USER/abaqus-examples/tennis_ef1.inp /work/$USER/abaqus-examples/tennis_ef2.inp"
## change into local directory where results file will be stored temp
cd /work/$USER/abaqus-examples/scratch/$fdir

## copy over input file from home directory
cp $inFile .
## copy over param files
for f in $paramFile
do
        cp $f .
done

## loads the matlab module
module load abaqus
## runs the abaqus job, giving it the name testP and using the tennis_surfcav file
time abaqus job=aba_test \
            scratch=$scratchDir \
            cpus=$SLURM_JOB_CPUS_PER_NODE \
            mp_mode=THREADS \
            parallel=domain \
            input=$inFile interactive

## copys the results to the created results directory
cp -r * $resultsDir/

## removes the results from local
rm *
cd /work/$USER/abaqus-examples/scratch/
rmdir $fdir

echo 'done'