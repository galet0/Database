USE gringotts;

SELECT w.deposit_group, SUM(w.deposit_amount) AS total_sum
  FROM wizzard_deposits AS w
 GROUP BY w.deposit_group
  



