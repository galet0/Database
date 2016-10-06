USE gringotts;

SELECT deposit_group
  FROM (SELECT w.deposit_group, AVG(w.magic_wand_size) AS avg_magic_wand_size
          FROM wizzard_deposits AS w
 			GROUP BY w.deposit_group) AS avgm
 WHERE avg_magic_wand_size = (SELECT MIN(avg_magic_wand_size)  min_avrg_wand_size
										  FROM (SELECT w.deposit_group, AVG(w.magic_wand_size) AS avg_magic_wand_size
										          FROM wizzard_deposits AS w
										 			GROUP BY w.deposit_group) AS avgm)	
