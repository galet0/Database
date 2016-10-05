USE soft_uni;

SELECT e.first_name
  FROM employees AS e
 WHERE (e.department_id = 3 
    OR e.department_id = 10)
   AND (e.hire_date BETWEEN '1995-01-01' AND '2005-12-31')