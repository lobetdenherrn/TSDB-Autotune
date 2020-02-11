# First Benchmarking Results:

thulab/iotdb-benchmark:
```
----------------------Main Configurations----------------------
DB_SWITCH: InfluxDB
OPERATION_PROPORTION: 1:0:0:0:0:0:0:0:0
IS_CLIENT_BIND: true
CLIENT_NUMBER: 20
GROUP_NUMBER: 20
DEVICE_NUMBER: 20
SENSOR_NUMBER: 300
BATCH_SIZE: 100
LOOP: 10
POINT_STEP: 5000
QUERY_INTERVAL: 250000
IS_OVERFLOW: false
OVERFLOW_MODE: 0
OVERFLOW_RATIO: 0.5
---------------------------------------------------------------
main measurements:
Create schema cost 0.09 second
Test elapsed time (not include schema creation): 19.31 second
----------------------------------------------------------Result Matrix----------------------------------------------------------
Operation           okOperation         okPoint             failOperation       failPoint           throughput(point/s)
INGESTION           200                 6000000             0                   0                   310762.59
PRECISE_POINT       0                   0                   0                   0                   0.00
TIME_RANGE          0                   0                   0                   0                   0.00
VALUE_RANGE         0                   0                   0                   0                   0.00
AGG_RANGE           0                   0                   0                   0                   0.00
AGG_VALUE           0                   0                   0                   0                   0.00
AGG_RANGE_VALUE     0                   0                   0                   0                   0.00
GROUP_BY            0                   0                   0                   0                   0.00
LATEST_POINT        0                   0                   0                   0                   0.00
---------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------Latency (ms) Matrix--------------------------------------------------------------------------
Operation           AVG         MIN         P10         P25         MEDIAN      P75         P90         P95         P99         P999        MAX         SLOWEST_THREAD
INGESTION           1777.49     242.21      575.95      900.34      1376.25     2456.06     3356.27     4165.51     5181.27     6053.67     6012.88     19155.68
PRECISE_POINT       0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
TIME_RANGE          0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
VALUE_RANGE         0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
AGG_RANGE           0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
AGG_VALUE           0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
AGG_RANGE_VALUE     0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
GROUP_BY            0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
LATEST_POINT        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00        0.00
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
```

timescale/tsbs:
```
Summary:
loaded 1476207899 metrics in 8989.688sec with 1 workers (mean rate 164211.25 metrics/sec)
loaded 186706431 rows in 8989.688sec with 1 workers (mean rate 20768.96 rows/sec)
```