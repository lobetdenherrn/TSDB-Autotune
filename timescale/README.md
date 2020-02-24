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

## Experimental results:

First results as follows:

| "id" | "CLIENT\_NUMBER" | "GROUP\_NUMBER" | "DEVICE\_NUMBER" | "SENSOR\_NUMBER" | "BATCH\_SIZE" | "LOOP\_RATE" | "REAL\_INSERT\_RATE" | "POINT\_STEP" | "INGESTION\_THROUGHPUT" |
|------|------------------|-----------------|------------------|------------------|---------------|--------------|----------------------|---------------|-------------------------|
| "5"  | "20"             | "20"            | "20"             | "300"            | "100"         | "10"         | "1"                  | "5000"        | "150515\.6"             |