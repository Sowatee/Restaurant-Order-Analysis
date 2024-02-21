# VIEW THE menu_items TABLE AND WRITE A QUERY TO FIND THE NUMBER OF ITEMS ON THE MENU

SELECT COUNT(*)
FROM menu_items;

# WHAT ARE THE LEAST AND MOST EXPENSIVE ITEMS ON THE MENU?

SELECT item_name, price
FROM menu_items
ORDER BY price ASC
LIMIT 1;

SELECT item_name, price
FROM menu_items
ORDER BY price DESC
LIMIT 1;

# HOW MANY ITALIAN DISHES ARE ON THE MENU? WHAT ARE THE LEAST AND MOST EXPENSIVE ITALIAN DISHES ON THE MENU?

SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';

SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC
LIMIT 1;

SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

# HOW MANY DISHES ARE IN EACH CATEGORY? WHAT IS THE AVERAGE DISH PRICE WITHIN EACH CATEGORY?

SELECT category, COUNT(*) AS num_dishes
FROM menu_items
GROUP BY category;

SELECT category, ROUND(AVG(price),2) AS avg_price
FROM menu_items
GROUP BY category;