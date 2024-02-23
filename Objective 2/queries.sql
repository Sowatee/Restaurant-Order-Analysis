# VIEW THE order_details TABLE. WHAT IS THE DATE RANGE OF THE TABLE?

SELECT MIN(order_date), MAX(order_date)
FROM order_details;

# HOW MANY ORDERS WERE MADE WITHIN THIS DATE RANGE? HOW MANY ITEMS WERE ORDERED WITHIN THIS DATE RANGE?

SELECT COUNT(DISTINCT order_id) AS num_orders
FROM order_details;

SELECT COUNT(*)
FROM order_details;

# WHICH ORDERS HAD THE MOST NUMBER OF ITEMS?

SELECT order_id, COUNT(*) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

# HOW MANY ORDERS HAD MORE THAN 12 ITEMS

SELECT COUNT(*)
FROM 
	(SELECT order_id, COUNT(*) AS num_items
	FROM order_details
	GROUP BY order_id
	HAVING num_items > 12
	ORDER BY num_items DESC) AS num_orders;