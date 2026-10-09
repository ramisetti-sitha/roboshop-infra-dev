#!/bin/bash

component = $1
dnf install ansible -y
cd /home/ec2-user
git clone https://github.com/ramisetti-sitha/ansible--roboshop-roles.git
cd ansible--roboshop-roles
ansible-playbook -e component=$component roboshop.yaml
