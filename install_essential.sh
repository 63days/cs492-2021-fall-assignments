#dependencies
sudo apt-get install -y mesa-utils \
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
# If using Xquartz in MAC, defaults write org.macosforge.xquartz.X11 enable_iglx -bool true and re-run Xquartz may need to set xhost + IP
