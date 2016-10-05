USE diablo;

SELECT u.user_name, SUBSTR(u.email, LOCATE('@', u.email) + 1, LENGTH(u.email)) AS 'email_provider'
  FROM users AS u
ORDER BY email_provider,
			u.user_name

