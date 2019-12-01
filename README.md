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
# sh INSTALL/ubuntu.sh

Select SQLite3 for database

Say "yes" for autostart.

After debug and testing you can deploy you image.
1. Stop image:
# ./stop.sh

2. Save image to file
# ./save.sh

3. Copy the image to you home production server

4. Load image:
# ./load.sh

5. Run image:
# ./run.sh 

PROFIT!!!
