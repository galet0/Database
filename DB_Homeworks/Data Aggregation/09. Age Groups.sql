USE gringotts;

SELECT 
  CASE 
  		WHEN w.age <= 10 THEN '[0-10]'
  		WHEN w.age <= 20 THEN '[11-20]'
  		WHEN w.age <= 30 THEN '[21-30]'
  		WHEN w.age <= 40 THEN '[31-40]'
  		WHEN w.age <= 50 THEN '[41-50]'
  		WHEN w.age <= 60 THEN '[51-60]'
  		ELSE '[61+]'
  	END AS age_group,
 COUNT(*) AS wizzard_count
  FROM wizzard_deposits AS w
 GROUP BY CASE 
  		WHEN w.age <= 10 THEN '[0-10]'
  		WHEN w.age <= 20 THEN '[11-20]'
  		WHEN w.age <= 30 THEN '[21-30]'
  		WHEN w.age <= 40 THEN '[31-40]'
  		WHEN w.age <= 50 THEN '[41-50]'
  		WHEN w.age <= 60 THEN '[51-60]'
  		ELSE '[61+]'
  	END 