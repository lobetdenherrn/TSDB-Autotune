-- aggRangeValueQuery like:
SELECT device, count(s_2) FROM benchmark WHERE (device='d_2') AND (
    time >= 1535558400000 and
    time <= 1535558650000) AND 
    (s_2>10) 
    GROUP BY device;

-- aggRangeQuery like:
SELECT device, count(s_214) FROM benchmark WHERE (device='d_11') AND (time >= 1579449620000 and time <= 1579449870000) GROUP BY device;

-- aggValueQuery like:
SELECT device, count(s_2) FROM benchmark WHERE (device='d_2') AND (s_2>10) GROUP BY device;