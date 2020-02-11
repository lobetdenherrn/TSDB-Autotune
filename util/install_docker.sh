# Update the apt package index.
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y\
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

# Install the latest version of docker-ce
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# make sure that docker is installed
docker -v

# create volumes to be used by containers:
sudo mkdir -p /srv/docker/influxdb/data
sudo mkdir -p /srv/docker/grafana/data; chown 472:472 /srv/docker/grafana/data

docker pull grafana/grafana
docker pull influxdb
docker pull telegraf

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# create a symbolic link to /usr/bin or any other directory in your path.
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version