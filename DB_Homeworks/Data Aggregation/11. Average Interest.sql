USE gringotts;

/* He wants to know the average interest of all deposits groups split by whether 
the deposit has expired or not. But that’s not all. He wants you to select deposits
 with start date after 01/01/1985. Order the data descending by Deposit Group and 
 ascending by Expiration Flag. */

SELECT w.deposit_group, w.is_deposit_expired, AVG(w.deposit_interest)
  FROM wizzard_deposits AS w
 WHERE w.deposit_start_date > '1985-01-01'
 GROUP BY w.deposit_group, w.is_deposit_expired
 ORDER BY w.deposit_group DESC