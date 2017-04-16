# DenseNet Space Efficient Implementation In Caffe

### Caffe fork src: https://github.com/Tongcheng/caffe/

### Features

This is an implementation that use O(T) space for data, where T is number of transitions within DenseBlock, for the simple model where totalLayer L = 40 and growthRate k = 12, number of transition in each DenseBlock is 12.

In comparison, the original implementation will take O(T^2) amount of space for data.

This version currently runs (without dropout) 6 iters/second, and use space less than 2 GB on GPU for L=40,k=12 model.

The way the linear space is implemented is:

(i) setting TensorDescriptor for cudnn explicitly, allowing stride between different image. (That means initially data deployed was not continuous, our process will fill in the blank data in the middle.)

(ii) In the backward phase, we first use BN forward and ReLU forward to reconstruct the corresponding data for a transition. Then we apply the normal backward procedure.

### How to use it:

1) clone the source

2) mkdir build

3a) cmake .. (if you are using atlas)
3b) cmake .. -DBLAS=open (if you are using openblas)

4) make all
