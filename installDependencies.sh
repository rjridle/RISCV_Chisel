#!/bin/bash

echo "Installing dependencies required for Chisel to run"
echo "Installing Java"
sudo apt-get install default-jdk
echo "Installing sbt"
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
echo "Done installing"
