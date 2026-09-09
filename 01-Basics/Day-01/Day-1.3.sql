USE SQLPractice;
GO

-- Day-1.3: Bank_Churn_Messy.xlsx
-- Customer_Info sheet columns: CustomerId, Surname, CreditScore, Geography, Gender, Age, Tenure, EstimatedSalary
-- Account_Info sheet columns: CustomerId, Balance, NumOfProducts, HasCrCard, Tenure, IsActiveMember, Exited

-- 1. Display every column from the Customer_Info sheet.
select * from Bank_Churn;

-- 2. Display only CustomerId, Surname, Geography, and Gender from Customer_Info.
select CustomerId, Surname, Geography, Gender from Bank_Churn;

-- 3. Display the distinct values in the Geography column of Customer_Info.
select distinct Geography from Bank_Churn;

-- 4. Find Customer_Info rows where Geography is FRA.
select * from Bank_Churn where Geography = 'France';

-- 5. Find Customer_Info rows where Gender is Female.
select * from Bank_Churn where Gender = 'Female';

-- 6. Find Customer_Info rows where CreditScore is greater than 700.
select * from Bank_Churn where CreditScore > 700;

-- 7. Find Customer_Info rows where Age is between 25 and 40.
select * from Bank_Churn where Age between 25 and 40;

-- 8. Find Customer_Info rows where Surname starts with the letter H.
select * from Bank_Churn where Surname like 'H%';

-- 9. Find Customer_Info rows where Surname contains the text son.
select * from Bank_Churn where Surname like '%son%';

-- 10. Display the first 10 Customer_Info rows ordered by EstimatedSalary from highest to lowest.
select top 10 * from Bank_Churn order by EstimatedSalary desc;

-- 11. Display every column from the Account_Info sheet.
select * from Bank_Churn;

-- 12. Display only CustomerId, Balance, NumOfProducts, and Exited from Account_Info.
select CustomerId, Balance, NumOfProducts, Exited from Bank_Churn;

-- 13. Display the distinct values in the IsActiveMember column of Account_Info.
select distinct IsActiveMember from Bank_Churn;

-- 14. Find Account_Info rows where Balance is equal to 0.
select * from Bank_Churn where Balance = 0;

-- 15. Find Account_Info rows where NumOfProducts is between 1 and 2.
select * from Bank_Churn where NumOfProducts between 1 and 2;

-- 16. Find Account_Info rows where HasCrCard is Yes and IsActiveMember is Yes.
select * from Bank_Churn where HasCrCard = 1 and IsActiveMember = 1;

-- 17. Find Account_Info rows where Exited is not 1.
select * from Bank_Churn where Exited <> 1;

-- 18. Find Account_Info rows where Balance is greater than 100000 or NumOfProducts is greater than 2.
select * from Bank_Churn where Balance > 100000 or NumOfProducts > 2;

-- 19. Display the first 10 Account_Info rows ordered by Balance from highest to lowest.
select top 10 * from Bank_Churn order by Balance desc;

-- 20. Display the first 10 Account_Info rows where Exited is 1, ordered by NumOfProducts from lowest to highest.
select top 10 * from Bank_Churn where Exited = 1 order by NumOfProducts asc;