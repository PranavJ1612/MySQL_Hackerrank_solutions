WITH 
A AS (
                    SELECT 
                    H.hacker_id,
                    H.name, 
                    count(C.challenge_id) AS A_challenges
                    FROM Hackers H INNER JOIN Challenges C
                                ON H.hacker_id = C.hacker_id 
                    GROUP BY H.hacker_id, H.name
                    ORDER BY A_challenges DESC, H.hacker_id
          ) ,
B AS (
                    SELECT 
                    A_challenges,
                    COUNT(hacker_id) AS contador
                    FROM A
                    GROUP BY A_challenges
                    ORDER BY contador DESC
          ),
C AS (
                    SELECT 
                    A.hacker_id,
                    A.name,
                    A.A_challenges,
                    B.contador
                    FROM A INNER JOIN B ON 
                    A.A_challenges = B.A_challenges
                    ORDER BY A.A_challenges DESC, A.hacker_id
)
SELECT 
C.hacker_id,
C.name,
C.A_challenges
FROM C
WHERE C.A_challenges = 50 OR C.contador=1
ORDER BY C.A_challenges DESC, C.hacker_id;