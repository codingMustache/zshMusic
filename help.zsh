echo ' ______     ______     __  __     __    __     __  __     ______     __     ______    '
echo '/\___  \   /\  ___\   /\ \_\ \   /\ "-./  \   /\ \/\ \   /\  ___\   /\ \   /\  ___\   '
echo '\/_/  /__  \ \___  \  \ \  __ \  \ \ \-./\ \  \ \ \_\ \  \ \___  \  \ \ \  \ \ \____  '
echo '  /\_____\  \/\_____\  \ \_\ \_\  \ \_\ \ \_\  \ \_____\  \/\_____\  \ \_\  \ \_____\ '
echo '  \/_____/   \/_____/   \/_/\/_/   \/_/  \/_/   \/_____/   \/_____/   \/_/   \/_____/ '
echo ""
echo ""

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
des3="Plays artist from library"
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

# Print the table headers
printf "%-10s %-5s %-30s %-15s\n" "$header1" "$header2" "$header3" "$header4"
printf "%-10s %-5s %-30s %-15s\n" "$com1" "$cmd1" "$des1" "$ex1"
printf "%-10s %-5s %-30s %-15s\n" "$com2" "$cmd2" "$des2" "$ex2"
printf "%-10s %-5s %-30s %-15s\n" "$com3" "$cmd3" "$des3" "$ex3"
printf "%-10s %-5s %-30s %-15s\n" "$com4" "$cmd4" "$des4" "$ex4"
printf "%-10s %-5s %-30s %-15s\n" "$com5" "$cmd5" "$des5" "$ex5"
printf "%-10s %-5s %-30s %-15s\n" "$com6" "$cmd6" "$des6" "$ex6"
printf "%-10s %-5s %-30s %-15s\n" "$com7" "$cmd7" "$des7" "$ex7"
