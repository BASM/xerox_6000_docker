# Xerox Phaser 6000 drivers in docker 

Docker file for Xerox Phaser 6000

Download  6000_6010_deb_1.01_20110210.zip from Xerox site (https://www.support.xerox.com/support/phaser-6000/downloads/engb.html?operatingSystem=linux&fileLanguage=en_GB)

# run ./build.sh

You may run container:
# ./run.sh

It run containter without network workspase (run from main workspace). 

Manual install after build.sh:
# ./attache.sh

In the containter type:
# /etc/inid.d/cups start
 (if need)

Go to localhost:631 and config printer

