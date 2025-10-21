CREATE SCHEMA IF NOT EXISTS online_shop;

CREATE TABLE online_shop.users(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    user_email VARCHAR(100) NOT NULL UNIQUE,
    registered_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE online_shop.products(
    product_id SERIAL PRIMARY KEY,
    product_title VARCHAR(200) NOT NULL,
    category VARCHAR(100) NULL,
    product_price NUMERIC(10,2) NOT NULL CHECK(product_price>0)
);

CREATE TABLE online_shop.orders(
    order_id SERIAL PRIMARY KEY,
    order_name VARCHAR(100) NOT NULL,
    isDelivered BOOLEAN NOT NULL DEFAULT FALSE,
    order_date DATE DEFAULT CURRENT_DATE,
    user_id BIGINT NOT NULL REFERENCES online_shop.users(user_id) ON DELETE CASCADE

);
--(M:N) связь: заказы<->продукты
CREATE TABLE online_shop.orders_items(
    order_id INT NOT NULL REFERENCES online_shop.orders(order_id) ON DELETE CASCADE,
    product_id INT NOT NULL REFERENCES online_shop.products(product_id) ON DELETE CASCADE,
    quantity INT CHECK (quantity > 0) DEFAULT 1,
    PRIMARY KEY(order_id,product_id)
);

