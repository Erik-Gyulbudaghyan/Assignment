#!/usr/bin/env bash
set -e
echo "Nodes:" && kubectl get nodes -o wide
echo "System Pods:" && kubectl get pods -n kube-system
echo "Microservice Pods:" && kubectl get pods -n microservices
