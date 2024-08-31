with Doctor as (
    SELECT name,
                 ROW_NUMBER() OVER(ORDER BY name) as rn
    FROM occupations
    WHERE occupation='Doctor'
)
, Professor as (
    SELECT name,
                 ROW_NUMBER() OVER(ORDER BY name) as rn
    FROM occupations
    WHERE occupation='Professor'
)
,Singer as (
    SELECT name,
                 ROW_NUMBER() OVER(ORDER BY name) as rn
    FROM occupations
    WHERE occupation='Singer'
)
,Actor as (
    SELECT name,
                 ROW_NUMBER() OVER(ORDER BY name) as rn
    FROM occupations
    WHERE occupation='Actor'
)

SELECT d.name, p.name, s.name, a.name
FROM Professor p
LEFT JOIN Doctor d ON d.rn = p.rn
LEFT JOIN Singer s ON s.rn = p.rn
LEFT JOIN Actor a ON a.rn=p.rn