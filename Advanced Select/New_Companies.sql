SELECT company_code, founder,
(SELECT COUNT(DISTINCT lead_manager_code) FROM lead_manager l WHERE l.company_code=c.company_code ),
(SELECT COUNT(DISTINCT senior_manager_code) FROM senior_manager s WHERE s.company_code=c.company_code ),
(SELECT COUNT(DISTINCT manager_code) FROM manager m WHERE m.company_code=c.company_code ),
(SELECT COUNT(DISTINCT employee_code) FROM employee e WHERE e.company_code=c.company_code )
FROM company c
order by company_code