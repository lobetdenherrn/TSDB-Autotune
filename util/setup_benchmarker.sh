sudo apt-get update

# Install java and maven to run the iotdb-benchmarking tools
sudo apt-get -y install openjdk-8-jdk
java -version

sudo apt-get -y install maven
mvn -version

# make sure docker and docker-compose are installed
chmod +x install_docker.sh
sudo ./install_docker.sh

docker pull mysql
docker pull phpmyadmin/phpmyadmin

# ---- backup: install mysql manually ----
# Install and setup mysql to save the benchmarking results
#sudo apt -y install mysql-server

# check if mysql is running
#sudo systemctl status mysql
# ---------------------------------------