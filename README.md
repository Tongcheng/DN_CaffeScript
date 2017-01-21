# DenseNet Space Efficient Implementation In Caffe

### Caffe fork src: https://github.com/Tongcheng/caffe/tree/DenseBlock_release1 , branch: DenseBlock_release1

### Features and Differences of release1

### This is space efficient, while the original version takes O(n^2) to store intermediate data, this implementation take only O(n) space.
### The difference with original version is:
### 1) Original ReLU was changed to ReLU with negative_slope = 0.5, because space efficiency is achieved by reversible operations.
### 2) No dropout.
### 3) Currently version always use Batch Mean/Var for BatchNormalization for both Test and Train phase. This (hopefully) be improved in next release.

### How to use it:
### 1) clone the branch
### 2) make -j12, with cudnn option set to 1 in makefile.
