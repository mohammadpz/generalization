#!/bin/bash
~/miniconda/bin/python -u main.py --arch vgg --seed 7 --outdir results/SD_0.0s_7/00 --SD 0.0
~/miniconda/bin/python -u main.py --arch vgg --seed 7 --outdir results/test/00 --SD 0.0 load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_7/00/model_state.pth