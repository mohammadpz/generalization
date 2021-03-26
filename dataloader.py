# coding: utf-8

import os
import numpy as np

import torch
import torch.utils.data

import torchvision
import torchvision.models
import torchvision.transforms

import transforms

import io
import os.path
import pickle

from PIL import Image
import torch.utils.data as data

from torchvision.datasets.utils import download_url, check_integrity


class Dataset(object):
    def __init__(self, config):
        self.config = config
        self.dataset_dir = os.path.join('~/.torchvision/datasets',
                                        config['dataset'])

        self.use_cutout = (
            'use_cutout' in config.keys()) and config['use_cutout']

        self.use_random_erasing = ('use_random_erasing' in config.keys()
                                   ) and config['use_random_erasing']

    def get_datasets(self):
        train_dataset = getattr(torchvision.datasets, self.config['dataset'])(
            self.dataset_dir, train=True, transform=self.train_transform, download=True)
        test_dataset = getattr(torchvision.datasets, self.config['dataset'])(
            self.dataset_dir, train=False, transform=self.test_transform, download=True)
        test_dataset_ood = CIFAR10_1_v6(
            '/home/pezeshki/scratch/icml_rebuttal/generalization', transform=self.test_transform, download=True)
        return train_dataset, test_dataset, test_dataset_ood

    def _get_random_erasing_train_transform(self):
        raise NotImplementedError

    def _get_cutout_train_transform(self):
        raise NotImplementedError

    def _get_default_train_transform(self):
        raise NotImplementedError

    def _get_train_transform(self):
        if self.use_random_erasing:
            return self._get_random_erasing_train_transform()
        elif self.use_cutout:
            return self._get_cutout_train_transform()
        else:
            return self._get_default_train_transform()


class CIFAR(Dataset):
    def __init__(self, config):
        super(CIFAR, self).__init__(config)

        if config['dataset'] == 'CIFAR10':
            self.mean = np.array([0.4914, 0.4822, 0.4465])
            self.std = np.array([0.2470, 0.2435, 0.2616])
        elif config['dataset'] == 'CIFAR100':
            self.mean = np.array([0.5071, 0.4865, 0.4409])
            self.std = np.array([0.2673, 0.2564, 0.2762])

        self.train_transform = self._get_train_transform()
        self.test_transform = self._get_test_transform()

    def _get_random_erasing_train_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.RandomCrop(32, padding=4),
            torchvision.transforms.RandomHorizontalFlip(),
            transforms.normalize(self.mean, self.std),
            transforms.random_erasing(
                self.config['random_erasing_prob'],
                self.config['random_erasing_area_ratio_range'],
                self.config['random_erasing_min_aspect_ratio'],
                self.config['random_erasing_max_attempt']),
            transforms.to_tensor(),
        ])
        return transform

    def _get_cutout_train_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.RandomCrop(32, padding=4),
            torchvision.transforms.RandomHorizontalFlip(),
            transforms.normalize(self.mean, self.std),
            transforms.cutout(self.config['cutout_size'],
                              self.config['cutout_prob'],
                              self.config['cutout_inside']),
            transforms.to_tensor(),
        ])
        return transform

    def _get_default_train_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.RandomCrop(32, padding=4),
            torchvision.transforms.RandomHorizontalFlip(),
            torchvision.transforms.ToTensor(),
            torchvision.transforms.Normalize(self.mean, self.std),
        ])
        return transform

    def _get_test_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.ToTensor(),
            torchvision.transforms.Normalize(self.mean, self.std),
        ])
        return transform


