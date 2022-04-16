#!/bin/bash
token=$(kubeadm token list | awk '{print $1}'  | grep -iv 'token');

if [ -z "$token" ]
then
      echo "Token is empty"
else
      for i in $token; do kubeadm token delete $i; done
fi