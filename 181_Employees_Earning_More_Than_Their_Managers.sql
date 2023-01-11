WITH Manager AS (
    SELECT
        *
    FROM
        Employee
    WHERE
        managerId IS NULL
)
SELECT
    *
FROM
    Employee AS E
    LEFT JOIN Manager AS M ON E.ID = M.ID
WHERE
    E.managerId IS NOT NULL;
    
    -- | id | name  | salary | managerId | id | name | salary | managerId |
    -- | -- | ----- | ------ | --------- | -- | ---- | ------ | --------- |
    -- | 1  | Joe   | 70000  | 3         |    |      |        |           |
    -- | 2  | Henry | 80000  | 4         |    |      |        |           |

SELECT
    employee.name AS Employee
FROM
    Employee AS employee
    JOIN Employee AS manager ON employee.ManagerId = manager.Id
WHERE
    employee.salary > manager.salary;

-- 把要比較的 case 放在同一行