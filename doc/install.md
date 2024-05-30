```sh
touch ./ambf.sh
echo "AMBF_PATH="./ambf"" >> ./ambf.sh
source ./ambf.sh 
echo "$AMBF_PATH/bin/lin-x86_64/ambf_simulator --launch_file ./bash/launch_modified.yaml -l 0,1,3,4,14,15 -p 120 -t 1 --override_max_comm_freq 120" >> ambf.sh
```

test
```sh
source ambf.sh
```

```sh
touch ./init.sh
echo "ANACONDA_PATH="$HOME/anaconda3""  >> ./init.sh # modify according to your installation 
echo "ENV_NAME=gym-ras" >> ./init.sh
echo "source $ANACONDA_PATH/bin/activate" >> ./init.sh
echo "alias python=$ANACONDA_PATH/envs/$ENV_NAME/bin/python3.7" >> ./init.sh
source init.sh
conda create -n $ENV_NAME python=3.7 -y
conda activate $ENV_NAME
python -m pip install torch==1.8.2 torchvision==0.9.2 torchaudio==0.8.2 --extra-index-url https://download.pytorch.org/whl/lts/1.8/cu111
python -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu111/torch1.8/index.html  
conda install -c anaconda wxpython -y
python -m pip install -r requirements.txt
conda install -c conda-forge empy rospkg python-orocos-kdl -y # install pre-compiled ros packages
cd ./surgical_robotics_challenge/scripts/
python -m pip install -e .
cd ../..
echo "conda activate $ENV_NAME" >> init.sh
```