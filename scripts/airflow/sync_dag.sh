#!/usr/bin/env bash

my_dir=`dirname $0`

# kubectl cp is recursive by default

#scheduler_pod=$(${my_dir}/get_pod.sh "airflow-scheduler")
web_pod=$(${my_dir}/get_pod.sh "airflow-web")

#kubectl cp ${my_dir}/../../dags/ ${scheduler_pod}:/usr/local/airflow/
kubectl cp ${my_dir}/../../dags/ ${web_pod}:/usr/local/airflow/


