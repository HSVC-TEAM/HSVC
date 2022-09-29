<div align="center">
  
# HSVC Replication of Experiments
  
</div>


<p align="center">
  </a>
  <h3 align="center">HSVC</h3>
  <p align="center">
    Transformer-based Distillation for Hierarchical Software Vulnerability Classification
  </p>
</p>
     
## Table of contents

<!-- Table of contents -->
<details open="open">
  <summary></summary>
  <ol>
    <li>
      <a href="#how-to-replicate">How to replicate</a>
        <ul>
          <li><a href="#environment-setup">Environment Setup</a></li>
          <li><a href="#datasets">Datasets</a></li>
          <li><a href="#experiments-replication">Experiments Replication</a></li>
        </ul>
    </li>
    <li>
      <a href="#appendix">Appendix</a>
    </li>
    <li>
      <a href="#license">License</a>
    </li>
    <li>
      <a href="#citation">Citation</a>
    </li>
  </ol>
</details>

## How to replicate 

### Environment Setup
<details open="open">
  <summary></summary>
  
First of all, clone this repository to your local machine and access the main dir via the following command:
```
git clone xxx
cd HSVC_Replication
```

Then, install the python dependencies via the following command:
```
pip install transformers
...
```

Alternatively, we provide requirements.txt with version of packages specified to ensure the reproducibility,
you may install via the following commands:
```
pip install -r requirements.txt
```

If having an issue with the gdown package, try the following commands:
```
git clone https://github.com/wkentaro/gdown.git
cd gdown
pip install .
cd ..
```

* We highly recommend you check out this <a href="https://pytorch.org/">installation guide</a> for the "torch" library so you can install the appropriate version on your device.
  
* To utilize GPU (optional), you also need to install the CUDA library, you may want to check out this <a href="https://docs.nvidia.com/cuda/cuda-quick-start-guide/index.html">installation guide</a>.
  
* <a href="https://www.python.org/downloads/release/python-397/">Python 3.9.7</a> is recommended, which has been fully tested without issues.
 
</details>
  
### Datasets
<details open="open">
  <summary></summary>
  
All of the dataset has the same number of columns (i.e., 7 cols), we focus on the following 2 columns to conduct our experiments:
1. source (str): ....
2. TO ADD

ADD LINK OF ORIGINAL BIG VUL REPO HERE
  
</details>
 
