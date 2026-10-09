#!/bin/bash

# we are creating50GB root disk,but only 20GB is partioned 
# remaining 30GB we need to extend using below commands

growpart /dev/nvme0v1 4
lvextend -r -L+30GB /dev/mapper/RootVG-homeVol
xfs-growfs /home

yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum -y install terraform