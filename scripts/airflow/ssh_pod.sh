#!/usr/bin/env bash

my_dir=`dirname $0`

pod_name=$(${my_dir}/get_pod.sh $1)

kubectl exec -it ${pod_name} -- /bin/bash