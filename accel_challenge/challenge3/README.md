## Run

- Open a terminal, run
    ```sh
    roscore
    ```
- Open 2nd terminal, run to pop out simulator:
    ```sh
    source ./init.sh
    $AMBF_PATH/bin/lin-x86_64/ambf_simulator --launch_file ./bash/launch_modified.yaml -l 0,1,3,4,14,15 -p 120 -t 1 --override_max_comm_freq 120
    ```
- Open 3rd terminal, run to start `crtk_interface`, which running controllers and rostopics
    ```sh
    source ./init.sh
    python ./bash/crtk_interface_modified.py
    ```
- Open 4th terminal, run the evaluation for challenge3:
    ```sh
    source ./init.sh
    cd surgical_robotics_challenge/scripts/surgical_robotics_challenge/evaluation/
    python evaluation.py -t Tstone -e 3
    ```
- Open 5rd terminal to run challenge 3 script,
    ```sh
    source ./init.sh
    cd ./accel_challenge/challenge2
    python challenge3_traj.py 
    ```


>> Note: during the process, do not pan the two windows since we rely on the two window, representing the left and right camera, for calication and tracking.


## Results

We tested our code for the case of no joint errors. It could succeed as follows:

<p align="center">
  <img src="/accel_challenge/challenge3/media/sucess_without_joint_error.png" width="700" title="suceed without joint error">
</p>

We have a video for sucessfully finishing the task 3 under the no-joint-error case. Here are the videos

- [Video 1](https://mycuhk-my.sharepoint.com/:v:/g/personal/1155135739_link_cuhk_edu_hk/EQ5RWHKIelhEmrkmoWjs-s0BvzU_CM2GonIs82xWp5jY3w?e=CKPaGB)

- [Video 2](https://mycuhk-my.sharepoint.com/:v:/g/personal/1155135739_link_cuhk_edu_hk/ETHtVZcRWlJPqk4J2ge2POMBcmceeFsfaVF0wt4rih8lYw?e=MyXMgA)
- [Video 3](https://mycuhk-my.sharepoint.com/:v:/g/personal/1155135739_link_cuhk_edu_hk/EU4yhznuLa1Pr3MJ3ycrt7IBbz8XnLL_cSnGFdgA2NpTCA?e=9icUln)

For the error cases, we have calibration procedures to predict joint error. But due to the time limit, we do no have chances to test it.





