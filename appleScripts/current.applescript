tell application "Music"
    if player state is playing then
        set trackName to name of current track
        set artistName to artist of current track
        set displayText to "Now Playing: " & trackName & " by " & artistName
    else
        set displayText to "No track is currently playing."
    end if
end tell

-- Echo the information to the console
do shell script "echo " & quoted form of displayText