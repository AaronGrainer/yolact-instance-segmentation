# Yolact Instance Segmentation

<p align="center">
  <a>
    <img alt="Code Progress" src="https://img.shields.io/badge/Code-In%20Progress-yellow">
  </a>
  <a href="https://github.com/aarongrainer/tfx-kubeflow-pipeline/blob/master/LICENSE">
    <img alt="GitHub" src="https://img.shields.io/github/license/aarongrainer/tfx-kubeflow-pipeline?color=blue">
  </a>
</p>

Yolact is a fully-convolutional model for real-time instance segmentation. 


## Dataset

TODO: Add dataset description

## Installation

* Clone this repository

```shell
git clone git@github.com:AaronGrainer/yolact-instance-segmentation.git
cd yolact-instance-segmentation
```

* Setup the environment using [Miniconda](https://docs.conda.io/en/latest/miniconda.html)

```shell
conda create -n [ENV_NAME] python=3.7
conda activate [ENV_NAME]
pip install -r requirements.txt
```

## Environment Variables

1. Modify the .env file with the desired settings. This file serves to provide an easy access to all the modifiable environment variables necessary for training the model.

