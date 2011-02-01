#!/bin/tcsh

# usb_auto_copy.sh
# 
#
# Created by Freek Kalter on 11/28/10.
# Copyright 2010 Kalter&Co. All rights reserved.

set folderToBackup = "/Users/freekkalter/important"
set backupVolume = "/Volumes/FREEK"
set backupTo = "${backupVolume}"


sleep 10

if (! -e $backupVolume ) then
 exit 0
endif

# Create the folder to back up the data to (defined above)

if (! -e $backupTo) then
 mkdir -p $backupTo
endif

# Copy the files over. Here we are using rsync.

rsync -aq --delete $folderToBackup $backupTo

osascript display_dialog.scpt sync klaar
# Optionally, once the rsync is done, unmount the drive.

#hdiutil detach $backupVolume

exit 0
