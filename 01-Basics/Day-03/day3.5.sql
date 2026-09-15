-- Day 3.5: Basic DISTINCT, Aliases, and SQL Review
USE SQLPractice;
GO
-- Question 1: Display each different order_status from olist_orders_dataset.
select distinct order_status from olist_orders_dataset;

-- Question 2: Display each different customer_state from olist_customers_dataset.
select distinct customer_state from olist_customers_dataset;

-- Question 3: Display each different payment_type from olist_order_payments_dataset.
select distinct payment_type from olist_order_payments_dataset;

-- Question 4: Display each different product_category_name from olist_products_dataset.
select distinct product_category_name from olist_products_dataset;

-- Question 5: Display each different seller_id from olist_order_items_dataset.
select distinct seller_id from olist_order_items_dataset;

-- Question 6: Display order_id as OrderNumber from olist_orders_dataset.
select order_id as OrderNumber from olist_orders_dataset;

-- Question 7: Display order_status as Status from olist_orders_dataset.
select order_status as Status from olist_orders_dataset;

-- Question 8: Display customer_city as City and customer_state as State.
select customer_city as City, customer_state as State from olist_customers_dataset;

-- Question 10: Display payment_value as PaymentAmount from olist_order_payments_dataset.
select payment_value as PaymentAmount from olist_order_payments_dataset;

-- Question 11: Display distinct order_status values in alphabetical order.
select distinct order_status from olist_orders_dataset order by order_status;

-- Question 12: Display distinct payment_type values in alphabetical order.
select distinct payment_type from olist_order_payments_dataset order by payment_type;

-- Question 13: Display delivered orders with order_id labeled as OrderNumber.
select order_id as OrderNumber from olist_orders_dataset where order_status = 'delivered';
\
-- Question 14: Display products with product_id labeled as ProductNumber.
select product_id as ProductNumber from olist_products_dataset;

-- Question 15: Display order items with price labeled as ItemPrice, sorted from highest to lowest.
select price as ItemPrice from olist_order_items_dataset order by price desc;

-- Question 16: Display the 5 highest payment_value rows with payment_value labeled as AmountPaid.
select top 5 payment_value as AmountPaid from olist_order_payments_dataset order by payment_value desc;

-- Question 17: Display distinct customer_state values for customers whose city is 'sao paulo'.
select distinct customer_state from olist_customers_dataset where customer_city = 'sao paulo';

-- Question 18: Display delivered orders purchased after '2018-01-01', showing only order_id and order_status.
select order_id, order_status from olist_orders_dataset where order_status = 'delivered' and order_purchase_timestamp > '2018-01-01';

-- Question 19: Display credit card payments with payment_value greater than 100, using a clear alias for payment_value.
select payment_value as PaymentAmount from olist_order_payments_dataset where payment_type = 'credit_card' and payment_value > 100;

-- Question 20: Write a query that selects useful columns, filters rows, gives one column an alias, sorts the results, and limits the output to 10 rows.
select order_id as OrderNumber, order_status as Status, order_purchase_timestamp as PurchaseDate from olist_orders_dataset where order_status = 'delivered' order by order_purchase_timestamp desc limit 10;