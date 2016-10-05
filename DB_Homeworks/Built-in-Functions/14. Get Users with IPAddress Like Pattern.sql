
USE diablo;

SELECT u.user_name, u.ip_address
  FROM users AS u
WHERE u.ip_address LIKE '___.1%._%.___'
ORDER BY u.user_name