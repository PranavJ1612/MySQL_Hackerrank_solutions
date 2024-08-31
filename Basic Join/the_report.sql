SELECT (CASE 
       WHEN g.grade>=8 THEN s.name
       ELSE null
       END),
       g.grade,
       s.marks
FROM students s
JOIN grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, s.name ASC;