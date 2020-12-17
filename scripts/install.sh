#!/usr/bin/env bash
echo "do not forget to create and activate the avatarify conda environment!"
source scripts/settings.sh
# installing v4l2loopback
# if encountered issues, you may want to disable secure boot. It solves some of the problems:
#http://itadminguide.com/disable-secure-boot-in-ubuntu/
rm -rf v4l2loopback 2> /dev/null
git clone https://github.com/alievk/v4l2loopback.git
echo "--- Installing v4l2loopback (sudo privelege required)"
cd v4l2loopback
make && sudo make install
sudo depmod -a
cd ..
#
conda install -y -c conda-forge numpy==1.15.0
conda install -y pytorch==1.0.0 torchvision==0.2.1 cuda100 -c pytorch
conda install -y python-blosc==1.7.0 -c conda-forge
# FOMM
rm -rf fomm 2> /dev/null
git clone https://github.com/alievk/first-order-model.git fomm
pip install -r requirements.txt
