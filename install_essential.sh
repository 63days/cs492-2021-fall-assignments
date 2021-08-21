#dependencies
sudo apt-get update && sudo apt-get install -y \
        build-essential \
        tmux \
        apt-utils \
        mesa-utils \
        cmake \
        xorg-dev \
        freeglut3 \
        freeglut3-dev \
        mesa-common-dev \
        libosmesa6-dev \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        libx11-dev \
        libxi-dev \
        libxmu-dev \
        x11-apps \
        libeigen3-dev
# If using Xquartz in MAC, you should run "defaults write org.macosforge.xquartz.X11 enable_iglx -bool true" and re-run Xquartz. May need to set xhost + IP
