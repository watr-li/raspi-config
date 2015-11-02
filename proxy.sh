#!/bin/bash

function ctrl_c {
    echo "Stopping"
    sudo nginx -p nginx -c nginx.conf -s stop
}

trap ctrl_c INT

echo "Starting"
sudo service nginx stop
cd /home/pi/watrli &&
mkdir -p logs &&
sudo nginx -p nginx -c nginx.conf &&
    tail -f logs/nginx.log


