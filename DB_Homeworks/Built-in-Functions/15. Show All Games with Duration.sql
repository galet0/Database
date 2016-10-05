USE diablo;

SELECT g.name,
CASE 
WHEN (EXTRACT(HOUR FROM g.`start`) >= 0 AND EXTRACT(HOUR FROM g.`start`) < 12) THEN 'Morning'
WHEN (EXTRACT(HOUR FROM g.`start`) >= 12 AND EXTRACT(HOUR FROM g.`start`) < 18) THEN 'Afternoon'
WHEN (EXTRACT(HOUR FROM g.`start`) >= 18 AND EXTRACT(HOUR FROM g.`start`) < 24) THEN 'Evening'
END AS 'Part_of_the_day',
CASE 
WHEN g.duration <= 3 THEN 'Extra Short'
WHEN (g.duration >= 4 AND g.duration <= 6) THEN 'Short'
WHEN g.duration > 6 THEN 'Long'
WHEN g.duration IS NULL THEN 'Extra Long'
END AS 'duration'
FROM games AS g
ORDER BY g.name,
			g.duration,
			'Part_of_the_day'