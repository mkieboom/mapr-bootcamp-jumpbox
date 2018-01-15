#!/bin/bash

# Get the docker host IP
export MAPR_HOST=$(/sbin/ip route|awk '/default/ { print $3 }')

# Workaround to set the env variable
sed -i "s/MAPR_HOST/$MAPR_CLDB_HOSTS/g" /headless/Desktop/*
sed -i "s/MAPR_HOST/$MAPR_CLDB_HOSTS/g" /mount-maprfs-script.sh

# Make all hyperlinks executable
chmod +x /headless/Desktop/*.desktop

