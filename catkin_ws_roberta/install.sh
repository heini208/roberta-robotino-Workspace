#!/usr/bin/env bash

cd $(pwd)

mkdir -p $HOME/robertaPrograms
echo "echo  $(pwd)/devel" >| $HOME/robertaPrograms/getWorkspace.sh 

chmod +x $HOME/robertaPrograms/getWorkspace.sh 

cp -v "launchRoberta.sh" $HOME/robertaPrograms/

catkin_make
catkin_make