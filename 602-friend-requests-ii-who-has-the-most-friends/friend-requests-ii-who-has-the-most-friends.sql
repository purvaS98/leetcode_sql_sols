# Write your MySQL query statement below
SELECT id AS id, SUM(num) AS num
FROM 
    (SELECT accepter_id AS id, COUNT(accepter_id) AS num
    FROM RequestAccepted
    WHERE accept_date IS NOT NULL
    GROUP BY accepter_id

    UNION ALL

    SELECT requester_id  AS id, COUNT(requester_id ) AS num
    FROM RequestAccepted
    WHERE accept_date IS NOT NULL
    GROUP BY requester_id
    ) AS friendstable
GROUP BY id
ORDER BY num DESC
LIMIT 1