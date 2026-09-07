-- Day-01 — Bank Customer Churn
USE SQLPractice;
GO
-- Basic SQL Practice
-- 1. Display every column from the `Bank_Churn.csv` table.
select * from Bank_Churn;

-- 2. Display only `CustomerId`, `Surname`, `Geography`, and `Exited`.
select CustomerId, Surname, Geography, Exited from Bank_Churn;

-- 3. Display the distinct values in the `Geography` column.
select distinct Geography from Bank_Churn;

-- 4. Find customers whose `Gender` is `Female`.
select * from Bank_Churn where Gender = 'Female';

-- 5. Find customers whose `Geography` is `France`.
select * from Bank_Churn where Geography = 'France';

-- 6. Find customers whose `CreditScore` is greater than 700.
select * from Bank_Churn where CreditScore > 700;

-- 7. Find customers whose `Age` is less than 30.
select * from Bank_Churn where Age < 30;

-- 8. Find customers whose `Balance` is greater than or equal to 100000.
select * from Bank_Churn where Balance >=100000;

-- 9. Find customers whose `NumOfProducts` is not equal to 1.
select * from Bank_Churn where NumOfProducts !=1;

-- 10. Find customers whose `Tenure` is between 1 and 5.
select * from Bank_Churn where Tenure between 1 and 5;

-- 11. Find customers whose `Geography` is either `France` or `Spain`.
select * from Bank_Churn where Geography in ('France', 'Spain');

-- 12. Find customers who are both `IsActiveMember` = 1 and `HasCrCard` = 1.
select * from Bank_Churn where IsActiveMember = 1 and HasCrCard = 1;

-- 13. Find customers whose `Gender` is not `Male`.
select * from Bank_Churn where Gender != 'Male';

-- 14. Find customers whose `Surname` starts with the letter `A`.
select * from Bank_Churn where Surname like 'A%';

-- 15. Find customers whose `Surname` contains the letters `son`.
select * from Bank_Churn where Surname like '%son%';

-- 16. Find customers whose `Balance` is equal to 0.
select * from Bank_Churn where Balance = 0;

-- 17. Find customers whose `EstimatedSalary` is less than or equal to 50000.
select * from Bank_Churn where EstimatedSalary <= 50000;

-- 18. Find customers whose `Geography` is not `Germany`.
select * from Bank_Churn where Geography != 'Germany';

-- 19. List customers ordered by `CreditScore` from highest to lowest.
select * from Bank_Churn order by CreditScore desc;

-- 20. Display the first 10 customers ordered by `Age` from lowest to highest.
select top 10 * from Bank_Churn order by Age asc;
