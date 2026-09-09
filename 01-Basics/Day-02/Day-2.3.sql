USE SQLPractice;
GO

-- Day-02.3: Sales Pipeline

-- 1. Display every column from the sales_pipeline table.
select * from sales_pipeline;

-- 2. Display the opportunity ID, sales agent, product, and deal stage.
select opportunity_id , sales_agent, product, deal_stage from sales_pipeline;

-- 3. Display the distinct deal stages
select distinct deal_stage from sales_pipline;

-- 4. Find opportunities with a deal stage of Won.
select * from sales_pipeline where deal_stage = 'Won';

-- 5. Find opportunities with a deal stage of Lost or Engaging.
select * from sales_pipeline where deal_stage in ('Lost', 'Engaging');

-- 6. Find opportunities for the GTX Basic product.
select * from sales_pipeline where product = 'GTX Basic';

-- 7. Find opportunities whose product name contains GTX.
select * from sales_pipeline where product like '%GTX%';

-- 8. Find opportunities handled by sales agents whose names start with A.
select * from sales_pipeline where sales_agent like 'A%';

-- 9. Find opportunities with a close value greater than 5,000.
select * from sales_pipeline where close_value > 5000;

-- 10. Find opportunities with a close value between 1,000 and 5,000.
select * from sales_pipeline where close_value between 1000 and 5000;

-- 11. Find opportunities with no account assigned.
select * from sales_pipeline where account is null;

-- 12. Find opportunities with an account assigned.
select * from sales_pipeline where account is not null;

-- 13. Find opportunities that do not have a Lost deal stage.
select * from sales_pipeline where deal_stage != 'Lost';

-- 14. Find Won opportunities with a close value greater than 5,000.
select * from sales_pipeline where deal_stage = 'Won' and close_value > 5000;

-- 15. Find opportunities that are Lost or have no close date.
select * from sales_pipeline where deal_stage = 'Lost' or close_date is null;

-- 16. Find opportunities engaged on or after January 1, 2017.
select * from sales_pipeline where engage_date >= '2017-01-01';

-- 17. Find opportunities closed during 2017.
select * from sales_pipeline where close_date >= '2017-01-01' and close_date < '2018-01-01';

-- 18. Display the first 10 opportunities ordered by close value from highest to lowest.
select top 10 * from sales_pipeline order by close_value desc;

-- 19. Display opportunities ordered by engage date from newest to oldest.
select * from sales_pipeline order by engage_date desc;

-- 20. Display the first 10 Won opportunities ordered by close date from oldest to newest.
select top 10 * from sales_pipeline where deal_stage = 'Won' order by close_date asc;
