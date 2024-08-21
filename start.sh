#!/bin/bash

# get Anaconda's Python 3.8.10 for Poetry to run in
export CUDA_VISIBLE_DEVICES="0,1"
# source <(conda activate py38)
conda activate py38

# run NB instance on this Python on port 20926 and wo/ a browser
nohup poetry run jupyter notebook --port=20926 --no-browser >./jupyter-std.log 2>./jupyter-err.log &
