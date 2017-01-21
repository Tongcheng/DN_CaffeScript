set -e

TOOLS=/home/tl486/git_TCcaffe/caffe2/caffe/build/tools

LD_PRELOAD="/opt/OpenBLAS/lib/libopenblas.so.0" $TOOLS/caffe train \
  --solver=solver.prototxt
