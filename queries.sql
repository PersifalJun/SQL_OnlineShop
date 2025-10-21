--1. Вывод всех данных
-- Все заказы
SELECT * FROM orders;
-- Все пользователи
SELECT * FROM users;
-- Все заказы и продукты
SELECT * FROM orders_items;
-- Все продукты
SELECT * FROM products;

--2. Фильтрация продуктов по категориям и сортировка по убыванию цены
SELECT p.product_title,p.product_price
FROM products AS p
WHERE p.category IN ('Natural milk products','Meat')
ORDER BY p.product_price DESC;

--3. Вывод сумму продуктов для каждой категории
SELECT p.category,SUM(p.product_price) AS total_price
FROM products AS p
GROUP BY p.category
HAVING SUM(p.product_price) > 90;


--4. Вывод: название заказа, имя клиента и название продукта
SELECT o.order_name,u.user_name,p.product_title
FROM orders AS o
JOIN users AS u ON o.user_id = u.user_id
JOIN orders_items AS oi ON o.order_id = oi.order_id
JOIN products AS p ON p.product_id = oi.product_id;

--5. Обновление цены йогурта на натуральном молоке
UPDATE products
SET product_price = 250.0
WHERE category ~* 'Natural milk products' AND product_title LIKE '%Yogurt%';
--Обновление статуса заказа
UPDATE orders
SET isDelivered = true
WHERE order_name = 'MeatOrder';


--6. Сначала удаление из таблицы orders_items, а потом уже только из products
DELETE FROM orders_items AS oi
WHERE oi.product_id = 1;

DELETE FROM products AS p
WHERE p.product_price =200;

