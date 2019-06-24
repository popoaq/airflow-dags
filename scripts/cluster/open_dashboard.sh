#!/usr/bin/env bash


kubectl proxy &

/usr/bin/open -a "/Applications/Google Chrome.app" 'http:/localhost:8001/api/v1/namespaces/kube-system/services/kubernetes-dashboard:/proxy/#!/overview?namespace=default'
