# TSDB-Autotune

Includes forks of [thulab/iotdb-benchmark](https://github.com/thulab/iotdb-benchmark) and [timescale/tsbs](https://github.com/timescale/tsbs) benchmarking tools. 

Installation scripts located in util. Diversified into benchmarking instance and db instance.

## Benchmarker

Simply execute `setup_benchmarker.sh`, `cd iotdb-benchmark` and execute `sudo docker-compose up -d` to start up the mysql and phpmyadmin interfaces to store the benchmark measurements.

PHPMyAdmin will be available at port `8080`.

For more details about the respective benchmarking tool, refer to the more specific readmes: [iotdb-benchmark](iotdb-benchmark/README.md).

## DB Instance

Simply execute `setup_db_instance.sh` and run `docker-compose up -d` while being located in this current folder to start up the influxdb and chronograf docker containers.

Chronograf will be available at port `8888`. From Chronograf, you will be able to access the influx instance via `http://influxdb:8086`.