# COMBINE THE menu_items AND order_details TABLES INTO A SINGLE TABLE

SELECT *
FROM order_details od
LEFT JOIN menu_items m
ON od.item_id = m.menu_item_id;

# WHAT WERE THE LEAST AND MOST ORDERED ITEMS? WHAT CATEGORIES WERE THEY IN?

SELECT m.item_name, m.category, COUNT(*) AS times_ordered
FROM order_details od
LEFT JOIN menu_items m
ON od.item_id = m.menu_item_id
GROUP BY m.item_name, m.category
ORDER BY times_ordered ASC
LIMIT 1;

SELECT m.item_name, m.category, COUNT(*) AS times_ordered
FROM order_details od
LEFT JOIN menu_items m
ON od.item_id = m.menu_item_id
GROUP BY m.item_name, m.category
ORDER BY times_ordered DESC
LIMIT 1;

# WHAT WERE THE TOP 5 ORDERS THAT SPENT THE MOST MONEY?

SELECT od.order_id, SUM(m.price) AS order_total
FROM order_details od
LEFT JOIN menu_items m
ON od.item_id = m.menu_item_id
GROUP BY od.order_id
ORDER BY order_total DESC
LIMIT 5;

# VIEW THE DETAILS OF THE HIGHEST SPEND ORDER. WHICH SPECIFIC ITEMS WERE PURCHASED?

SELECT *
FROM order_details od
LEFT JOIN menu_items m
ON od.item_id = m.menu_item_id
WHERE order_id = 440;

# BONUS: VIEW THE DETAILS OF THE TOP 5 HIGHEST SPEND ORDERS

SELECT *
FROM order_details od
LEFT JOIN menu_items m
ON od.item_id = m.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675);