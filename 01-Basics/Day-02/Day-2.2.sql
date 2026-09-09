USE SQLPractice;
GO

-- Day-02.2: Products

-- 1. Display every column from the products table.
select * from Products;

-- 2. Display only the product name and sales price.
select product, sales_price from Products;

-- 3. Display the distinct product series.
select distinct series from Products;

-- 4. Find products in the GTX series.
select * from Products where series ='GTX';

-- 5. Find products in the MG or GTK series.
select * from Products where series in ('MG', 'GTK');

-- 6. Find products with a sales price greater than 500.
select * from Products where sales_price > 500;

-- 7. Find products with a sales price less than or equal to 100.
select * from Products where sales_price <=100;

-- 8. Find products with a sales price between 100 and 1,000.
select * from Products where sales_price between 100 and 1000;

-- 9. Find products whose series is not GTX.
select * from Products where series != 'GTX';

-- 10. Find product names that start with GTX.
select * from Products where product like 'GTX%';

-- 11. Find product names containing the text Pro.
select * from Products where product like '%Pro%';

-- 12. Find product names ending with Basic.
select * from products where product like '%Basic';

-- 13. Find products with a sales price of exactly 550.
select * from Products where sales_price = 550;

-- 14. Find products with a sales price that is not 55.
select * from Products where sales_price!= 55;

-- 15. Find products in the GTX series with a price greater than 500.
select * from Products where sales_price > 500 and series = 'GTX';

-- 16. Find products in the MG series or products priced below 100.
select * from Products where series ='MG' or sales_price <100;

-- 17. Display all products ordered by sales price from highest to lowest.
select * from Products order by sales_price desc;

-- 18. Display the first 3 products ordered by sales price from lowest to highest.
select top 3 * from Products order by sales_price asc;

-- 19. Display the first 5 product names ordered alphabetically.
select top 5 * from Products order by sales_price asc;

-- 20. Find products whose series is not NULL.
select * from Products where series is not null;