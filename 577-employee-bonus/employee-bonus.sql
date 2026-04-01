# Write your MySQL query statement below
SELECT E.NAME , b.bonus
FROM EMPLOYEE E
LEFT JOIN bonus b
ON e.empId = b.empId
WHERE b.bonus <1000 OR b.bonus IS NULL;