
#!/bin/bash

sudo yum update -y
sudo yum install -y centos-release-openstack-rocky
sudo yum update -y
sudo yum install -y openstack-packstack
sudo packstack --allinone