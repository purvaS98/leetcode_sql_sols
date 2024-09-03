# Write your MySQL query statement below
SELECT u.name, SUM(CASE WHEN distance is NULL THEN 0 ELSE distance END) as travelled_distance
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.id
ORDER BY travelled_distance DESC, u.name ASC