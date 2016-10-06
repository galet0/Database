USE gringotts;

SELECT w.deposit_group, MAX(w.magic_wand_size) AS longest_magic_wand
  FROM wizzard_deposits AS w
 GROUP BY w.deposit_group
