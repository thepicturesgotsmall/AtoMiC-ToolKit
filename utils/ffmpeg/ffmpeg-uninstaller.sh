#!/bin/bash
# Script Name: AtoMiC FFmpeg Uninstaller
# Author: TommyE123
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

echo -e $GREEN"AtoMiC FFmpeg Uninstaller Script"$ENDCOLOR
echo -e $YELLOW'--->Removing files...'$ENDCOLOR
sudo rm -r /usr/bin/ffmpeg
sudo rm -r /usr/bin/ffprobe
sudo rm -r /usr/bin/ffserver
sudo rm -r /usr/bin/ffmpeg-10bit
echo -e $GREEN"---> FFmpeg uninstall complete."$ENDCOLOR
