SELECT
    *
FROM
    Employees
WHERE
    (employee_id ％ 2) = 1
    AND name like "M%";
-- 不知道為什麼不能用 ％

SELECT
    employee_id,
    Case When mod(employee_id, 2) != 0
    AND name NOT like "M%" THEN salary ELSE 0 END AS bonus
FROM
    Employees;