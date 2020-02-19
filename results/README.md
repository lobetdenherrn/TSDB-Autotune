# Ingestion Benchmarks

Ingestion throughput was measured over several different external factors that influence the benchmarking system.

![Ingestion increase number clients only](img/ING_INC_CLIENTS_NUM.png)

![Ingestion increase number clients, devices & groups](img/ING_INC_CLIENTS_GROUPS_DEVICES_NUM.png)

![Ingestion increase number clients only](img/ING_INC_SENSOR_NUM.png)

![Ingestion increase batchsize](img/ING_INC_BATCHSIZE.png)

______

So far, the best configuration in terms of ingestion throughput has been

| CLIENT_NUMBER | GROUP_NUMBER | DEVICE_NUMBER | SENSOR_NUMBER | BATCH_SIZE | LOOP_RATE | REAL_INSERT_RATE | POINT_STEP | INGESTION_THROUGHPUT |
|---------------|--------------|---------------|---------------|------------|-----------|------------------|------------|----------------------|
| 20            | 20           | 20            | 300           | 500        | 10        | 1                | 5000       | 480766.96            |