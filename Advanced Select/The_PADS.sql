SELECT CONCAT(name,'(',SUBSTR(occupation,1,1),')') as N
FROM occupations
ORDER BY name;
SELECT CONCAT('There are a total of ', COUNT(occupation)," ",LOWER(occupation),'s.')
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation);