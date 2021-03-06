#!/bin/bash
# Script Name: AtoMiC Subsonic ffmpeg update
# Author: TommyE123
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

source $SCRIPTPATH/utils/ffmpeg/ffmpeg-installer.sh
echo
echo -e $YELLOW'--->Copying ffmpeg file to /var/subsonic/transcode/...'$ENDCOLOR
yes | cp -rf /usr/bin/ffmpeg /var/subsonic/transcode/
source $SCRIPTPATH/subsonic/subsonic-constants.sh
