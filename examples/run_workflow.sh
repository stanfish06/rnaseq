#!/usr/bin/env bash
#SBATCH --job-name=rna
#SBATCH --output=rna_%j.out
#SBATCH --error=rna_%j.err
#SBATCH --mail-type=START,END,FAIL
#SBATCH --mail-user=zyyu@umich.edu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=16:00:00
module load use.own
module load singularity
module load nextflow/25.04.6
nextflow run stanfish06/rnaseq -profile hpc -params-file ./params.json
