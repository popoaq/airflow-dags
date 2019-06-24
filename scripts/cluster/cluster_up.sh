#!/usr/bin/env bash

my_dir=`dirname $0`

kops create cluster \
--node-count=2 \
--node-size=m3.large \
--zones=us-east-1a \
--name=${KOPS_CLUSTER_NAME}

echo "spinning up cluster"
kops update cluster --name ${KOPS_CLUSTER_NAME} --yes

# check if the cluster is up in a loop
echo "check if cluster is up"
${my_dir}/loop_validate.sh

echo "set up dashboard"
${my_dir}/setup_dashboard.sh

echo "open dashboard"
${my_dir}/open_dashboard.sh