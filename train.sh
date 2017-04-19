set -e

TOOLS=/home/tl486/git_TCcaffe/caffe_solverOriginal/caffe/tools

LD_PRELOAD="/opt/OpenBLAS/lib/libopenblas.so.0 /usr/local/cuda-8.0/lib64/libcudart.so.8.0 /usr/local/cuda-8.0/lib64/libcurand.so.8.0 /usr/local/cuda-8.0/lib64/libcublas.so.8.0" $TOOLS/caffe train \
  --solver=solver.prototxt --gpu=0
