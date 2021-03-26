#!/bin/bash
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_1.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_1.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_2.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_2.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_3.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_3.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_4.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_4.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_5.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_5.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_6.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_6.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_7.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_7.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_8.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_8.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_9.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_9.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.0s_10.sh
sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu --cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out /home/pezeshki/scratch/icml_rebuttal/generalization/SD_0.01s_10.sh
watch -n 0.1 squeue -u pezeshki