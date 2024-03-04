#!/usr/bin/bash

locust --headless --users 25 --spawn-rate 3 -H http://$(minikube ip):32677 --run-time 30m --csv=esec_$i

