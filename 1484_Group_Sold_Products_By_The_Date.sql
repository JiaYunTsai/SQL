# Write your MySQL query statement below
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY sell_date, product  SEPARATOR ",") AS products
FROM Activities
GROUP BY sell_date


-- GROUP_CONCAT https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html#function_group-concat