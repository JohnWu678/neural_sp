export KALDI_ROOT="/home/lab5/inaguma/tool/kaldi"
# [ -f $KALDI_ROOT/tools/env.sh ] && . $KALDI_ROOT/tools/env.sh

export PATH=$PWD/utils/:$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/tools/irstlm/bin/:$PWD:$PATH
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh

### python
# export PYTHON=/home/lab5/inaguma/.pyenv/versions/anaconda3-4.1.1/bin/python
export PYTHON=/home/lab5/inaguma/.pyenv/versions/anaconda3-4.1.1/envs/`hostname`/bin/python

### CUDA
# export PATH=$PATH:/usr/local/cuda/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/lib:/usr/local/lib64:/usr/local/cuda/bin/nvcc
export PATH=$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64

export LC_ALL=C

# NOTE: set when using HTK toolkit
export HCOPY='/home/lab5/inaguma/htk-3.4/bin/HCopy'

ln -s $KALDI_ROOT/egs/wsj/s5/steps .
ln -s $KALDI_ROOT/egs/wsj/s5/utils .

export PYTHONIOENCODING='utf-8'