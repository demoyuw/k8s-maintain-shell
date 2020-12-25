#!/bin/bash
DEPLOYNAMES=`kubectl get deploy | grep $1 | cut -d ' ' -f1`
echo $DEPLOYNAMES

for deployname in $DEPLOYNAMES ; do
    kubectl delete deploy $deployname
done

