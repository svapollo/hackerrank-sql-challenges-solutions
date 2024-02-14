-- Seleciona o total de Lead Manager, Senior Manager, Manager e Employee de cada empresa e seu fundador
SELECT c.company_code, c.founder, COUNT(DISTINCT(lm.lead_manager_code)) AS total_lead_manager, COUNT(DISTINCT(sm.senior_manager_code)) AS total_senior_manager, COUNT(DISTINCT(m.manager_code)) AS total_manager, COUNT(DISTINCT(e.employee_code)) AS total_employee
FROM company AS c
JOIN lead_manager AS lm
ON c.company_code = lm.company_code
JOIN senior_manager AS sm
ON c.company_code = sm.company_code
JOIN manager AS m
ON sm.company_code = m.company_code
JOIN employee AS e
ON m.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code ASC;
