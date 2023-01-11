# Write your MySQL query statement below
SELECT
    name AS Customers
FROM
    Customers
WHERE
    id NOT IN (
        SELECT
            customerId
        FROM
            Orders
    );
    
SELECT
    name AS Customers
FROM
    Customers AS C
    LEFT JOIN Orders AS O ON C.id = O.customerId
WHERE
    customerId IS NULL