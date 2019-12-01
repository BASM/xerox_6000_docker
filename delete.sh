#!/bin/sh

set -x

sudo docker stop -f xerox_6000
sudo docker rm   -f xerox_6000
sudo docker rmi  -f xerox_6000
