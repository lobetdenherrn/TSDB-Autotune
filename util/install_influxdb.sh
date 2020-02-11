# This is outdated. Please do not use this, but refer to the influxdb docker container instead

#  Add the InfluxData repository to the file  /etc/apt/sources.list.d/influxdb.list
echo "deb https://repos.influxdata.com/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

# Import apt key:
sudo curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -

# Update apt index and install influxdb
sudo apt-get update
sudo apt-get install -y influxdb

# Start and enable the service to start on boot up.

sudo systemctl enable --now influxdb
sudo systemctl is-enabled influxdb

# Check service status:
systemctl status influxdb