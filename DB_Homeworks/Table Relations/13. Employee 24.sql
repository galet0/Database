USE soft_uni; 
 
SELECT e.employee_id, e.first_name,  p.name
  FROM employees AS e
 INNER JOIN employees_projects AS ep
    ON e.employee_id = ep.employee_id
  LEFT JOIN projects AS p
    ON p.project_id = ep.project_id
   AND p.start_date < '2005-01-01' 
 WHERE e.employee_id = 24
 


 