# Minecraft in docker

### Motivation

MCPE Linux Launcher is wonderful project, but it's quite hard to satisfy versions for all dependencies to compile project, especially on usual/dirty linux workstation with a lot of installed stuff. This project solve dependencies issues using clean, isolated env inside docker container.

### Building

    docker build -t irioth/mcpe .

### Running

For the first time:

	xhost +local:
	docker run --name mcpe -ti -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v /dev/snd:/dev/snd --privileged irioth/mcpe ./mcpelauncher

Starting existing container:

	docker start mcpe


