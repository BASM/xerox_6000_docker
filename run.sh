#!/bin/sh

# --mount type=bind,source=/x,target=/x
#  --privileged -v /dev/bus/usb:/dev/bus/usb 

#FIXME:
OPTS=""
OPTS="$OPTS --publish-all=true  --net=host "
#OPTS="$OPTS --privileged -v /dev/bus/usb:/dev/bus/usb "
#OPTS="$OPTS --device /dev/bus/usb/001/005 --device /dev/usb/lp0 "
OPTS="$OPTS --device /dev/usb/lp0 "

set -xe

if ! sudo docker run  -t $OPTS --name xerox_6000 -d xerox_6000
then
	sudo docker start xerox_6000
	sleep 5
	sudo docker exec xerox_6000 /etc/init.d/cups start
fi

