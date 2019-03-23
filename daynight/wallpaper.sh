#! /bin/bash

NAMEDIR="dayNight"
DIRPATH="/home/$USER/$NAMEDIR"
NAMEIMG="wall"
TIMESLEEP=10

while true; do
    if [[ -d $DIRPATH ]]; then 
        cd   $DIRPATH
        while true; do
            wget -q https://static.die.net/earth/mercator/2048.jpg    -O $DIRPATH/NAMEIMG.jpg
            gsettings set org.cinnamon.desktop.background picture-uri "file:///$DIRPATH/NAMEIMG.jpg"
            sleep $TIMESLEEP            
        done
    else
        mkdir $DIRPATH
    fi
done
