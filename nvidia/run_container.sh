#/bin/bash

docker run \
    --rm \
    --runtime nvidia \
    --gpus all \
    --name nvcontainer \
    nvcr.io/nvidia/cuda:9.1-devel-ubuntu16.04 \
    nvidia-smi
