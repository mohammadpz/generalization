seeds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
SDs = [0.0, 1e-2]

names = []

for seed in seeds:
    for SD in SDs:
        name = 'SD_' + str(SD) + 's_' + str(seed)
        names += [name]
        run_file = open(name + ".sh", "w")
        run_file.write('#!/bin/bash\n')
        run_file.write('~/miniconda/bin/python -u main.py --arch vgg --seed ' + str(seed) +
                       ' --outdir results/' + name + '/00 --SD ' + str(SD))
        run_file.write('\n~/miniconda/bin/python -u main.py --arch vgg --seed ' + str(seed) +
                       ' --outdir results/test/00 --SD ' + str(SD) + ' load_eval '
                       '/home/pezeshki/scratch/icml_rebuttal/generalization/results/' + name + '/00/model_state.pth')
        run_file.flush()

run_all = open("run_all.sh", "w")
run_all.write('#!/bin/bash\n')
for name in names:
    run_all.write('sbatch --time=3:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu '
                  '--cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out '
                  '/home/pezeshki/scratch/icml_rebuttal/generalization/' +
                  name + ".sh\n")
run_all.write('watch -n 0.1 squeue -u pezeshki')
run_all.flush()

# seeds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# SDs = [0.0, 1e-2]

# names = []
# seeds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# SDs = [0.0, 1e-2]

# names = []

# for seed in seeds:
#     for SD in SDs:
#         name = 'C100_SD_' + str(SD) + 's_' + str(seed)
#         names += [name]
#         run_file = open(name + ".sh", "w")
#         run_file.write('#!/bin/bash\n')
#         run_file.write('~/miniconda/bin/python -u main.py --dataset CIFAR100 --arch resnet_preact --seed ' + str(seed) +
#                        ' --outdir results/' + name + '/00 --SD ' + str(SD))
#         run_file.write('\n~/miniconda/bin/python -u main.py --dataset CIFAR100 --arch resnet_preact --seed ' + str(seed) +
#                        ' --outdir results/test/00 --SD ' + str(SD) + ' load_eval '
#                        '/home/pezeshki/scratch/icml_rebuttal/generalization/results/' + name + '/00/model_state.pth')
#         run_file.flush()

# run_all = open("run_all.sh", "w")
# run_all.write('#!/bin/bash\n')
# for name in names:
#     run_all.write('sbatch --time=7:00:0 --gres=gpu:1 --mem=12G --account=rrg-bengioy-ad_gpu '
#                   '--cpus-per-task=4 --output=/home/pezeshki/scratch/logs/slurm-%j.out '
#                   '/home/pezeshki/scratch/icml_rebuttal/generalization/' +
#                   name + ".sh\n")
# run_all.write('watch -n 0.1 squeue -u pezeshki')
# run_all.flush()
