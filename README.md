# A Deep Learning Model for Comprehensive Automated Bone Lesion Detection and Classification on Staging Computed Tomography Scans
[Benjamin D. Simon](https://www.linkedin.com/in/benjamin-dabora-simon/), Stephanie A. Harmon, Dong Yang, Mason J. Belue, Ziyue Xu, Jesse Tetreault, Peter A. Pinto, Bradford J. Wood, Deborah E. Citrin, Ravi A. Madan, Daguang Xu, Steven A. Rosenberg, Peter L. Choyke, James L. Gulley, Baris Turkbey

[Full Text Link](https://www.sciencedirect.com/science/article/pii/S1076633225005707?via%3Dihub)

## Abstract
# Rationale and Objectives
A common site of metastases for a variety of cancers is the bone, which is challenging and time consuming to review and important for cancer staging. Here, we developed a deep learning approach for detection and classification of bone lesions on staging CTs.
# Materials and Methods
This study developed an nnUNet model using 402 patients’ CTs, including prostate cancer patients with benign or malignant osteoblastic (blastic) bone lesions, and patients with benign or malignant osteolytic (lytic) bone lesions from various primary cancers. An expert radiologist contoured ground truth lesions, and the model was evaluated for detection on a lesion level. For classification performance, accuracy, sensitivity, specificity, and other metrics were calculated. The held-out test set consisted of 69 patients (32 with bone metastases). The AUC of AI-predicted burden of disease was calculated on a patient level.
# Results
In the independent test set, 70% of ground truth lesions were detected (67% of malignant lesions and 72% of benign lesions). The model achieved accuracy of 85% in classifying lesions as malignant or benign (91% sensitivity and 81% specificity). Although AI identified false positives in several benign patients, the patient-level AUC was 0.82 using predicted disease burden proportion.
# Conclusion
Our lesion detection and classification AI model performs accurately and has the potential to correct physician errors. Further studies should investigate if the model can impact physician review in terms of detection rate, classification accuracy, and review time.
# Key Words
OsteolyticOsteoblasticBone metastasisComputed tomographyArtificial intelligenceDeep learning

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
