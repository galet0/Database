USE geography;

SELECT *
  FROM continents AS con
  
SELECT c.continent_code, cu.cu AS currency_usage, c.currency_code
  FROM countries AS c
 INNER JOIN (SELECT c.continent_code, COUNT(c.country_code) AS cu, c.currency_code
				  FROM countries AS c
				 GROUP BY c.currency_code) AS cu 
	 ON c.continent_code = cu.continent_code
   AND cu.cu > 1
 ORDER BY c.continent_code
 
 
SELECT COUNT(c.country_code), c.currency_code
  FROM countries AS c
 GROUP BY c.currency_code
 
-- решение 
 SELECT c.ContinentCode, 
	   cc.CurrencyCode, 
	   COUNT(cc.COUNTryCode) AS [CurrencyUsage]
FROM Continents c
JOIN Countries cc 
  ON c.ContinentCode = cc.ContinentCode 
GROUP BY c.ContinentCode , cc.CurrencyCode
HAVING COUNT(cc.CountryCode) = (SELECT MAX(xxx.CurrencyXX) 
                                FROM (SELECT cx.ContinentCode, 
										     ccx.CurrencyCode, 
											 COUNT(ccx.COUNTryCode) AS [CurrencyXX]
    FROM Continents cx
    JOIN Countries ccx ON cx.ContinentCode = ccx.ContinentCode 
    WHERE c.ContinentCode = cx.ContinentCode 
    GROUP BY cx.ContinentCode , ccx.CurrencyCode) AS xxx)
AND COUNT(cc.CountryCode) > 1
ORDER BY c.ContinentCode