#!/bin/bash

cd ..
ls
cd virtualenvs
ls
cd venv-system
ls
source bin/activate
cd ../../aws-automation-thing/ref_manager
python manage.py test
