USE soft_uni; 
 
SELECT e.employee_id, e.first_name, project.name
  FROM employees AS e
 INNER JOIN (SELECT ep.employee_id, ep.project_id
  					FROM employees_projects AS ep) AS ep
  	 ON e.employee_id = ep.employee_id
 INNER JOIN (SELECT p.project_id, p.name, p.start_date, p.end_date
		     FROM projects AS p
		    WHERE p.start_date > '2002-08-13'
		      AND p.end_date IS NULL) AS project
    ON project.project_id = ep.project_id
 ORDER BY e.employee_id
 LIMIT 5
 
 
 
  

 