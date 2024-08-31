SELECT DISTINCT f1.x, f1.y
FROM functions f1
JOIN functions f2 
ON f1.x = f2.y and f1.y = f2.x
WHERE f1.x < f1.y or f1.x IN (SELECT x
                             FROM functions
                              where x=y
                              GROUP BY x,y
                              HAVING COUNT(*) > 1
                             )
ORDER BY f1.x;