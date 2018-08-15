#! /usr/bin/env sh

sleep 10

chmod +x ./init.py

airflow initdb
./init.py
airflow scheduler &
exec airflow webserver
