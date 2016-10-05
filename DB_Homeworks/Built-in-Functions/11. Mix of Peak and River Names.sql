USE geography;

SELECT p.peak_name, r.river_name,LOWER(CONCAT(p.peak_name, SUBSTR(r.river_name, 2))) AS 'mix'
  FROM peaks AS p,
       rivers AS r
 WHERE RIGHT(p.peak_name,1) LIKE LEFT(r.river_name,1)
ORDER BY mix 
 
SELECT p.peak_name,r.river_name,LOWER(CONCAT(p.peak_name,SUBSTR(r.river_name,2))) AS 'mix'
 FROM peaks AS p,rivers AS r
 WHERE RIGHT(p.peak_name,1) LIKE LEFT(r.river_name,1)
 ORDER BY mix ASC