#!/usr/bin/env bash

# TODO: add comment about what validate cluster does
function validate_cluster {
    kops validate cluster
    status=$?
}

validate_cluster

while ! [[ "${status}" -eq 0 ]]; do
    echo "not ready"
    sleep 2s
    validate_cluster
done

