USE gringotts;

/* You compare the deposits of every wizard with the wizard after him. 
If a wizard is the last one in the database, simply ignore it. 
At the end you have to sum the difference between the deposits. */

SELECT w.deposit_amount 
  FROM wizzard_deposits AS w