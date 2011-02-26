(*
	Author: 		Freek Kalter
	Date:			01-03-2010
	Description:	This script syncs the playlist Phone_music with my phone. The phone is recongized by its name when connected. The script is triggered by a watcpath in launchd.
*)
(*
set sync_lib to (load script file "Mac:Users:freekkalter:Library:Scripts:music_sync_lib.scpt")
tell application "Finder" to set thefolder to folder "music" of desktop
tell sync_lib to do_sync(thefolder)
*)


set sync_lib to (load script file "Mac:Users:freekkalter:Library:Scripts:music_sync_lib.scpt")
set mobile_name to "DESIRE"
tell application "Finder"
	if disk mobile_name exists then
		if (folder "Music" of disk mobile_name exists) then
			set thefolder to folder "Music" of disk mobile_name
			tell sync_lib to do_sync(thefolder)
		end if
	end if
end tell
set front_app to (path to frontmost application as Unicode text)
tell application front_app to display dialog "phone sync klaar"
