# TimescaleDB

For iotdb-benchmark, you will need to specify the following configs:

```
PORT=5432
DB_SWITCH=TimescaleDB
DATA_TYPE=DOUBLE
```

Start the container via `docker-compose up -d` from this directory and then connect to the psql cli via and make sure to create the database you specified in your config.properties file.

```
sudo docker exec -it timescale psql -h localhost -U postgres
psql ~~ CREATE DATABASE benchmark;
```