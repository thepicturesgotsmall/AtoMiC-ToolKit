#!/bin/bash
if [[ $ISSETUP != "Yes" ]]
then
  echo
  echo -e '\e[91mCannot be run directly. Please run setup.sh from AtoMiC ToolKit root folder: \033[0msudo bash setup.sh'
  echo
  exit 0
fi
MAINCHOICE=$(whiptail --title "AtoMiC ToolKit - htpcBeginner.com" --menu "Which app would you like to manage?" --backtitle "$BACKTITLE" --fb --cancel-button "Exit" $LINES $COLUMNS $NETLINES \
"NZBHydra" "Meta search for NZB indexers" \
"SABnzbd+" "NZB Newsgrabber / Downloader" \
"NZBGet" "NZB Newsgrabber / Downloader" \
"Utilities" "Other miscellaneous tools" \
"Coming Soon" "Apps planned for future" \
"Maintenance" "Perform maintenance tasks" 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    #echo -e $ENDCOLOR"Your chosen option:" $MAINCHOICE
    case "$MAINCHOICE" in 
		"NZBHydra" ) source $SCRIPTPATH/nzbhydra/nzbhydra-menu.sh ;;
		"SickRage" ) source $SCRIPTPATH/sickrage/sickrage-menu.sh ;;
		"SickGear" ) source $SCRIPTPATH/sickgear/sickgear-menu.sh ;;
		"Sonarr" ) source $SCRIPTPATH/sonarr/sonarr-menu.sh ;;
		"CouchPotato" ) source $SCRIPTPATH/couchpotato/couchpotato-menu.sh ;;
		"SABnzbd+" ) source $SCRIPTPATH/sabnzbdplus/sabnzbdplus-menu.sh ;;
		"NZBGet" ) source $SCRIPTPATH/nzbget/nzbget-menu.sh ;;
		"Headphones" ) source $SCRIPTPATH/headphones/headphones-menu.sh ;;
		"Lazy Librarian" ) source $SCRIPTPATH/lazylibrarian/lazylibrarian-menu.sh ;;
		"Mylar" ) source $SCRIPTPATH/mylar/mylar-menu.sh ;;
		"HTPC Manager" ) source $SCRIPTPATH/htpcmanager/htpcmanager-menu.sh ;;
		"Coming Soon" ) source $SCRIPTPATH/inc/menu-comingsoon.sh ;;
		"Maintenance" ) source $SCRIPTPATH/maintenance/maintenance-menu.sh ;;
		*) 
		echo -e $RED'Invalid Option'$ENDCOLOR
		source $SCRIPTPATH/inc/exit.sh
		;;
	esac
else
    source $SCRIPTPATH/inc/thankyou.sh
    echo
    sleep 1
fi
