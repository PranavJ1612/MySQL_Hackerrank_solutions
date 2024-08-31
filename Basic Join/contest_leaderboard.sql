SELECT h.hacker_id, h.name, SUM(max_score.t1) as total_score
FROM hackers h
INNER JOIN (SELECT MAX(s.score) as t1, s.hacker_id
           FROM submissions s
            GROUP BY s.challenge_id, s.hacker_id
            HAVING t1>0                            -- excluding all total score of 0
          ) as max_score
ON h.hacker_id = max_score.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY total_score DESC, h.hacker_id;