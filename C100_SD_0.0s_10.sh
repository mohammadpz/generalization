#!/bin/bash
~/miniconda/bin/python -u main.py --dataset CIFAR100 --arch resnet_preact --seed 10 --outdir results/C100_SD_0.0s_10/00 --SD 0.0
~/miniconda/bin/python -u main.py --dataset CIFAR100 --arch resnet_preact --seed 10 --outdir results/test/00 --SD 0.0 load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_10/00/model_state.pth