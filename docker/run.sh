xhost +
docker run \
    --rm \
    --privileged \
    -e DISPLAY \
    --gpus=all \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -tid \
    -v $PWD/../:/home/TextFuseNet/ \
    -v $PWD/../../../datasets/:/home/datasets/ \
    --name text-fuse-net_1.0.0 \
    -v /usr/lib/nvidia:/usr/lib/nvidia \
    -v /usr/lib32/nvidia:/usr/lib32/nvidia \
    text-fuse-net:1.0.0
