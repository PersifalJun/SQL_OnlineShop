INSERT INTO online_shop.users (user_name, user_email, registered_at)VALUES
                                     ('user1','user1@mail.com','2025-10-17'),
                                     ('user2','user2@mail.com','2025-10-17'),
                                     ('user3','user3@mail.com','2025-10-17'),
                                     ('user4','user4@mail.com','2025-10-17'),
                                     ('user5','user5@mail.com','2025-10-17'),
                                     ('user6','user6@mail.com','2025-10-17');


INSERT INTO online_shop.products(product_title,category,product_price)VALUES
                                     ('Beef','Meat',200.0),
                                     ('Chicken','Meat',150.0),
                                     ('Yogurt','Low fat milk products',200.0),
                                     ('Yogurt','Natural milk products',150.0),
                                     ('Cheese','Natural milk products',100.0),
                                     ('Potato','Vegetables',50.0),
                                     ('Carrot','Vegetables',45.0);


INSERT INTO online_shop.orders(order_name,isDelivered,order_date,user_id)VALUES
                                    ('MeatOrder',false,'2025-10-17',2),
                                    ('MilkOrder',true,'2025-10-17',5),
                                    ('VegetableOrder',true,'2025-10-17',4),
                                    ('MilkOrder',false,'2025-10-17',3),
                                    ('MeatOrder',true,'2025-10-17',1),
                                    ('VegetableOrder',true,'2025-10-17',6);

INSERT INTO online_shop.orders_items(order_id,product_id,quantity)VALUES
                                    (1,2,5),
                                    (4,4,2),
                                    (3,5,6),
                                    (5,1,10),
                                    (2,3,8);

