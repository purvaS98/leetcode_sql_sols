# Write your MySQL query statement below
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e
JOIN Department d
ON e.departmentId = d.id
AND (e.departmentId, e.salary) IN (
    SELECT e.departmentId, MAX(e.salary) FROM Employee e GROUP BY e.departmentId
)

/*With LEFT JOIN
SELECT e.*, d.*
FROM Employee e
LEFT JOIN Department d ON e.departmentId = d.id
WHERE (e.departmentId, e.salary) IN (
    SELECT e.departmentId, MAX(e.salary)
    FROM Employee e
    GROUP BY e.departmentId
);
*/