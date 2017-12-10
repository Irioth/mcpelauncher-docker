FROM ubuntu:17.10

WORKDIR mcpe

RUN dpkg --add-architecture i386; apt-get update; apt-get install -y cmake zlib1g-dev:i386 libncurses5-dev:i386 libgles2-mesa-dev:i386 gcc-multilib g++-multilib libx11-dev:i386 linux-libc-dev:i386 uuid-dev:i386 libpng-dev:i386 libx11-dev:i386 libxext6:i386 pulseaudio:i386

RUN apt-get update; apt-get install -y libzip-dev:i386 libcurl4-openssl-dev:i386 libssl-dev:i386 libxrender-dev:i386 libxrandr-dev:i386 libnss3-dev:i386 libxcursor-dev:i386 libxcomposite-dev:i386 libglib2.0-dev:i386 libgdk-pixbuf2.0-dev:i386 libcairo-dev:i386 libgtk2.0-0:i386 libxss-dev:i386 libxtst-dev:i386 libasound-dev:i386 libgconf2-dev:i386

RUN apt-get install -y wget bzip2 git protobuf-compiler unzip

RUN git clone https://github.com/MCMrARM/mcpelauncher-linux .; git submodule init; git submodule update

RUN ./setup_bin_libs.sh; ./setup_cef.sh; ./download_icon.sh

RUN cmake .
RUN make

CMD ./mcpelauncher