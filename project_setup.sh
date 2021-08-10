#!/bin/bash

pip install jupyterlab
pip install virtualenv

# Create directory
git clone https://github.com/arek544/git_github_tutorial.git
cd git_github_tutorial

# Create virtual environment
virtualenv venv

# Activate virtual environment
# Windows
# source venv/Scripts/activate

# Linux
source venv/bin/activate

# Create Jupyter Notebook kernel
python -m pip install ipykernel
python -m ipykernel install --name=$PROJECT_NAME

# Run Jupyter Lab
jupyter lab --ContentsManager.allow_hidden=True
