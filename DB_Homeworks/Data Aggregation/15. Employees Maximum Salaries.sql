USE soft_uni;

SELECT * FROM employees

SELECT e.department_id, MAX(e.salary) AS max_salary
  FROM employees AS e
 GROUP BY e.department_id
HAVING MAX(e.salary) NOT BETWEEN 30000 AND 70000
 			
				