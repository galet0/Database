USE geography;

SELECT *
  FROM countries AS c
  
SELECT mc.mountain_id, mc.country_code
  FROM mountains_countries AS mc
  
SELECT *
  FROM mountains AS m
  
SELECT COUNT(ncc.mountain)
  FROM ( SELECT c.country_code 
			  FROM countries AS c
			  LEFT JOIN (SELECT mc.mountain_id, mc.country_code
  								FROM mountains_countries AS mc) AS mc
			    ON mc.country_code = c.country_code
			   AND mc.mountain_id IS NULL) AS ncc
 GROUP BY ncc.country_code