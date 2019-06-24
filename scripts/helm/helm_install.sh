#!/usr/bin/env bash

cd /Users/emma/Code/kube-airflow

function helm_install {
    make helm-install NAMESPACE=kube-system HELM_VALUES=/Users/emma/Code/kube-airflow/airflow/values.yaml
    status=$?
}

helm_install

while ! [[ "${status}" -eq 0 ]]; do
    echo "not ready"
    sleep 2s
    helm_install
done



