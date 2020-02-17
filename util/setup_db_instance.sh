# Update the apt package index.
sudo apt-get update

# make sure docker and docker-compose are installed
chmod +x install_docker.sh
sudo ./install_docker.sh

# create volumes to be used by containers:
sudo mkdir -p /srv/docker/influxdb/data
sudo mkdir -p /srv/docker/grafana/data; chown 472:472 /srv/docker/grafana/data

docker pull grafana/grafana
docker pull influxdb
docker pull telegraf

# install iostat to measure system stats
sudo apt-get install sysstat -y

iostat -V