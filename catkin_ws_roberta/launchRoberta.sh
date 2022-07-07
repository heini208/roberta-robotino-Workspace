#!/usr/bin/env bash

program_name=$1

sudo pkill python
roslaunch roberta_robotino_translator roberta.launch &
sleep 2
python3 ~/robertaPrograms/$program_name > out.log &
exit 0

