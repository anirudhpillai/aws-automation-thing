#!/bin/bash

cd ..
ls
source env/bin/activate
cd aws-automation-thing/ref_manager
python manage.py test
