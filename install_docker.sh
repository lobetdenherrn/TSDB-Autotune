# Update the apt package index.
sudo apt-get update

# Install the latest version of docker-ce
sudo apt-get install docker-ce

# make sure that docker is installed
docker -v

# create volumes to be used by containers:
sudo mkdir -p /srv/docker/influxdb/data
sudo mkdir -p /srv/docker/grafana/data; chown 472:472 /srv/docker/grafana/data

docker pull grafana/grafana
docker pull influxdb
docker pull telegraf