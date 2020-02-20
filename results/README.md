# Ingestion Benchmarks

Ingestion throughput was measured over several different external factors that influence the benchmarking system.

![Ingestion increase number clients only](img/ING_INC_CLIENTS_NUM.png)

![Ingestion increase number clients, devices & groups](img/ING_INC_CLIENTS_GROUPS_DEVICES_NUM.png)

![Ingestion increase number clients only](img/ING_INC_SENSOR_NUM.png)

![Ingestion increase batchsize](img/ING_INC_BATCHSIZE.png)

______

So far, the best benchmark configuration in terms of ingestion throughput was the following. Settings on influx were vanilla.

| CLIENT_NUMBER | GROUP_NUMBER | DEVICE_NUMBER | SENSOR_NUMBER | BATCH_SIZE | LOOP_RATE | REAL_INSERT_RATE | POINT_STEP | INGESTION_THROUGHPUT |
|---------------|--------------|---------------|---------------|------------|-----------|------------------|------------|----------------------|
| 20            | 20           | 20            | 300           | 500        | 10        | 1                | 5000       | 480766.96            |

______

The same benchmark (Increase number of sensors sending measurements) was performed on varying influx cache configurations. Hardware used: `B2s - 2 vCPUs & 4 GiB RAM` Variable altered: `INFLUXDB_DATA_CACHE_MAX_MEMORY_SIZE`

![Ingestion change Cache Max Memory Size over increased number of sensors](img/INFL_CACHE_VARYING_B2s.png)

Same experiment repeated on larger hardware: `D2s_v3 - 4 vCPUs & 8 GiB RAM`

![Ingestion change Cache Max Memory Size over increased number of sensors](img/INFL_CACHE_VARYING_D2s_v3.png)

Repeated the same experiment as in the proposal: Ingestion only vs. Ingestion & Query mode. When the DB is queried at the same time, the optimal external configuration seems to shift to a larger amount of sensors. This could be because the Influx engine will buffer more ingesting requests & perform the queries at the same time. Interestingly, CPU and memory was not an issue and was by far not fully utilized:

![Ingestion change Cache Max Memory Size over increased number of sensors while querying DB at same time.](img/INFL_CACHE_VARYING_D2s_v3_with_Queries.png)

![CPU, I/O and memory stats while running last experiment.](img/INFL_CACHE_VARYING_D2s_v3_with_Queries_CPU_stats.png)