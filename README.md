


## Intro
This repo contains useful instructions for recreating the infrastructure 
for my talk on airlfow on kubernetes + spark on EMR 

It contains an example DAG and task, as well as helpful scripts to build up the pipeline with kubernetes.

It's meant to illustrate the ease of setting up a MVP data pipeline, and should definitely be refined before being used in production.

The repos we'll be working with:

[kube-airflow](https://github.com/mumoshu/kube-airflow)   
[docker-airflow](https://github.com/puckel/docker-airflow)  
[airflow-dags](https://github.com/popoaq/airflow-dags) (this repo)

## Get Started

Follow this tutorial to spin up a k8s cluster
https://medium.com/containermind/how-to-create-a-kubernetes-cluster-on-aws-in-few-minutes-89dda10354f4

    git clone https://github.com/popoaq/airflow-dags.git
    git clone https://github.com/popoaq/kube-airflow.git
    git clone https://github.com/popoaq/docker-airflow.git
    
    
    
    
    
Steps to replicating the airflow + kubernetes + spark + emr project

