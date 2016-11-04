from fabric.api import *
import os
import logging

# logging.basicConfig(level=logging.DEBUG)

env.hosts = ["54.229.146.21"]
env.user = "ubuntu"
env.key_filename = "~/.ssh/id_prod"
env.password = ""

# def setup():
#     run('cd /home/ubuntu/aws-automatic-thing && ./djangosetup.sh')
#     run('cd /home/ubuntu/aws-automatic-thing && ./serverscripts/serversetup.sh')
#     run('cd /home/ubuntu/aws-automatic-thing && ./djangomigrations.sh')

def deploy():
    run('cd /home/ubuntu/aws-automation-thing && git pull')
    run('cd /home/ubuntu/aws-automation-thing && git status')
    run('cd /home/ubuntu/aws-automation-thing && ./update.sh')
    print('deployed')
