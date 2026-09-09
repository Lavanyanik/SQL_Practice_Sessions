USE SQLPractice;
GO

-- Day-02.4: Sales Teams

-- 1. Display every column from the sales_teams table.
select * from sales_teams;

-- 2. Display the sales agent, manager, and regional office.
select sales_agent, manager, regional_office from sales_teams;

-- 3. Display the distinct regional offices.
select distinct regional_office from sales_teams;

-- 4. Find sales agents in the Central regional office.
select * from sales_teams where regional_office = 'Central';

-- 5. Find sales agents in the East or West regional office.
select * from sales_teams where regional_office in ('East', 'West');

-- 6. Find sales agents managed by Dustin Brinkmann.
select * from sales_teams where manager = 'Dustin Brinkmann';

-- 7. Find sales agents whose names start with A.
select * from sales_teams where sales_agent like 'A%';

-- 8. Find sales agents whose names contain the text son.
select * from sales_teams where sales_agent like '%son%';

-- 9. Find managers whose names end with mann.
select * from sales_teams where manager like '%mann';

-- 10. Find sales agents whose regional office is not Central.
select * from sales_teams where regional_office != 'Central';

-- 11. Find sales agents who are not managed by Dustin Brinkmann.
select * from sales_teams where manager != 'Dustin Brinkmann';

-- 12. Find sales agents whose manager is not NULL.
select * from sales_teams where manager is not null;

-- 13. Find sales agents whose manager is NULL.
select * from sales_teams where manager is null;

-- 14. Find Central sales agents managed by Dustin Brinkmann.
select * from sales_teams where regional_office = 'Central' and manager = 'Dustin Brinkmann';

-- 15. Find agents in the East office or agents managed by Cara Losch.
select * from sales_teams where regional_office = 'East' or manager = 'Cara Losch';

-- 16. Display all sales agents ordered alphabetically.
select * from sales_teams order by sales_agent;

-- 17. Display all sales teams ordered by manager name.
select * from sales_teams order by manager;

-- 18. Display the first 10 sales agents ordered alphabetically.
select top 10 * from sales_teams order by sales_agent;

-- 19. Display the first 5 West regional sales agents ordered by name.
select top 5 * from sales_teams where regional_office = 'West' order by sales_agent;

-- 20. Find sales agents in the Central or East office who are not managed by Cara Losch.
select * from sales_teams where (regional_office = 'Central' or regional_office = 'East') and manager != 'Cara Losch';
