USE soft_uni;

SELECT e.department_id, MAX(e.salary) AS third_max_salary
  FROM employees AS e
 INNER JOIN (SELECT e.department_id, MAX(e.salary) AS second_max_salary
			     FROM employees AS e
			    INNER JOIN (SELECT e.department_id, MAX(e.salary) AS max_salary
							      FROM employees AS e
							     GROUP BY e.department_id) AS max_salary
				    ON e.department_id = max_salary.department_id
				   AND e.salary < max_salary.max_salary
				 GROUP BY e.department_id) AS second_max_salary
	 ON e.department_id = second_max_salary.department_id
	AND e.salary < second_max_salary.second_max_salary
 GROUP BY e.department_id