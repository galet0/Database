USE soft_uni;

SELECT e.employee_id, e.first_name, e.salary, department.name
  FROM employees AS e
 
 INNER JOIN (SELECT d.department_id, d.name
 					FROM departments AS d) AS department
 	 ON e.department_id = department.department_id
   AND e.salary > 15000
 ORDER BY department.department_id
 LIMIT 5