SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiouAEIOU]' OR city REGEXP '[^aeiouAEIOU]$';