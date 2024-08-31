SELECT s.name
FROM students s
INNER JOIN friends f ON s.id = f.id
INNER JOIN packages p ON f.id = p.id
INNER JOIN packages fp ON f.friend_id = fp.id
WHERE fp.salary > p.salary
ORDER BY fp.salary;