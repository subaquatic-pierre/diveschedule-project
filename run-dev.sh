#! /bin/bash

source venv/bin/activate

cd client
./start.sh &
cd ..
python3 server/manage.py runserver