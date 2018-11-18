#
# https://registry.opendata.aws/deutsche-boerse-pds/
# s3://deutsche-boerse-xetra-pds/2018-11-16/
# every day, DAG starts kicks off job to identify patterns in
# the last 7 days of data


from __future__ import print_function
import airflow
from datetime import datetime, timedelta
from airflow.hooks.S3_hook import S3Hook
from airflow.operators.python_operator import PythonOperator
from airflow import models
import logging


args = {
    'owner': 'airflow',
    'start_date': airflow.utils.dates.days_ago(7),
    'provide_context': True
}


def initialize_etl_process():
    logging.info('Creating connections, pool and sql path')
    source_s3 = S3Hook(aws_conn_id='aws_default')
    source_s3.list_keys('deutsche-boerse-eurex-pds', prefix='2018-11-18', delimiter='/')


dag = airflow.DAG(
    'deutsche_boerse',1
    schedule_interval="@once",
    default_args=args,
    max_active_runs=1)

t1 = PythonOperator(task_id='analyze_trades',
                    python_callable=initialize_etl_process,
                    provide_context=False,
                    dag=dag)




