#!/bin/bash

cd ~

wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

bash Anaconda3-2019.03-Linux-x86_64.sh -b

env_name="p13n-ml-server-flask"
~/anaconda3/bin/conda env create --file environment.yml

~/anaconda3/bin/conda activate $env_name

