#!/bin/bash

pip install jupyterlab
pip install virtualenv

# Create directory
git clone https://github.com/arek544/git_github_tutorial.git
cd git_github_tutorial

# Create virtual environment
virtualenv venv

# Activate virtual environment
OS="$(uname -s)"
case $OS in
    Linux*)     source venv/bin/activate;; # Linux
    MINGW*)     source venv/Scripts/activate;; # Windows
esac

# Create Jupyter Notebook kernel
python -m pip install ipykernel
python -m ipykernel install --name=git_github_tutorial

# Run Jupyter Lab
jupyter lab --ContentsManager.allow_hidden=True 
