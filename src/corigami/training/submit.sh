#!/bin/bash
#SBATCH -J corigami-wandb
#SBATCH -c5
#SBATCH --partition=gpu4_medium,gpu8_medium,gpu8_long,gpu4_long
#SBATCH --gres=gpu:4
#SBATCH --mem=100gb # Job memory request
#SBATCH --time=5-00:00:00 # Time limit hrs:min:sec
#SBATCH --output=logs/%j.log # Standard output and error log

# module load condaenvs/new/n-origami
module purge
module load anaconda3/gpu/new
conda activate corigami-og
module unload anaconda3/gpu/new

python main.py

conda deactivate
# module unload

#econdaenvs/new/n-origami