### Replication of Experiments
  <details open="open">
    <summary></summary>
  
  #### Reproduce Main Results (Section x.x.x in the paper)
  - HSVC (proposed approach)
    * Inference
    ```
    cd HSVC/HSVC_GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_GraphCodeBERT
    sh train_teacher.sh
    sh soft_distillation.sh
    ```
  - Devign
    * Inference
    ```
    cd baselines/ReGVD_Devign/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh test_devign.sh
    ```
    * Retrain
    ```
    cd baselines/ReGVD_Devign
    sh train_devign.sh
    ```
  - ReGVD
    * Inference
    ```
    cd baselines/ReGVD_Devign/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh test_regvd.sh
    ```
    * Retrain
    ```
    cd baselines/ReGVD_Devign
    sh train_regvd.sh
    ```
  - CodeBERT
    * Inference
    ```
    cd baselines/CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd baselines/CodeBERT
    sh run_train.sh
    ```
  - CodeGPT
    * Inference
    ```
    cd baselines/CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd baselines/CodeGPT
    sh run_train.sh
    ```
  - GraphCodeBERT
    * Inference
    ```
    cd baselines/GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd baselines/GraphCodeBERT
    sh run_train.sh
    ```
  - BAGS
    * Inference
    ```
    cd baselines/BAGS/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd baselines/BAGS
    sh run_train.sh
    ```
  - LFME
    * Inference
    ```
    cd baselines/LFME/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd baselines/LFME
    sh train_g1_teacher.sh
    sh train_g2_teacher.sh
    sh train_g3_teacher.sh
    sh soft_distillation.sh
    ```
  </details>
 
  <details open="open">
    <summary></summary>
  
  #### Reproduce Generalization Results (Section x.x.x in the paper)
  - HSVC-GraphCodeBERT
    * Inference
    ```
    cd HSVC/HSVC_GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_GraphCodeBERT
    sh train_teacher.sh
    sh soft_distillation.sh
    ```
  - HSVC-CodeBERT
    * Inference
    ```
    cd HSVC/HSVC_CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_CodeBERT
    sh train_cnn_teacher.sh
    sh soft_distillation.sh
    ```
  - HSVC-CodeGPT
    * Inference
    ```
    cd HSVC/HSVC_CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_CodeGPT
    sh train_cnn_teacher.sh
    sh soft_distillation.sh
    ```
  
  </details>
    
  <details open="open">
    <summary></summary>
    
  #### Reproduce Data Imbalance Results (Section x.x.x in the paper)
  - GraphCodeBERT + Focal Loss
    * Inference
    ```
    cd baselines/GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_fl.sh
    ```
    * Retrain
    ```
    cd baselines/GraphCodeBERT
    sh run_train_fl.sh
    ```
  - GraphCodeBERT + Logit Adjustment
    * Inference
    ```
    cd baselines/GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_la.sh
    ```
    * Retrain
    ```
    cd baselines/GraphCodeBERT
    sh run_train_la.sh
    ```
  - CodeBERT + Focal Loss
    * Inference
    ```
    cd baselines/CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_fl.sh
    ```
    * Retrain
    ```
    cd baselines/CodeBERT
    sh run_train_fl.sh
    ```
  - CodeBERT + Logit Adjustment
    * Inference
    ```
    cd baselines/CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_la.sh
    ```
    * Retrain
    ```
    cd baselines/CodeBERT
    sh run_train_la.sh
    ```
  - CodeGPT + Focal Loss
    * Inference
    ```
    cd baselines/CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_fl.sh
    ```
    * Retrain
    ```
    cd baselines/CodeGPT
    sh run_train_fl.sh
    ```
  - CodeGPT + Logit Adjustment
    * Inference
    ```
    cd baselines/CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_la.sh
    ```
    * Retrain
    ```
    cd baselines/CodeGPT
    sh run_train_la.sh
    ```
  
  </details>  
  
  <details open="open">
    <summary></summary>
    
  #### Reproduce Ablation Results - Data Splitting (Section x.x.x-(1) in the paper)
  - GraphCodeBERT + Group data by label frequency (GCB_FREQ)
    * Inference
    ```
    cd ablation_lfme_group/LFME_GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd ablation_lfme_group/LFME_GraphCodeBERT
    sh train_teacher.sh
    sh soft_distillation.sh
    ```
  - CodeBERT + Group data by label frequency (CodeBERT_FREQ)
    * Inference
    ```
    cd ablation_lfme_group/LFME_CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd ablation_lfme_group/LFME_CodeBERT
    sh train_cnn_teacher.sh
    sh soft_distillation.sh
    ```
  - CodeGPT + Group data by label frequency (CodeGPT_FREQ)
    * Inference
    ```
    cd ablation_lfme_group/LFME_CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd ablation_lfme_group/LFME_CodeGPT
    sh train_cnn_teacher.sh
    sh soft_distillation.sh
    ```
  
  </details>
 
  <details open="open">
  <summary></summary>
    
  #### Reproduce Ablation Results - Teacher Model (Section x.x.x-(2) in the paper)
  - GraphCodeBERT + Transformer Teacher
    * Inference
    ```
    cd ablation_xfmr_teacher/xfmr_GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd ablation_xfmr_teacher/xfmr_GraphCodeBERT
    sh train_gcb_teacher.sh
    sh soft_distillation.sh
    ```
  - CodeBERT + Transformer Teacher
    * Inference
    ```
    cd ablation_xfmr_teacher/xfmr_CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd ablation_xfmr_teacher/xfmr_CodeBERT
    sh train_codebert_teacher.sh
    sh soft_distillation.sh
    ```
  - CodeGPT + Transformer Teacher
    * Inference
    ```
    cd ablation_xfmr_teacher/xfmr_CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test.sh
    ```
    * Retrain
    ```
    cd ablation_xfmr_teacher/xfmr_CodeGPT
    sh train_gpt_teacher.sh
    sh soft_distillation.sh
    ```
  
  </details>
  
  <details open="open">
  <summary></summary>
    
  #### Reproduce Ablation Results - Distillation Method (Section x.x.x-(3) in the paper)
  - GraphCodeBERT + Hard Distillation
    * Inference
    ```
    cd HSVC/HSVC_GraphCodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_hard.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_GraphCodeBERT
    sh train_teacher.sh
    sh hard_distillation.sh
    ```
  - CodeBERT + Hard Distillation
    * Inference
    ```
    cd HSVC/HSVC_CodeBERT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_hard.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_CodeBERT
    sh train_cnn_teacher.sh
    sh hard_distillation.sh
    ```
  - CodeGPT + Hard Distillation
    * Inference
    ```
    cd HSVC/HSVC_CodeGPT/saved_models/checkpoint-best-acc
    sh download_models.sh
    cd ../..
    sh run_test_hard.sh
    ```
    * Retrain
    ```
    cd HSVC/HSVC_CodeGPT
    sh train_cnn_teacher.sh
    sh hard_distillation.sh
    ```
  
  </details>
    
## Appendix 
TO ADD

## License 
<a href="">MIT License</a>

## Citation
```bash
under review
```
