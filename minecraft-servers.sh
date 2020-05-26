#!/bin/bash
if [ "$1" = "-h" ]
then
echo "Usage: minecraft-servers [server version] [gui]"
echo "Example: minecraft-servers 1.8.9 gui"
echo "Gui Arguments are either gui or nogui , be sure to use lowercase"
echo "The GUI argument dictates whether the minecraft server gui will run or not"
elif [ -z "$1" ]
then
echo "Usage: minecraft-servers [server version] [gui]"
echo "Example: minecraft-servers 1.8.9 gui"
echo "Gui Arguments are either gui or nogui , be sure to use lowercase"
echo "The GUI argument dictates whether the minecraft server gui will run or not"
elif [ "$1" = "1.2.2" ] || [ "$1" = "1.2.3" ] || [ "$1" = "1.2.4" ] || [ "$1" = "1.2.5" ] || [ "$1" = "1.3.1" ] || [ "$1" = "1.3.2" ] ||
[ "$1" = "1.4.2" ] || [ "$1" = "1.4.4" ] || [ "$1" = "1.4.5" ] || [ "$1" = "1.4.6" ] || [ "$1" = "1.4.7" ] || [ "$1" = "1.5.1" ] || [ "$1" = "1.5.2" ] ||
[ "$1" = "1.6.1" ] || [ "$1" = "1.6.2" ] || [ "$1" = "1.6.4" ] || [ "$1" = "1.6.1" ] || [ "$1" = "1.6.2" ] || [ "$1" = "1.6.4" ] || [ "$1" = "1.7.2" ] || 
[ "$1" = "1.7.3" ] || [ "$1" = "1.7.4" ] || [ "$1" = "1.7.5" ] || [ "$1" = "1.7.6" ] || [ "$1" = "1.7.7" ] || [ "$1" = "1.7.8" ] || [ "$1" = "1.7.9" ] || 
[ "$1" = "1.7.10" ] || [ "$1" = "1.8" ] && [ ! -z "$2" ] && [ "$2" = "gui" ] || [ "$2" = "nogui" ]
then
echo "Loading. Minecraft Version $1"
cd /etc/minecraftserverjars/$1
if [ "$2" = "nogui" ]
then
sudo java -Xmx1024M -Xms1024M -jar $1.jar nogui
else
sudo java -Xmx1024M -Xms1024M -jar $1.jar
fi
else
echo "Error. You may have provided an invalid Minecraft version,or maybe you forgot" 
echo "the second argument. Do minecraft-servers -h for syntnax"
fi
echo "arg1, $1"
echo "arg 2, $2"
