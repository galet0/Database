USE gringotts;

SELECT LEFT(w.first_name, 1) AS first_letter
  FROM wizzard_deposits AS w
 WHERE w.deposit_group = 'Troll Chest'
 GROUP BY LEFT(w.first_name, 1)