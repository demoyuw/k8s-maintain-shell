#!/bin/bash
kubectl delete deployment.apps/devopsapi;
docker build /Users/demoyuw/git/iii/devops-flask/build/flask/. --tag demoyuw/devops-api;
docker push demoyuw/devops-api;
kubectl apply -f /Users/demoyuw/git/iii/devops-flask/build/flask/k8s-yaml/devopsapi-deployment.yaml
