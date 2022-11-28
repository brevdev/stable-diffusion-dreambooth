#!/bin/bash

set -eo pipefail

conda init zsh
conda init bash 
eval "$(conda shell.bash hook)"
conda activate base 
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
# pip install -e . # so this probably installs the environment.yaml
pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113
pip install protobuf==3.20.1
pip install gdown
pip install -qq diffusers["training"]==0.3.0 transformers ftfy
pip install -qq "ipywidgets>=7,<8"
pip install huggingface_hub
pip install ipywidgets==7.7.1
pip install captionizer==1.0.1
wget https://brev-bucket-for-model-storage.s3.us-west-2.amazonaws.com/sd-v1-4.ckpt > ./model.ckpt
git clone https://github.com/djbielejeski/Stable-Diffusion-Regularization-Images-person_ddim.git
mkdir -p regularization_images/person_ddim
mv -v Stable-Diffusion-Regularization-Images-person_ddim/person_ddim/*.* regularization_images/person_ddim
pip install pyheif
# pip install cudatoolkit==1.12.1

####################################################################################
##### Specify software and dependencies that are required for this project     #####
#####                                                                          #####
##### Note:                                                                    #####
##### The working directory is /home/brev/<PROJECT_FOLDER_NAME>. Execution of  #####
##### this file happens at this level.                                         #####
####################################################################################

##### Yarn #####
# (echo ""; echo "##### Yarn #####"; echo "";)
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update
# sudo apt install -y yarn

##### Homebrew #####
# (echo ""; echo "##### Homebrew #####"; echo "";)
# curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash -
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/brev/.bash_profile
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/brev/.zshrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

##### Node v14.x + npm #####
# (echo ""; echo "##### Node v14.x + npm #####"; echo "";)
# sudo apt install ca-certificates
# curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# sudo apt-get install -y nodejs
# # install npm packages globally without sudo
# if [ ! -d "${HOME}/.npm-packages" ]
# then
# mkdir "${HOME}/.npm-packages"
# printf "prefix=${HOME}/.npm-packages" >> $HOME/.npmrc
# cat <<EOF | tee -a ~/.bashrc | tee -a ~/.zshrc
# NPM_PACKAGES="\${HOME}/.npm-packages"
# NODE_PATH="\${NPM_PACKAGES}/lib/node_modules:\${NODE_PATH}"
# PATH="\${NPM_PACKAGES}/bin:\${PATH}"
# # Unset manpath so we can inherit from /etc/manpath via the `manpath`
# # command
# unset MANPATH # delete if you already modified MANPATH elsewhere in your config
# MANPATH="\${NPM_PACKAGES}/share/man:\$(manpath)"
# EOF
# fi

##### Python + Pip + Poetry #####
# (echo ""; echo "##### Python + Pip + Poetry #####"; echo "";)
# sudo apt-get install -y python3-distutils
# sudo apt-get install -y python3-apt
# curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
# rm get-pip.py
# source $HOME/.poetry/env

##### Golang v16x #####
# (echo ""; echo "##### Golang v16x #####"; echo "";)
# wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
# sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.7.linux-amd64.tar.gz
# echo "" | sudo tee -a ~/.bashrc
# echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.bashrc
# source ~/.bashrc
# echo "" | sudo tee -a ~/.zshrc
# echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.zshrc
# source ~/.zshrc
# rm go1.16.7.linux-amd64.tar.gz

##### Custom commands #####
# (echo ""; echo "##### Custom commands #####"; echo "";)
# npm install
