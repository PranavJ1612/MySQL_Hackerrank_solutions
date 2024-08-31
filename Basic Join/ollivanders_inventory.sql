SELECT A.id, B.age, A.coins_needed, A.power
FROM wands A
INNER JOIN wands_property B ON A.code = B.code
WHERE B.is_evil = 0 AND A.coins_needed = (SELECT MIN(X.coins_needed)
                                         FROM wands X
                                         INNER JOIN wands_property Y ON X.code = Y.code
                                         WHERE X.power = A.power AND Y.age = B.age)
ORDER BY A.power DESC, B.age DESC;


-- Imagine you're checking a wand with power = 50 and age = 60 in the main query. 
-- The subquery will filter out all wands that do not have power = 50 and age = 60, 
-- then find the minimum coins_needed among those remaining wands.