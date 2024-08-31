SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiouAEIOU]' AND city REGEXP '[^aeiouAEIOU]$';