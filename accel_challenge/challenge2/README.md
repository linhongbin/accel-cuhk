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
- Open 4th terminal, run the evaluation for challenge2:
    ```sh
    source ./init.sh
    cd surgical_robotics_challenge/scripts/surgical_robotics_challenge/evaluation/
    python evaluation.py -t Tstone -e 2
    ```
- Open 5rd terminal to run challenge 2 script,
    ```sh
    source ./init.sh
    cd ./accel_challenge/challenge2
    python examples/challenge2_traj.py 
    ```

>> Note: during the process, do not pan the 1st window since we rely on the 1st window, representing the left camera, for calication.
