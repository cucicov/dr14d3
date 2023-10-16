#!/bin/bash

sleep 2
source /home/driade/Documents/dr14d3/driade_env/bin/activate
sleep 2
python /home/driade/Documents/dr14d3/shorter_server.py > /home/driade/Documents/dr14d3/log.txt 2>&1 &
sleep 2
python /home/driade/Documents/dr14d3/shutdown.py > /home/driade/Documents/dr14d3/log.txt 2>&1 &
