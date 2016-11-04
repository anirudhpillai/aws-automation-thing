#!/bin/bash

cd ..
ls
cd virtualenvs
ls
source bin/activate
cd ../aws-automation-thing/ref_manager
python manage.py test
