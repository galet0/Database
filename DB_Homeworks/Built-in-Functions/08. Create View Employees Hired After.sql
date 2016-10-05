USE soft_uni;

CREATE VIEW v_employees_hired_after_2000 AS
SELECT e.first_name, e.last_name 
  FROM  employees AS e
 WHERE e.hire_date > '2000-12-31'
 
 select * from v_employees_hired_after_2000


