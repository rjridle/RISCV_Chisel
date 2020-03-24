#!/bin/bash

echo "Installing dependencies required for Chisel to run"
echo "Installing Java"
sudo apt-get install default-jdk
echo "Checking for sbt apt repo"
if [[ ! -e /etc/apt/sources.list.d/sbt.list ]]; then
	echo "Installing sbt"
	echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
else
	echo "sbt apt repo already installed"
fi

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
echo "Done installing"
