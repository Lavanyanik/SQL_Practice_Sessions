-- Day 3.2: Basic WHERE Filtering with Olist Data
USE SQLPractice;
GO
-- Question 1: Find all orders whose order_status is 'delivered'.
select * from olist_orders_dataset where order_status = 'delivered';

-- Question 2: Find all orders whose order_status is 'canceled'.
select * from olist_orders_dataset where order_status = 'canceled';

-- Question 3: Find all orders whose order_status is 'shipped'.
select * from olist_orders_dataset where order_status = 'shipped';

-- Question 4: Find customers who live in the state of 'SP'.
select * from olist_customers_dataset where customer_state = 'SP';

-- Question 5: Find customers who live in the city of 'sao paulo'.
select * from olist_customers_dataset where customer_city = 'sao paulo';

-- Question 6: Find products with a product_weight_g greater than 10000.
select * from olist_products_dataset where product_weight_g > 10000;

-- Question 7: Find products with a product_weight_g less than 1000.
select * from olist_products_dataset where product_weight_g < 1000;

-- Question 8: Find products with product_photos_qty equal to 0.
select * from olist_products_dataset where product_photos_qty = 0;

-- Question 9: Find order items with a price greater than 100.
select * from olist_order_items_dataset where price > 100;

-- Question 10: Find order items with a freight_value less than 20.
select * from olist_order_items_dataset where freight_value < 20;

-- Question 11: Find order items where order_item_id is equal to 1.
select * from olist_order_items_dataset where order_item_id = 1;

-- Question 12: Find payments where payment_type is 'credit_card'.
select * from olist_payments_dataset where payment_type = 'credit_card';

-- Question 13: Find payments where payment_type is 'boleto'.
select * from olist_payments_dataset where payment_type = 'boleto';

-- Question 14: Find payments with a payment_value greater than 200.
select * from olist_payments_dataset where payment_value > 200;

-- Question 15: Find payments with payment_installments equal to 1.
select * from olist_payments_dataset where payment_installments = 1;

-- Question 16: Find orders purchased after '2018-01-01' using order_purchase_timestamp.
select * from olist_orders_dataset where order_purchase_timestamp > '2018-01-01';

-- Question 17: Find orders where order_delivered_customer_date is NULL. 
select * from olist_orders_dataset where order_delivered_customer_date is NULL;   

-- Question 18: Find products whose product_category_name is NULL.
select * from olist_products_dataset where product_category_name is NULL;

-- Question 19: Find customers with a customer_zip_code_prefix greater than 50000.
select * from olist_customers_dataset where customer_zip_code_prefix > 50000;

-- Question 20: Find order items with a price between 50 and 200.
select * from olist_order_items_dataset where price between 50 and 200;