#!/bin/bash
DEPLOYNAMES=`kubectl get deploy | cut -d ' ' -f1`
echo $DEPLOYNAMES

for deployname in $DEPLOYNAMES ; do
    kubectl delete deploy $deployname
done

SERVICENAMES=`kubectl get service | cut -d ' ' -f1`
echo $SERVICENAMES
for servicename in $SERVICENAMES ; do
    kubectl delete svc $servicename
done
