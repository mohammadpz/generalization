#!/bin/bash
~/miniconda/bin/python -u main.py --arch vgg --seed 6 --outdir results/SD_0.01s_6/00 --SD 0.01
~/miniconda/bin/python -u main.py --arch vgg --seed 6 --outdir results/test/00 --SD 0.01 load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_6/00/model_state.pth