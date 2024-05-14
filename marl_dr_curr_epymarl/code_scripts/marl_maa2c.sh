#!/bin/bash

#SBATCH --job-name=marl_curr_maa2c_dr                      
#SBATCH --output=marl_curr_maa2c_dr.txt
#SBATCH --error=marl_curr_maa2c_dr.err
#SBATCH --time=04:00:00
#SBATCH --partition=scavenger
#SBATCH --qos=scavenger
#SBATCH --account=scavenger                                        
#SBATCH --mem=40gb 
#SBATCH --ntasks=4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=saptab1

cd /fs/cml-projects/MARL/MARL_Coalitions_Curriculum/epymarl
source /fs/cml-projects/MARL/saptab1/.bashrc
conda activate marl_cc
python3 src/main.py --config=maa2c --env-config=gymma with env_args.time_limit=50 env_args.key="lbforaging:Foraging-8x8-3p-3f-v2"
wait