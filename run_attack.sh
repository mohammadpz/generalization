#!/bin/bash
~/miniconda/bin/python -u main.py --arch vgg --seed 1 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_1/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 2 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_2/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 3 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_3/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 4 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_4/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 5 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_5/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 6 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_6/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 7 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_7/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 8 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_8/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 9 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_9/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 10 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_10/00/model_state.pth

# ~/miniconda/bin/python -u main.py --arch vgg --seed 1 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.0s_1/00/model_state.pth
# ~/miniconda/bin/python -u main.py --arch vgg --seed 1 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_1/00/model_state.pth

~/miniconda/bin/python -u main.py --arch vgg --seed 1 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_1/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 2 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_2/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 3 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_3/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 4 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_4/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 5 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_5/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 6 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_6/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 7 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_7/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 8 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_8/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 9 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_9/00/model_state.pth
~/miniconda/bin/python -u main.py --arch vgg --seed 10 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/SD_0.01s_10/00/model_state.pth

~/miniconda/bin/python -u main.py --arch resnet_preact --seed 1 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_1/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 2 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_2/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 3 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_3/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 4 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_4/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 5 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_5/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 6 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_6/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 7 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_7/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 8 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_8/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 9 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_9/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 10 --outdir results/test/00 --SD 0.0 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.0s_10/00/model_state.pth  --dataset CIFAR100

~/miniconda/bin/python -u main.py --arch resnet_preact --seed 1 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_1/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 2 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_2/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 3 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_3/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 4 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_4/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 5 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_5/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 6 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_6/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 7 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_7/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 8 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_8/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 9 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_9/00/model_state.pth  --dataset CIFAR100
~/miniconda/bin/python -u main.py --arch resnet_preact --seed 10 --outdir results/test/00 --SD 0.01 --load_eval /home/pezeshki/scratch/icml_rebuttal/generalization/results/C100_SD_0.01s_10/00/model_state.pth  --dataset CIFAR100

