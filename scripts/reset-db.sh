#! /bin/bash

cd server
source ../venv/bin/activate
rm -rf db.sqlite
python3 manage.py migrate
python3 manage.py loaddata schedule/fixtures/*