SELECT
    name,
    IFNULL(SUM(distance), 0) AS travelled_distance
FROM
    Rides AS R
    RIGHT JOIN Users AS U ON R.user_id = U.id
GROUP BY
    user_id
ORDER by
    travelled_distance DESC,
    name ASC;

SELECT
    name,
    IFNULL(SUM(distance), 0) AS travelled_distance
FROM
    Users AS U
    LEFT JOIN Rides AS R ON U.id = R.user_id
GROUP BY
    user_id
ORDER by
    travelled_distance DESC,
    name ASC;

-- left join 竟然比 right join 快很多
-- IFNULL vs COALESCE
-- Aggreate function 要用 group by