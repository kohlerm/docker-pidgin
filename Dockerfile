# Base docker image
FROM ubuntu:xenial
MAINTAINER Markus Kohler <markus.kohler@gmail.com>


# Install pidgin and dependencies
RUN mkdir -p /usr/share/icons/hicolor && \
        echo "deb http://ppa.launchpad.net/sipe-collab/ppa/ubuntu wily main">>/etc/apt/sources.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys  737F9811F93FF666 && \
	apt-get update && apt-get install -y \
	ca-certificates \
	gconf-service \
	hicolor-icon-theme \
	libappindicator1 \
	libasound2 \
	libcanberra-gtk-module \
	libcurl3 \
	libexif-dev \
	libgconf-2-4 \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libnspr4 \
	libnss3 \
	libpango1.0-0 \
	libv4l-0 \
	libxss1 \
	libxtst6 \
	wget \
	xdg-utils \
        software-properties-common \
        dbus-x11 \
	 gnome-keyring\
        pidgin  \
        pidgin-sipe && \
	 rm -rf /var/lib/apt/lists/*
#COPY local.conf /etc/fonts/local.conf

# Autorun pidgin
CMD [ "/usr/bin/pidgin" ]
