USE geography;

SELECT c.country_name, m.mountain_range, p.peak_name, p.elevation AS 'highest_peak_elevation', r.length AS 'longest_river_length'
  FROM countries AS c
  LEFT JOIN mountains_countries AS mc
    ON mc.country_code = c.country_code
  LEFT JOIN mountains AS m
    ON m.id = mc.mountain_id
  LEFT JOIN peaks AS p
    ON p.mountain_id = m.id
  INNER JOIN (SELECT c.country_name, m.mountain_range, p.peak_name, MAX(p.elevation) AS max_elevation
			  FROM countries AS c
			  LEFT JOIN mountains_countries AS mc
			    ON mc.country_code = c.country_code
			  LEFT JOIN mountains AS m
			    ON m.id = mc.mountain_id
			  LEFT JOIN peaks AS p
			    ON p.mountain_id = m.id
			 GROUP BY c.country_name) AS max_elevation
    ON max_elevation.max_elevation = p.elevation
   AND max_elevation.country_name = c.country_name
  LEFT JOIN countries_rivers AS cr
    ON cr.country_code = c.country_code
  LEFT JOIN rivers AS r
    ON r.id = cr.river_id
  INNER JOIN ( SELECT c.country_name, MAX(r.length) as max_river
				   FROM countries AS c
				   LEFT JOIN countries_rivers AS cr
				     ON cr.country_code = c.country_code
				   LEFT JOIN rivers AS r
				     ON r.id = cr.river_id
				  GROUP BY c.country_name) AS max_river
    ON  max_river.max_river = r.length
   AND max_river.country_name = c.country_name
 ORDER BY elevation DESC,
          length DESC,
			 country_name    
 LIMIT 5

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    
