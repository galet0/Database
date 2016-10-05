USE soft_uni;

SELECT e.first_name, e.last_name
 FROM employees AS e
 WHERE first_name LIKE 'Sa%'