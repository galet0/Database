
USE orders;

SELECT p.name, 
		(YEAR(CURDATE()) - YEAR(p.birthdate)) AS 'age_in_years',
		(YEAR(CURDATE()) - YEAR(p.birthdate)) * 12 + (MONTH(CURDATE()) - MONTH(p.birthdate)) 
				- IF(DAYOFMONTH(CURDATE()) < DAYOFMONTH(p.birthdate),1,0) AS age_in_months,
		DATEDIFF(NOW(),p.birthdate) AS age_in_days,
		DATEDIFF(NOW(),p.birthdate) * 1440 	AS age_in_minutes
  FROM people AS p
  
