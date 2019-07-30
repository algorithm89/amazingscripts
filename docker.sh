3!/bin/bash



dockdns="/etc/docker/daemon.json"

sudo chmod 755 ${dockdns}
echo '{"dns": ["8.8.4.4"]}' >> ${dockdns}



sudo yum update
sudo yum install yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce

sudo systemctl start docker
sudo systemctl enable docker


cat /etc/letsencrypt/live/mindx.ca/cert.pem /etc/ssl/certs/dhparam.pem > /etc/letsencrypt/live/mindx.ca/cert.dh.pem
