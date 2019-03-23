#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --qos=high
#SBATCH --mem-per-cpu=16GB
#SBATCH --cpus-per-task=1
#SBATCH --job-name="low_pt"
#SBATCH --output=low_pt.out
#SBATCH --error=low_pt.error

echo "julia main.jl --lang pt --epochs 100 --dropouts 0.3 --modelType S2SContext"
julia main.jl --lang pt --epochs 100 --dropouts 0.3  --modelType S2SContext
echo "julia main.jl --lang pt --epochs 100 --lemma --dropouts 0.3 --modelType S2SContext"
julia main.jl --lang pt --epochs 100 --lemma --dropouts 0.3 --modelType S2SContext
