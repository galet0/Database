USE gringotts;

/* You compare the deposits of every wizard with the wizard after him. 
If a wizard is the last one in the database, simply ignore it. 
At the end you have to sum the difference between the deposits. */

SELECT SUM(result.diff) AS sum_difference
  FROM (SELECT (w.deposit_amount - next_row.deposit_amount) AS diff
   		 FROM wizzard_deposits AS w
  JOIN (SELECT w.id, w.deposit_amount 
  			 FROM wizzard_deposits AS w) AS next_row
  	 ON w.id + 1 = next_row.id) AS result
