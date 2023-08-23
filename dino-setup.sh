apt-get update
apt-get install vim nvtop htop pbzip2 -y

pip install -U cython numpy==1.23.4

# https://github.com/chuuhtetnaing/DINO#installation
# Install requirement from requirements.txt
pip install -r requirements.txt

# Compiling CUDA operators
cd models/dino/ops && python setup.py bdist_wheel && pip install dist/MultiScaleDeformableAttention*

# Return back to REPO main directory
cd ../../..


# bash scripts/DINO_train_dist_2.sh ../../data --pretrain_model_path ./checkpoint.pth
# bash scripts/DINO_train_dist_2.sh ../../data --resume=True
