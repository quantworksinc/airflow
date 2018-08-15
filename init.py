#! /usr/bin/env python3

import os
import airflow
from airflow import models, settings
from airflow.contrib.auth.backends.password_auth import PasswordUser


user = PasswordUser(models.User())
user.password = os.environ.get('AIRFLOW_PASS', 'airflow')
user.username = os.environ.get('AIRFLOW_USER', 'airflow')
user.email = os.environ.get('AIRFLOW_EMAIL', 'airflow@domain.tld')

session = settings.Session()
session.add(user)
session.commit()
session.close()