class MNIST(Dataset):
    def __init__(self, config):
        super(MNIST, self).__init__(config)

        self.mean = np.array([0.1307])
        self.std = np.array([0.3081])

        self.train_transform = self._get_train_transform()
        self.test_transform = self._get_default_transform()

    def _get_random_erasing_train_transform(self):
        transform = torchvision.transforms.Compose([
            transforms.normalize(self.mean, self.std),
            transforms.random_erasing(
                self.config['random_erasing_prob'],
                self.config['random_erasing_area_ratio_range'],
                self.config['random_erasing_min_aspect_ratio'],
                self.config['random_erasing_max_attempt']),
            transforms.to_tensor(),
        ])
        return transform

    def _get_cutout_train_transform(self):
        transform = torchvision.transforms.Compose([
            transforms.normalize(self.mean, self.std),
            transforms.cutout(self.config['cutout_size'],
                              self.config['cutout_prob'],
                              self.config['cutout_inside']),
            transforms.to_tensor(),
        ])
        return transform

    def _get_default_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.ToTensor(),
            torchvision.transforms.Normalize(self.mean, self.std),
        ])
        return transform

    def _get_default_train_transform(self):
        return self._get_default_transform()

    def _get_default_test_transform(self):
        return self._get_default_transform()


class FashionMNIST(Dataset):
    def __init__(self, config):
        super(FashionMNIST, self).__init__(config)

        self.mean = np.array([0.2860])
        self.std = np.array([0.3530])

        self.train_transform = self._get_train_transform()
        self.test_transform = self._get_default_transform()

    def _get_random_erasing_train_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.RandomCrop(28, padding=4),
            torchvision.transforms.RandomHorizontalFlip(),
            transforms.normalize(self.mean, self.std),
            transforms.random_erasing(
                self.config['random_erasing_prob'],
                self.config['random_erasing_area_ratio_range'],
                self.config['random_erasing_min_aspect_ratio'],
                self.config['random_erasing_max_attempt']),
            transforms.to_tensor(),
        ])
        return transform

    def _get_cutout_train_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.RandomCrop(28, padding=4),
            torchvision.transforms.RandomHorizontalFlip(),
            transforms.normalize(self.mean, self.std),
            transforms.cutout(self.config['cutout_size'],
                              self.config['cutout_prob'],
                              self.config['cutout_inside']),
            transforms.to_tensor(),
        ])
        return transform

    def _get_default_transform(self):
        transform = torchvision.transforms.Compose([
            torchvision.transforms.RandomCrop(32, padding=4),
            torchvision.transforms.RandomHorizontalFlip(),
            torchvision.transforms.ToTensor(),
            torchvision.transforms.Normalize(self.mean, self.std),
        ])
        return transform

    def _get_default_train_transform(self):
        return self._get_default_transform()

    def _get_default_test_transform(self):
        return self._get_default_transform()


def get_loader(config):
    batch_size = config['batch_size']
    num_workers = config['num_workers']
    use_gpu = config['use_gpu']

    dataset_name = config['dataset']
    assert dataset_name in ['CIFAR10', 'CIFAR100', 'MNIST', 'FashionMNIST']

    if dataset_name in ['CIFAR10', 'CIFAR100']:
        dataset = CIFAR(config)
    elif dataset_name == 'MNIST':
        dataset = MNIST(config)
    elif dataset_name == 'FashionMNIST':
        dataset = FashionMNIST(config)

    train_dataset, test_dataset, test_dataset_ood = dataset.get_datasets()

    train_loader = torch.utils.data.DataLoader(
        train_dataset,
        batch_size=batch_size,
        shuffle=True,
        num_workers=num_workers,
        pin_memory=use_gpu,
        drop_last=True,
    )
    test_loader = torch.utils.data.DataLoader(
        test_dataset,
        batch_size=batch_size,
        num_workers=num_workers,
        shuffle=False,
        pin_memory=use_gpu,
        drop_last=False,
    )
    test_loader_ood = torch.utils.data.DataLoader(
        test_dataset_ood,
        batch_size=batch_size,
        num_workers=num_workers,
        shuffle=False,
        pin_memory=use_gpu,
        drop_last=False,
    )
    return train_loader, test_loader, test_loader_ood

##############################

