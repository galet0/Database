USE geography;

SELECT c.country_name, r.river_name
  FROM countries AS c
 INNER JOIN continents AS con
    ON c.continent_code = con.continent_code
   AND con.continent_name = 'Africa'
  LEFT  JOIN countries_rivers AS cr
    ON cr.country_code = c.country_code
  LEFT JOIN rivers AS r
    ON r.id = cr.river_id
 ORDER BY c.country_name
 LIMIT 5
    
