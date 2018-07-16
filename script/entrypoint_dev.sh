#! /usr/bin/env sh
sleep 10
airflow initdb
airflow scheduler &
exec airflow webserver
