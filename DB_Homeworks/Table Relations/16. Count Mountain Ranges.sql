USE geography;

SELECT mc.country_code, COUNT(m.mountain_range)
  FROM mountains_countries AS mc
 INNER JOIN mountains AS m
    ON m.id = mc.mountain_id
   AND mc.country_code IN('US', 'RU', 'BG')
 GROUP BY mc.country_code