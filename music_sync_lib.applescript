(*
	Author: 		Freek Kalter
	Date:			01-03-2010
	Description:	This script syncs the playlist Phone_music with my phone. The phone is recongized by its name when connected. The script is triggered by a watcpath in launchd.
*)


on removePunct(thisString)
	set theList to (every character of thisString) as list
	set returnlist to {}
	repeat with char in theList
		if char does not contain ":" then
			copy contents of char to the end of returnlist
		end if
	end repeat
	return returnlist as text
end removePunct

on do_sync(destination)
	
	tell application "Finder"
		try
			tell application "iTunes" to set these_tracks to (get every track of user playlist "Phone_playlist")
			set itemlist to {}
			set album_list to {}
			set album_found to false
			set album_name_list to {}
			set items_to_delete to {}
			
			--make the array with tracks to copy
			repeat with currentTrack in these_tracks
				tell application "iTunes"
					if (album artist of currentTrack is not equal to "") then
						set foldername to my removePunct((album artist of currentTrack)) & " - " & my removePunct((album of currentTrack))
					else
						set foldername to my removePunct((artist of currentTrack)) & " - " & my removePunct((album of currentTrack))
					end if
					copy foldername to the end of album_name_list
					set trackLocation to location of currentTrack
				end tell
				set album_found to false
				
				repeat with currentAlbum in album_list
					if foldername is equal to first item of (get contents of currentAlbum) then
						copy trackLocation to the end of (get contents of currentAlbum)
						set album_found to true
					end if
				end repeat
				
				if not album_found then
					copy (a reference to {foldername, trackLocation}) to the end of album_list
				end if
			end repeat
			
			--delete everything else
			set folder_content to (every item in destination)
			repeat with current_file in folder_content
				if name of current_file is not in album_name_list then
					delete current_file
				end if
			end repeat
			
			empty trash --files are not realy gone from device before trash is emptyd 
			
			-- copy that shit
			repeat with currentAlbum in album_list
				set album to (get contents of currentAlbum)
				set foldername to first item of album
				if not (folder foldername of destination exists) then
					set destination_folder to make new folder at destination with properties {name:foldername}
					set tracks to rest of album
					set tracks to my convert_that_shit(tracks, items_to_delete)
					duplicate tracks to destination_folder
				else
					set destination_folder to folder foldername of destination
					set folder_content to (get the name of every item in destination_folder)
					set all_tracks to rest of album
					set tracks to {}
					repeat with track in all_tracks
						if my replace_extension(track) is not in folder_content then --name of track without extension
							copy track to end of tracks
						end if
					end repeat
					set tracks to my convert_that_shit(tracks, items_to_delete)
					duplicate tracks to destination_folder
					
					--delete everyting in the folder that is no longer in de playlist
					set folder_content to (get every item in destination_folder)
					set tracks to {}
					repeat with track in all_tracks
						copy (my replace_extension(track)) to end of tracks
					end repeat
					repeat with current_file in folder_content
						if name of current_file is not in tracks then
							delete current_file
						end if
					end repeat
					
				end if
			end repeat
			
			repeat with delete_item in items_to_delete
				tell application "iTunes" to set item_loc to (get location of delete_item)
				tell application "iTunes" to delete delete_item
				delete item_loc
			end repeat
		on error msg
			display dialog msg
		end try
	end tell
end do_sync

on convert_that_shit(track_list, items_to_delete)
	set converted_tracks to {}
	tell application "iTunes"
		repeat with current_track in track_list
			if (the name extension of (info for current_track)) is not equal to "mp3" then
				set track_ref to item 1 of (convert current_track)
				copy (get location of track_ref) to the end of converted_tracks
				copy track_ref to the end of items_to_delete
			else
				copy current_track to the end of converted_tracks
			end if
		end repeat
	end tell
	return converted_tracks
end convert_that_shit

on replace_extension(file_alias)
	set theFileName to (name of (info for file_alias))
	set without_extension to (text 1 thru ((my last_offset(theFileName, ".")) - 1) of theFileName) & ".mp3"
	return without_extension
end replace_extension

on last_offset(the_text, char)
	try
		set i to 1
		set last_occurrence to 0
		repeat count of the_text times
			if item i of the_text as string = char then
				set last_occurrence to i
			end if
			set i to i + 1
		end repeat
	on error
		return 0
	end try
	return last_occurrence
end last_offset
