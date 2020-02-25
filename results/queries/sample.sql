-- connect to db benchmark:
\c benchmark

-- aggRangeValueQuery like:
SELECT device, count(s_38) FROM benchmark WHERE (device='d_0') 
    AND (time >= 1579449635000 and time <= 1580054435000)  
    AND (s_38 > -5.0)
    GROUP BY device

-- aggRangeQuery like:
SELECT device, count(s_202) FROM benchmark WHERE (device='d_1') 
    AND (time >= 1579449640000 and time <= 1580054440000) 
    GROUP BY device

-- aggValueQuery like:
SELECT device, count(s_260) FROM benchmark WHERE (device='d_7') 
    AND (s_260 > -5.0) GROUP BY device