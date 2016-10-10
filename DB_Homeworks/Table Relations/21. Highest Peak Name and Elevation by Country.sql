USE geography;

SELECT c.country_name, p.peak_name, p.elevation, m.mountain_range
  FROM countries AS c
 INNER JOIN mountains_countries AS mc
    ON mc.country_code =  c.country_code
 INNER JOIN mountains AS m
    ON m.id = mc.mountain_id
 INNER JOIN peaks AS p
    ON p.mountain_id = m.id
 INNER JOIN (SELECT c.country_name, MAX(p.elevation) AS max_elevation
			  FROM countries AS c
			 INNER JOIN mountains_countries AS mc
			    ON mc.country_code =  c.country_code
			 INNER JOIN mountains AS m
			    ON m.id = mc.mountain_id
			 INNER JOIN peaks AS p
			    ON p.mountain_id = m.id
			 GROUP BY c.country_name) AS max_elevation
	 ON max_elevation.max_elevation = p.elevation
   AND max_elevation.country_name = c.country_name
 UNION ALL
 SELECT c.country_name, '(no highest peak)' AS highest_peak_name, 
  		  0 AS highest_peak_elevation, '(no mountain)' AS mountain
		  FROM countries AS c
		  LEFT JOIN mountains_countries AS mc
		    ON mc.country_code =  c.country_code
		--  LEFT JOIN mountains AS m
		--    ON m.id = mc.mountain_id
		--  LEFT JOIN peaks AS p
		--    ON p.mountain_id = m.id
		 WHERE mc.mountain_id IS NULL
 ORDER BY country_name, peak_name
 LIMIT 5


