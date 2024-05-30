## Overview

This is CUHK team's official code for AccelNet2022, challenges in surgical autonomy.

[[project website](https://sites.google.com/view/accel-2022-cuhk)]

## Dowload

- Download package
    ```sh
    git clone https://github.com/linhongbin/accel-cuhk.git
    cd accel-cuhk
    git submodule update --init --recursive
    ```

- Download models
    Bash Download
    ```sh
    source ./init.sh
    gdown --folder https://drive.google.com/drive/u/1/folders/1eiXzMv_ZAUeLER_NTRM3zLrPhgxLtzn8
    ```
    Or you can download from [google drive](https://drive.google.com/drive/u/1/folders/1eiXzMv_ZAUeLER_NTRM3zLrPhgxLtzn8)

## Install
- Modify [config.sh](./config.sh) file, where you can set path variables.
- Install via bash

    ```sh
    source install.sh
    ```

## How to Run

- Challenge 1, please refer to [README](https://github.com/linhongbin-ws/accel-challenge/tree/master/accel_challenge/challenge1)
- Challenge 2, please refer to [README](https://github.com/linhongbin-ws/accel-challenge/tree/master/accel_challenge/challenge2)
- Challenge 3, please refer to [README](https://github.com/linhongbin-ws/accel-challenge/tree/master/accel_challenge/challenge3)



## Citation

```
@inproceedings{hlin2022Accel,
  title={{Open-source High-precision Autonomous Suturing Framework With Visual Guidance}},
  author={Lin, Hongbin and Li, Bin and Liu, Yunhui  and Kwok Wai Samuel Au},
  booktitle={IEEE Int. Conf. Robotics and Automation (ICRA) Workshop on ``A Panacea Or An Alchemy? Benefits And Risks Of Robot Learning In Medical Applications''},
  year={2022}
}
```