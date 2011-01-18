#!/bin/bash
unset PATH

#---------------commands used-------------------------------
ECHO=/bin/echo;
GREP=/usr/bin/grep;
SED=/usr/bin/sed;
SSH=/usr/bin/ssh;
DATE=/bin/date;
RSYNC=/usr/bin/rsync;
AIRPORT=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport;	
SLEEP=/bin/sleep;
LOGGER=/usr/bin/logger;

$SLEEP 30; #als de laptop uit slaapstand komt wacht dertig seconden om airport verbinding te laten maken anders gaat netwerk check fout

#---------------file locations-------------------------------
SOURCE=/Users/freekkalter/;
DESTINATION=fkalter@192.168.2.4:/home/fkalter/macBackup/;
EXCLUDES=/Users/freekkalter/Library/Scripts/backup/excludes;
SSHKEY=/Users/freekkalter/Library/Scripts/backup/id_rsa;

SOURCE_NIJMEGEN="/Users/freekkalter/Music/iTunes/iTunes Music/";
DESTINATION_NIJMEGEN="fkalter@192.168.0.3:/home/fkalter/Music/";

#---------------variables-------------------------------
NET=KalterExperia;
NET_NIJMEGEN=Sitecom;
NETWORK=`$AIRPORT -I | $GREP -w SSID | $SED "s/[^:]*://"`; #gets the networkk where your logged on
OPTIONS="--verbose 
		 --stats 
		 --compress  
		 --recursive 
		 --times 
		 --perms 
		 --links 
		 --delete  
		 --exclude-from=$EXCLUDES
		 --delete-excluded
		 --human-readable";

#-----------Na alle voorbereiding het eigenlijke script -----
$LOGGER "Backup started.";
$ECHO "Backup started: ";
$DATE;
if [ $NETWORK = $NET ]; then
{		
	$RSYNC -e "$SSH -i $SSHKEY" $OPTIONS $SOURCE $DESTINATION;
}
else
{
	if [ $NETWORK = $NET_NIJMEGEN ]; then
	{
		$RSYNC -e "$SSH -i $SSHKEY" $OPTIONS "$SOURCE_NIJMEGEN" $DESTINATION_NIJMEGEN;
	}
	else
	{
		$ECHO "Not connected to: $NET or $NET_NIJMEGEN";
	}
	fi
}
fi
$ECHO "Backup ended: ";
$DATE;
$LOGGER "Backup ended.";