on run argv
  set artistName to item 1 of argv
  set playlistName to "zshMusic"
-- Construct the AppleScript command to play the artist's discography
tell application "Music"
	set artistPlaylist to null
	repeat with aPlaylist in playlists
		if (name of aPlaylist is equal to playlistName) then
			set artistPlaylist to aPlaylist
			exit repeat
		end if
	end repeat
	if artistPlaylist is null then
		set artistPlaylist to (make new playlist with properties {name:playlistName})
	end if
	delete every track of artistPlaylist
	set artistTracks to (every track of library playlist 1 whose artist is artistName)
	repeat with aTrack in artistTracks
		duplicate aTrack to artistPlaylist
	end repeat
	play artistPlaylist
end tell
end run