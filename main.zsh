#!/bin/zsh

music() {
  if [[ -z $1 ]]; then
    echo "Playing default music..."
  else
    case $1 in
      -open | -o)
          osascript ./appleScripts/open.applescript
        ;;
      -artist | -a)
        if [[ -z $2 ]]; then
          echo "You Need to pass an Artist"
        else
          osascript ./appleScripts/playArtist.applescript "$2"
        fi
        ;;
      -vol | -v)
        if [[ -z $2 ]]; then
          echo "This set volume 0-100"
        else
          osascript ./appleScripts/volume.applescript "$2"
        fi
        ;;
      -stop | -s)
        osascript ./appleScripts/volume.applescript "$2"
        ;;
      -play | -p)
        osascript ./appleScripts/play.applescript "$2"
        ;;
      -next | -n)
        osascript ./appleScripts/next.applescript "$2"
        ;;
      -current | -c)
        osascript ./appleScripts/current.applescript "$2"
        ;;
      *)
        echo "Invalid option flag. Please use -a, -b, or -c."
        ;;
    esac
  fi
}