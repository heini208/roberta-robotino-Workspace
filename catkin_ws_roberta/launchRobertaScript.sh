#!/bin/bash

program_name=$1

topics=$(rostopic list)

if [[ $topics != *"reset_odometry"* ]];
then 
	roslaunch roberta_robotino_translator roberta.launch &
fi

while  [[ $topics != *"reset_odometry"* ]]; 
do
	topics=$(rostopic list)
	sleep .5
done

python3 $HOME/robertaPrograms/$program_name > $HOME/robertaPrograms/out.log