def load_new_test_data(root, version='default'):
    data_path = root
    filename = 'cifar10.1'
    if version == 'default':
        pass
    elif version == 'v4':
        filename += '_v4'
    elif version == 'v6':
        filename += '_v6'
    else:
        raise ValueError('Unknown dataset version "{}".'.format(version))
    label_filename = filename + '_labels.npy'
    imagedata_filename = filename + '_data.npy'
    label_filepath = os.path.join(data_path, label_filename)
    imagedata_filepath = os.path.join(data_path, imagedata_filename)
    labels = np.load(label_filepath).astype(np.int64)
    imagedata = np.load(imagedata_filepath)
    assert len(labels.shape) == 1
    assert len(imagedata.shape) == 4
    assert labels.shape[0] == imagedata.shape[0]
    assert imagedata.shape[1] == 32
    assert imagedata.shape[2] == 32
    assert imagedata.shape[3] == 3
    assert labels.shape[0] == 2000
    return imagedata, labels


class CIFAR10_1_v6(data.Dataset):
    images_url = 'https://github.com/modestyachts/CIFAR-10.1/blob/master/datasets/cifar10.1_v6_data.npy?raw=true'
    images_md5 = '4fcae82cb1326aec9ed1dc1fc62345b8'
    images_filename = 'cifar10.1_v6_data.npy'

    labels_url = 'https://github.com/modestyachts/CIFAR-10.1/blob/master/datasets/cifar10.1_v6_labels.npy?raw=true'
    labels_md5 = '09a97fb7c430502fcbd69d95093a3f85'
    labels_filename = 'cifar10.1_v6_labels.npy'

    classes = [
        'airplane', 'automobile', 'bird', 'cat', 'deer', 'dog', 'frog', 'horse',
        'ship', 'truck'
    ]

    @property
    def targets(self):
        return self.labels

    def __init__(self,
                 root,
                 transform=None,
                 target_transform=None,
                 download=False):
        self.root = os.path.expanduser(root)
        self.transform = transform
        self.target_transform = target_transform

        if download:
            self.download()

        if not self._check_integrity():
            raise RuntimeError('Dataset not found or corrupted.' +
                               ' You can use download=True to download it')

        images, labels = load_new_test_data(root, 'v6')

        self.data = images
        self.labels = labels

        self.class_to_idx = {
            _class: i
            for i, _class in enumerate(self.classes)
        }

    def __getitem__(self, index):
        """
        Args:
            index (int): Index
        Returns:
            tuple: (image, target) where target is index of the target class.
        """
        img, target = self.data[index], self.labels[index]

        # doing this so that it is consistent with all other datasets
        # to return a PIL Image
        img = Image.fromarray(img)

        if self.transform is not None:
            img = self.transform(img)

        if self.target_transform is not None:
            target = self.target_transform(target)

        return img, target

    def __len__(self):
        return len(self.data)

    def _check_integrity(self):
        data_path = os.path.join(self.root, self.images_filename)
        labels_path = os.path.join(self.root, self.labels_filename)
        return (check_integrity(data_path, self.images_md5) and 
            check_integrity(labels_path, self.labels_md5))

    def download(self):
        if self._check_integrity():
            print('Files already downloaded and verified')
            return

        root = self.root
        download_url(self.images_url, root, self.images_filename, self.images_md5)
        download_url(self.labels_url, root, self.labels_filename, self.labels_md5)

    def __repr__(self):
        fmt_str = 'Dataset ' + self.__class__.__name__ + '\n'
        fmt_str += '    Number of datapoints: {}\n'.format(self.__len__())
        fmt_str += '    Root Location: {}\n'.format(self.root)
        tmp = '    Transforms (if any): '
        fmt_str += '{0}{1}\n'.format(
            tmp,
            self.transform.__repr__().replace('\n', '\n' + ' ' * len(tmp)))
        tmp = '    Target Transforms (if any): '
        fmt_str += '{0}{1}'.format(
            tmp,
            self.target_transform.__repr__().replace('\n',
                                                     '\n' + ' ' * len(tmp)))
        return fmt_str