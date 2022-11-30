#!/bin/bash

set -eo pipefail

conda init zsh
conda init bash 
eval "$(conda shell.bash hook)"
conda activate base
pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113
pip install omegaconf
pip install einops
pip install pytorch-lightning==1.6.5
pip install test-tube
pip install transformers
pip install kornia
pip install -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers
pip install -e git+https://github.com/openai/CLIP.git@main#egg=clip
pip install setuptools==59.5.0
pip install pillow==9.0.1
pip install torchmetrics==0.6.0
pip install protobuf==3.20.1
pip install gdown
pip install -qq diffusers["training"]==0.3.0 transformers ftfy
pip install -qq "ipywidgets>=7,<8"
pip install huggingface_hub
pip install ipywidgets==7.7.1
pip install captionizer==1.0.1
# wget https://brev-bucket-for-model-storage.s3.us-west-2.amazonaws.com/sd-v1-4.ckpt
git clone https://github.com/djbielejeski/Stable-Diffusion-Regularization-Images-person_ddim.git
mkdir -p regularization_images/person_ddim
mv -v Stable-Diffusion-Regularization-Images-person_ddim/person_ddim/*.* regularization_images/person_ddim
pip install pyheif
pip install piexif
