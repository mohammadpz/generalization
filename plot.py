import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

folder = '/home/pezeshki/scratch/logs/slurm-'

experiments = {
    'Cifar_10_SD_0.0': [
        '17359674',
        '17359676',
        '17359678',
        '17359680',
        '17359682',
        '17359684',
        '17359686',
        '17359688',
        '17359690',
        '17359692'],
    'Cifar_10_SD_0.01': [
        '17359675',
        '17359677',
        '17359679',
        '17359681',
        '17359683',
        '17359685',
        '17359687',
        '17359689',
        '17359691',
        '17359693'],
    'Cifar_100_SD_0.0': [
        '17359627',
        '17359637',
        '17359639',
        '17359641',
        '17359645',
        '17359648',
        '17359629',
        '17359631',
        '17359633',
        '17359635'],
    'Cifar_100_SD_0.01': [
        '17359628',
        '17359638',
        '17359640',
        '17359644',
        '17359647',
        '17359649',
        '17359630',
        '17359632',
        '17359634',
        '17359636']}


for name in experiments.keys():
    test_accs = []
    train_accs = []
    for path in experiments[name]:
        f = open(folder + path + '.out', "r")
        for line in f.readlines():
            if 'Epoch 160 Loss ' in line:
                test_accs += [float(line.split()[-1])]
            if 'Epoch 160 Step 300/390' in line:
                # import pdb; pdb.set_trace()
                train_accs += [float(line.split()[-1][1:-1])]
    print('n_runs: ' + str(len(test_accs)))
    print(name + ' test:')
    print(np.mean(test_accs) * 100)
    print(np.std(test_accs) * 100)
    print(name + ' train:')
    print(np.mean(train_accs) * 100)
    print(np.std(train_accs) * 100)
    print('')

# plt.figure(figsize=(10, 5))
# ax_1 = plt.subplot(1, 2, 1)
# ax_2 = plt.subplot(1, 2, 2)

# for path in paths:
#     epochs = []
#     test_acc = []
#     f = open(folder + path, "r")
#     for line in f.readlines():
#         if 'Accuracy' in line and 'Step' not in line:
#             epochs += [int(line.split()[6])]
#             test_acc += [float(line.split()[10])]
#     ax_1.plot(epochs, test_acc)

# # ax_1.set_ylim([0.9, 1.0])
# plt.savefig('res.png')
