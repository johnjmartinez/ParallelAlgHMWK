#!/bin/bash

module load cuda
module load cxx11

set -x
_cu_=$1
time nvcc $_cu_ \
    -I cuda_common/inc/ \
    -I cub/ \
    -std=c++11 \
    -l cuda \
    -D_MWAITXINTRIN_H_INCLUDED -D_FORCE_INLINES \
    -arch=compute_60 -code=sm_60 \
    -o ${_cu_%.cu}_
