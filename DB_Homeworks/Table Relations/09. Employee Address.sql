USE soft_uni;

SELECT e.employee_id, e.job_title, e.address_id, address.address_text 
  FROM employees AS e
 INNER JOIN (SELECT a.address_id, a.address_text
 				   FROM addresses AS a) AS address
 	 ON e.address_id = address.address_id
 ORDER BY address.address_id
 LIMIT 5