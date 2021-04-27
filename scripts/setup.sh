#!/bin/bash

IP=$(curl ifconfig.me)
CWD=$(pwd)
echo $IP

echo "REACT_APP_PUBLIC_IP=$IP" > $HOME/schedule-online/.env
