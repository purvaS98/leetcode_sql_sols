
# Write your MySQL query statement below
SELECT DISTINCT(CAST(l1.num AS SIGNED)) AS ConsecutiveNums
FROM Logs AS l1
JOIN Logs AS l2
ON l1.id = l2.id - 1
JOIN Logs AS l3
ON l2.id = l3.id - 1
WHERE l1.num = l2.num AND l2.num = l3.num;