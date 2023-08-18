echo "please make sure running this script in root dir of slam_in_autonomous_driving. current working dir: $PWD"

docker run -it \
-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-v "$PWD":/sad \
--gpus all \
-e NVIDIA_DRIVER_CAPABILITIES=all \
-e NVIDIA_VISIBLE_DEVICES=all \
sad:v1.2 \
/bin/bash
