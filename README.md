# Virtual Santa
![](virtual_santa.gif)

Based on the paper [First Order Motion Model](https://github.com/AliaksandrSiarohin/first-order-model).

Forked from [Avatarify](https://github.com/alievk/avatarify)

## Install
clone avatarify:
```bash
git clone git@github.com:eghbalz/virtualsanta.git
cd virtualsanta
```

create and activate conda environment
```bash
conda create -n virtualsanta python=3.7
conda activate virtualsanta
```

run install
```bash
bash scripts/install.sh
```


## Run
```bash
CUDA_VISIBLE_DEVICES=0 python -m afy.cam_fomm --config fomm/config/vox-adv-256.yaml --checkpoint vox-adv-cpk.pth.tar --virt-cam 1 --relative --adapt_scale --avatars ./avatars/santa
```

