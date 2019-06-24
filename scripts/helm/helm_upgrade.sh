#!/usr/bin/env bash

helm upgrade --recreate-pods -f /Users/emma/Code/kube-airflow/airflow/values.yaml \
	             --install \
	             --debug \
	             airflow \
	             /Users/emma/Code/kube-airflow/airflow
