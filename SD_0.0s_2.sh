#!/bin/bash
~/miniconda/bin/python -u main.py --arch vgg --seed 2 --outdir results/SD_0.0s_2/00 --SD 0.0
~/miniconda/bin/python -u main.py --arch vgg --seed 2 --outdir results/test/00 --SD 0.0 load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_2/00/model_state.pth