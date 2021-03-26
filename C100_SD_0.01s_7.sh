#!/bin/bash
~/miniconda/bin/python -u main.py --dataset CIFAR100 --arch resnet_preact --seed 7 --outdir results/C100_SD_0.01s_7/00 --SD 0.01
~/miniconda/bin/python -u main.py --dataset CIFAR100 --arch resnet_preact --seed 7 --outdir results/test/00 --SD 0.01 load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_7/00/model_state.pth