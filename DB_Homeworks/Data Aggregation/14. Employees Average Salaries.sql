USE soft_uni;

CREATE TABLE new_employees_table AS (SELECT *
  FROM employees AS e
 WHERE e.salary > 30000)
 
 

DELETE FROM new_employees_table
   WHERE manager_id = 42
    
    
UPDATE new_employees_table
   SET salary = salary + 5000
 WHERE department_id = 1

SELECT n.department_id, AVG(n.salary)
  FROM new_employees_table AS n
 GROUP BY n.department_id

SELECT * FROM new_employees_table