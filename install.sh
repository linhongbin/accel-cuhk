touch ./init.sh
echo "source ./config.sh" >> $ROOT/init.sh
echo "source $ANACONDA_PATH/bin/activate" >> $ROOT/init.sh
echo "alias python=$ANACONDA_PATH/envs/$ENV_NAME/bin/python3.7" >> $ROOT/init.sh
source $ROOT/init.sh
conda create -n $ENV_NAME python=3.7 -y
conda activate $ENV_NAME
echo "conda activate $ENV_NAME" >> $ROOT/init.sh
conda install -c conda-forge empy rospkg python-orocos-kdl -y
mkdir  $ROOT/ambf/build
pushd $ROOT/ambf/build
cmake ..
make -j8
echo "source ./ambf/build/devel/setup.sh" >> $ROOT/init.sh
popd
pushd $ROOT/surgical_robotics_challenge/scripts/
python -m pip install -e .
popd
python -m pip install torch==1.8.2 torchvision==0.9.2 torchaudio==0.8.2 --extra-index-url https://download.pytorch.org/whl/lts/1.8/cu111
python -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu111/torch1.8/index.html  
conda install -c anaconda wxpython -y
python -m pip install -r requirements.txt
python -m pip install -e .
