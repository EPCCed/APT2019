#!/bin/bash
#
#SBATCH --job-name=cuda-reconstruct
#SBATCH --gres=gpu:1
#SBATCH --time=00:01:00
#SBATCH --partition=gpu-cascade
#SBATCH --qos=gpu

./reconstruct
