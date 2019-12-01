#!/bin/sh

echo "HELLO"
set -ex

unzip 6000_6010_deb_1.01_20110210.zip
dpkg --install deb_1.01_20110210/xerox-phaser-6000-6010_1.0-1_i386.deb

cp /etc/default/cups /etc/default/cups.orig
cat /etc/default/cups.orig |  sed 's/LOAD_LP_MODULE=yes/LOAD_LP_MODULE=no/g' > /etc/default/cups

cp /etc/cups/cupsd.conf /etc/cups/cupsd.conf.orig
cp cupsd.conf /etc/cups/cupsd.conf

