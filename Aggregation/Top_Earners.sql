SELECT MAX(salary*months), COUNT(*)
FROM employee
WHERE (salary*months) = (SELECT MAX(salary*months)
                        FROM employee);