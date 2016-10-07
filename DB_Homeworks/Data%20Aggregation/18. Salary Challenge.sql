USE soft_uni;

SELECT e.first_name, e.last_name, e.department_id
  FROM employees AS e
 INNER JOIN (SELECT e.department_id, AVG(e.salary) as avg_salaries
               FROM employees AS e
              GROUP BY e.department_id) AS avg_salaries
    ON e.department_id = avg_salaries.department_id
   AND e.salary > avg_salaries.avg_salaries
ORDER BY e.department_id
LIMIT 10

  
