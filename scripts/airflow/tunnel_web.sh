#!/usr/bin/env bash

my_dir=`dirname $0`

web_pod=$(${my_dir}/get_pod.sh "web")

function forward {
    kubectl port-forward ${web_pod} 8080:8080
    status=$?
}

forward

## continuously forward
while ! [[ "${status}" -eq 10 ]]; do
    echo "lost connection, reestablishing"
    forward
done


