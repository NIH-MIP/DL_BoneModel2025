#!/bin/bash
module load CUDA/11.8 # or change as needed for your hardware
conda activate your_conda_environment

export nnUNet_results="/data/MIP/simonbed/CT_bone_lesion_seg_app/Training/nnUNet_withblastic/nnUNet_results_justblastic"

# Inference
nnUNetv2_predict -i /input/directory -o /output/directory -d 1 -c 3d_fullres
