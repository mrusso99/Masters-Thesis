#!/usr/bin/bash

minikube config set cpus 11
minikube config set memory 25000
minikube start 
git clone https://github.com/FudanSELab/train-ticket.git
cd train-ticket 
minikube kubectl -- create namespace train-ticket
make deploy Namespace=train-ticket
cd ../ 

minikube kubectl -- create -f prometheus-operator-crd/
minikube kubectl -- apply -R -f monitoring/

