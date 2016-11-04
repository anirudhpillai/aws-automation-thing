#!/bin/bash

source ../env/bin/activate
cd ref_manager
python manage.py test
