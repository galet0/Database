USE ORDERS;

SELECT o.product_name, o.order_date,
 DATE_ADD(o.order_date,INTERVAL 3 DAY) AS 'pay_due',
 DATE_ADD(o.order_date,INTERVAL 1 MONTH) AS 'deliver_due'
  FROM orders AS o