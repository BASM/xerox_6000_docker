#!/bin/sh

set -ex         
sudo docker pull lpenz/debian-lenny-i386
sudo docker build -t xerox_6000 -f Dockerfile .
