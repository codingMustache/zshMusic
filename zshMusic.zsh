#!/bin/zsh

dir="$(dirname "${0:A}")/appleScripts"

music() {
  if [[ -z $1 ]]; then
    help
  else
    case $1 in
      -open | -o)
          osascript $dir/open.applescript
        ;;
      -artist | -a)
        if [[ -z $2 ]]; then
          echo "You Need to pass an Artist"
        else
          osascript $dir/playArtist.applescript "$2"
        fi
        ;;
      -vol | -v)
        if [[ -z $2 ]]; then
          echo "This set volume 0-100"
        else
          osascript $dir/volume.applescript "$2"
        fi
        ;;
      -stop | -s)
        osascript $dir/pause.applescript "$2"
        ;;
      -play | -p)
        osascript $dir/play.applescript "$2"
        ;;
      -next | -n)
        osascript $dir/next.applescript "$2"
        ;;
      -current | -c)
        osascript $dir/current.applescript "$2"
        ;;
      -help | -h)
        help
        ;;
      *)
        help
        echo "Invalid option flag."
        ;;
    esac
  fi
}


help(){

# Define table headers
header1="COMMAND"
header2="CMD"
header3="DESCRIPTION"
header4="USAGE"

# Print table rows
com1="-open"
cmd1="-o"
des1="Launches Music"
ex1="music -o"

com2="-vol"
cmd2="-v"
des2="Changes volume"
ex2="music -v 10"

com3="-artist"
cmd3="-a"
des3="Plays artist from lib"
ex3="music -a metallica"

com4="-stop"
cmd4="-s"
des4="Pauses Music"
ex4="music -s"

com5="-play"
cmd5="-p"
des5="Plays Music"
ex5="music -p"

com6="-next"
cmd6="-n"
des6="Skips song"
ex6="music -n"

com7="-current"
cmd7="-c"
des7="Shows current track"
ex7="music -c"


echo ''
echo "  ;;;;;; ███████ ███████ ██   ██ ███    ███ ██    ██ ███████ ██  ██████ "
sleep 0.01
echo "  ;    ;    ███  ██      ██   ██ ████  ████ ██    ██ ██      ██ ██      "
sleep 0.01
echo "  ;    ;   ███   ███████ ███████ ██ ████ ██ ██    ██ ███████ ██ ██      "
sleep 0.01
echo ",;;  ,;; ███         ██  ██   ██ ██  ██  ██ ██    ██      ██ ██ ██      "
sleep 0.01
echo "';;  ';; ███████ ███████ ██   ██ ██      ██  ██████  ███████ ██  ██████ "
sleep 0.01
echo ""
sleep 0.01
# Print the table headers
printf "%-10s %-5s %-25s %-10s\n" "$header1" "$header2" "$header3" "$header4"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com1" "$cmd1" "$des1" "$ex1"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com2" "$cmd2" "$des2" "$ex2"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com3" "$cmd3" "$des3" "$ex3"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com4" "$cmd4" "$des4" "$ex4"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com5" "$cmd5" "$des5" "$ex5"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com6" "$cmd6" "$des6" "$ex6"
sleep 0.01
printf "%-10s %-5s %-25s %-10s\n" "$com7" "$cmd7" "$des7" "$ex7"
sleep 0.01
}