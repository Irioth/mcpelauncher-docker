# Minecraft in docker

### Motivation

TODO

### Building

    docker build -t mcpe .

### Running

For the first time:

	xhost +local:
	docker run --name mcpe -ti -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v /dev/snd:/dev/snd --privileged mcpe ./mcpelauncher

Starting existing container:

	docker start mcpe


