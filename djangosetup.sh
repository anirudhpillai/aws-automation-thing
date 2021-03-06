#!/bin/bash

echo "Now installing all Python tools"

function virtualenv_dep_install {
    cd ref_manager
    if [ ! -d env/bin ]; then
	virtualenv env 
	echo "Created virtual environment"
    fi
    if [ ! -f env/updated ]; then
	source env/bin/activate
	pip install -r requirements.txt
	touch venv/updated
	echo "Installed python packages"
	deactivate
    fi
}


yes yes | sudo apt-get update
yes yes | sudo apt-get install python-pip python-dev libpq-dev postgresql postgresql-contrib nginx systemd ufw

pip install --upgrade pip
sudo pip install virtualenv

virtualenv_dep_install
echo "Now performing Django tasks"
pwd
ls
echo "NOW PLEASE INSERT AWS SETTINGS IN aws_settings"
exit 0
