#!/bin/bash
exist=$(docker system info | grep -i driver | grep -i cgroupfs)

if [ -z "$exist" ]
then 

   echo "empty"

else 

    cp -af /tmp/daemon.json /etc/docker/daemon.json;
    systemctl daemon-reload && systemctl restart docker
fi