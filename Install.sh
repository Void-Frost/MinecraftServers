#!/bin/sh
#This will install the Minecraft Server app, which can be used to run Minecraft servers EASILY.
sudo apt update
if [ -d "/home/$USER/TempMinecraftServer" ]
then
sudo rm -r "/home/$USER/TempMinecraftServer"
fi
for i in java git 
do
package="$i"
my_var=$( which "$package" )
if [ -z "$my_var" ]
then
      echo "$package was NOT FOUND. Installing now"
      if [ "$i"="java" ] 
      then
            sudo apt install "default-jdk"
else
      sudo apt install "$package"
      fi
else
      echo "\$my_var is NOT NULL"
fi
done
for i in java git
do
package="$i"
my_var=$(which "$package" )
if [ -z "$my_var" ] 
then
echo "READ THIS, VERY IMPORTANT."
echo "THERE WAS AN ERROR FETCHING PACKAGES."
echo "THE REQUIRED PACKAGES ARE java AND wget. One or both of these packages was not installed. Please install them yourself."
fi
done
cd "/home/$USER"
sudo mkdir TempMinecraftServer
cd TempMinecraftServer
sudo git clone -q "https://github.com/Void-Frost/MinecraftServers.git"
cd MinecraftServers
sudo mv minecraft-servers.sh /bin/minecraft-servers.sh
sudo mv serverjars /etc/minecraftserverjars
sudo rm -r TempMinecraftServer
sleep 1000
