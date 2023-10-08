#!/bin/zsh

music() {
  if [[ -z $1 ]]; then
    # Default command when no option flag is provided
    echo "Playing default music..."
    # Add your default command here
  else
    case $1 in
      -o)
          osascript ./appleScripts/open.applescript
        ;;
      -p)
        if [[ -z $2 ]]; then
          echo "You Need to pass an Artist"
        else
          osascript ./appleScripts/playArtist.applescript "$2"
        fi
        ;;
      -v)
        if [[ -z $2 ]]; then
          echo "This set volume 0-100"
        else
          osascript ./appleScripts/volume.applescript "$2"
        fi
        ;;
      *)
        echo "Invalid option flag. Please use -a, -b, or -c."
        ;;
    esac
  fi
}