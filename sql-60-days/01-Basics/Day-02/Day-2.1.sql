-- Day-02 — CRM Sales

-- Basic SQL Practice
USE SQLPractice;
GO
-- 1. Display every column from the `accounts.csv` table.
select * from accounts;

-- 2. Display only `account`, `sector`, `revenue`, and `office_location` from `accounts.csv`.
select account, sector, revenue, office_location from accounts;

-- 3. Display the distinct values in the `sector` column of `accounts.csv`.
select distinct sector from accounts;

-- 4. Find accounts in the `technology` sector.
select * from accounts where sector = 'technology';

-- 5. Find accounts whose `office_location` is `United States`.
select * from accounts where office_location = 'United States';

-- 6. Find accounts established after 2000.
select * from accounts where year_established > 2000;

-- 7. Find accounts with more than 1000 employees.
select * from accounts where employees > 1000;

-- 8. Find accounts with revenue less than 500.
select * from accounts where revenue < 500;

-- 9. Find accounts whose `sector` is not `medical`.
select * from accounts where sector != 'medical';

-- 10. Find accounts established between 1990 and 2000.
select * from accounts where year_established between 1990 and 2000;

-- 11. Find accounts in either `United States` or `Canada`.
select * from accounts where office_location in ('Unitied States', 'Canada');

-- 12. Find accounts with more than 500 employees and revenue greater than 100.
select * from accounts where employees > 500 and revenue > 100;

-- 13. Find accounts whose `account` name starts with the letter `A`.
select * from accounts where accounts like 'A%';

-- 14. Find accounts whose `account` name contains the text `Corp`.
select * from accounts where accounts like '%Corp%';

-- 15. Find accounts where `subsidiary_of` is `NULL`.
select * from accounts where subsidiary_of is null;

-- 16. Find accounts where `subsidiary_of` is not `NULL`.
select * from accounts where subsidiary_of is not null;

-- 17. Display the first 10 accounts ordered by revenue from highest to lowest.
select top 10 * from accounts order by revenue desc ;

-- 18. Display accounts ordered by employee count from lowest to highest.
select * from accounts order by employees asc;

-- 19. Find accounts established before 1990 or with fewer than 100 employees.
select * from accounts where year_established < 1990 or employees < 100;

-- 20. Display the first 5 accounts in Canada ordered alphabetically by account name.
select top 5 * from accounts where office_location = 'Canada' order by account asc ;