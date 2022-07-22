#!/usr/bin/env bash

cd $(pwd)

mkdir -p $HOME/robertaPrograms
echo "echo  $(pwd)/devel/setup.bash" >| $HOME/robertaPrograms/getWorkspace.sh 
cp -v "launchRobertaScript.sh" $HOME/robertaPrograms/

chmod +x $(pwd)/src/roberta_robotino_translator/scripts/*
chmod +x $HOME/robertaPrograms/*

catkin_make
catkin_make
