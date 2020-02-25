# Continuous Aggregates Experiments (TimescaleDB)

When querying time-ranges, query latency increases over increasing time spans. This expected behavior can be seen in the figure below:

![Timescale Query Interval Increasing](img/TS_QUERY_INT_INC_QUERY.png)

Test List:
- AGG_TEST_01: No continuous queries specified. Ingestion test, query test with increasing query_interval

## AGG_TEST_01

First results as follows:

| "id" | "CLIENT\_NUMBER" | "GROUP\_NUMBER" | "DEVICE\_NUMBER" | "SENSOR\_NUMBER" | "BATCH\_SIZE" | "LOOP\_RATE" | "REAL\_INSERT\_RATE" | "POINT\_STEP" | "INGESTION\_THROUGHPUT" |
|------|------------------|-----------------|------------------|------------------|---------------|--------------|----------------------|---------------|-------------------------|
| "5"  | "20"             | "20"            | "20"             | "300"            | "100"         | "10"         | "1"                  | "5000"        | "150515\.6"             |
| "2"  | "20"             | "20"            | "20"             | "300"            | "100"         | "20"         | "1"                  | "5000"        | "120539\.77"            |

Ingestion Throughput for 12000000 points with no continuous aggregates present is at 120539.77 points per second. For 6000000 points even only at 117169.53 points per sec.

For query_interval of 2000000 (= 2000 sec or 33.3 min), the average latencies are: AGG_RANGE 113.90, AGG_VALUE 797.14 and AGG_RANGE_VALUE 317.38 (ms).

Now introduce continuous aggregate on query like

```sql
-- aggValueQuery like:
EXPLAIN ANALYZE -- will show how long the query executed
SELECT device, count(s_214) FROM benchmark WHERE (device='d_11') AND (time >= 1579449620000 and time <= 1579449870000) GROUP BY device;
```

the continuous aggregate will look like:
```sql
CREATE VIEW device_summary
WITH (timescaledb.continuous) --This flag is what makes the view continuous
AS
SELECT
  time_bucket('1 hour', observation_time) as bucket, --time_bucket is required
  device,
  count(s_214) as metric_count --We can use any parallelizable aggregate
FROM
  benchmark
GROUP BY bucket, device; --We have to group by the bucket column, but can also add other group-by columns
```