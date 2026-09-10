-- Day 3.1: Basic SELECT Practice with Olist Orders
USE SQLPractice;
GO
-- Question 1: Display every column from the olist_orders_dataset table.
select * from olist_orders_dataset;

-- Question 2: Display only the order_id column from olist_orders_dataset.
select order_id from olist_orders_dataset;

-- Question 3: Display the order_id and customer_id columns from olist_orders_dataset.
select order_id, customer_id from olist_orders_dataset;

-- Question 4: Display the order_id, order_status, and order_purchase_timestamp columns.
select order_id, order_status, order_purchase_timestamp from olist_orders_dataset;

-- Question 5: Display the customer_id and order_status columns from olist_orders_dataset.
select customer_id, order_status from olist_orders_dataset;

-- Question 6: Display every column from the olist_customers_dataset table.
select * from olist_customers_dataset;

-- Question 7: Display only the customer_id column from olist_customers_dataset.
select customer_id from olist_customers_dataset;

-- Question 8: Display the customer_id and customer_unique_id columns.
select customer_id, customer_unique_id from olist_customers_dataset;

-- Question 9: Display the customer_city and customer_state columns.
select customer_city, customer_state from olist_customers_dataset;

-- Question 10: Display the customer_id, customer_city, and customer_state columns.
select customer_id, customer_city, customer_state from olist_customers_dataset;

-- Question 11: Display every column from the olist_products_dataset table.
select * from olist_products_dataset;

-- Question 12: Display only the product_id column from olist_products_dataset.
select product_id from olist_products_dataset;

-- Question 13: Display the product_id and product_category_name columns.
select product_id, product_category_name from olist_products_dataset;

-- Question 14: Display the product_category_name and product_weight_g columns.
select product_category_name, product_weight_g from olist_products_dataset;

-- Question 15: Display the product_id, product_category_name, and product_photos_qty columns.
select product_id, product_category_name, product_photos_qty from olist_products_dataset;

-- Question 16: Display every column from the olist_order_payments_dataset table.
select * from olist_order_payments_dataset;

-- Question 17: Display the order_id and payment_type columns from olist_order_payments_dataset.
select order_id, payment_type from olist_order_payments_dataset;

-- Question 18: Display the order_id, payment_value, and payment_installments columns.
select order_id, payment_value, payment_installments from olist_order_payments_dataset;

-- Question 19: Display the order_id, product_id, and seller_id columns from olist_order_items_dataset.
select order_id, product_id, seller_id from olist_order_items_dataset;

-- Question 20: Display the order_id, product_id, price, and freight_value columns from olist_order_items_dataset.
select order_id, product_id, price, freight_value from olist_order_items_dataset;