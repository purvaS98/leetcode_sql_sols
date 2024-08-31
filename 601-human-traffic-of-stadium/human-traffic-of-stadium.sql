# Write your MySQL query statement below
WITH CTE AS (
    SELECT id, visit_date, people,
    LAG(people, 1) OVER (ORDER BY id) prev1,
    LAG(people, 2) OVER (ORDER BY id) prev2,
    LEAD(people, 1) OVER (ORDER BY id) next1,
    LEAD(people, 2) OVER (ORDER BY id) next2
    FROM Stadium
)

SELECT id, visit_date, people
FROm CTE 
WHERE (people >= 100 AND prev1 >= 100 AND prev2 >= 100) 
OR (people >= 100 AND next1 >= 100 AND next2 >= 100)
OR (people >= 100 AND prev1 >= 100 AND next1 >= 100)