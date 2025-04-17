# A Deep Learning Model for Comprehensive Automated Bone Lesion Detection and Classification on Staging Computed Tomography Scans
[Benjamin D. Simon](https://www.linkedin.com/in/benjamin-dabora-simon/), Stephanie A. Harmon, Dong Yang, Mason J. Belue, Ziyue Xu, Jesse Tetreault, Peter A. Pinto, Bradford J. Wood, Deborah E. Citrin, Ravi A. Madan, Daguang Xu, Steven A. Rosenberg MD, Peter L. Choyke, James L. Gulley MD, Baris Turkbey

The manuscript associated with this repository is currently under review and will be linked at a later date.

## Abstract
A formal detailed abstract associated with this repository will be added when the publication is online.

## Instructions for Reproducing Automated EPE Detection
1. Create a conda/virtual environment with python 3.9 or newer. 
2. Install [PyTorch](https://pytorch.org/get-started/locally/). Please us the latest version with support for your hardware. This model was trained and developed using linux, pip3, python, and CUDA 11.8.
3. Follow the instructions for installation of [nnUNet](https://github.com/MIC-DKFZ/nnUNet/tree/master). 
    - We reccommend as an integrative framework (git clone, cd nnUNet, pip install -e).
4. Create directory with your data for inference in the require format for nnUNet: images should be named such as img_001_0000.nii.gz starting at 001 and counting up to img_999_0000.nii.gz.
5. Resample all .nii.gz images to 1mm^3 per voxel.
6. Due to the large size of the model weights, we used [Git LFS](https://git-lfs.com/). You will need to install Git LFS according to the website innstructions in order to use this repository.
7. Clone this repository, and move bash script and nnUNetTrainer__nnUNetPlans__3d_fullres into your nnUNet directory.
8. Run the nnunet_inference.sh bash script and be sure to set your input path to your folder containing images, an output path to an empty directory, and export the variable 'nnUNet_results' to the 'nnUNetTrainer__nnUNetPlans__3d_fullres' directory.
9. For post processing, we filtered all connected components smaller than 138mm^3 (or 138 voxels), and used a majority vote for mixed lesions.

Please contact benjamin.simon@nih.gov with any inquiries regarding running this code.

The content of this repositiory its associated publication does not necessarily reflect the views or policies of the Department of Health and Human Services, nor does mention of trade names, commercial products, or organizations imply endorsement by the U.S. Government. 
