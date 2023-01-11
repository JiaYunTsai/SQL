WITH COUNT_ORDER AS(
SELECT customer_number, count(customer_number) AS COUNT_ORDER
FROM Orders
GROUP BY customer_number
)
select customer_number FROM COUNT_ORDER
WHERE COUNT_ORDER = (SELECT MAX(COUNT_ORDER) FROM COUNT_ORDER);

-- 這題的 number 是 ID 不是數量
-- MAX 的議題不喜歡用子查詢，可以用 limit 1

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER By COUNT(*) DESC
LIMIT 1;
