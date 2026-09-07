USE SQLPractice;
GO

-- Day-1.3: Bank_Churn_Messy.xlsx
-- Customer_Info sheet columns: CustomerId, Surname, CreditScore, Geography, Gender, Age, Tenure, EstimatedSalary
-- Account_Info sheet columns: CustomerId, Balance, NumOfProducts, HasCrCard, Tenure, IsActiveMember, Exited

-- 1. Display every column from the Customer_Info sheet.

-- 2. Display only CustomerId, Surname, Geography, and Gender from Customer_Info.

-- 3. Display the distinct values in the Geography column of Customer_Info.

-- 4. Find Customer_Info rows where Geography is FRA.

-- 5. Find Customer_Info rows where Gender is Female.

-- 6. Find Customer_Info rows where CreditScore is greater than 700.

-- 7. Find Customer_Info rows where Age is between 25 and 40.

-- 8. Find Customer_Info rows where Surname starts with the letter H.

-- 9. Find Customer_Info rows where Surname contains the text son.

-- 10. Display the first 10 Customer_Info rows ordered by EstimatedSalary from highest to lowest.

-- 11. Display every column from the Account_Info sheet.

-- 12. Display only CustomerId, Balance, NumOfProducts, and Exited from Account_Info.

-- 13. Display the distinct values in the IsActiveMember column of Account_Info.

-- 14. Find Account_Info rows where Balance is equal to 0.

-- 15. Find Account_Info rows where NumOfProducts is between 1 and 2.

-- 16. Find Account_Info rows where HasCrCard is Yes and IsActiveMember is Yes.

-- 17. Find Account_Info rows where Exited is not 1.

-- 18. Find Account_Info rows where Balance is greater than 100000 or NumOfProducts is greater than 2.

-- 19. Display the first 10 Account_Info rows ordered by Balance from highest to lowest.

-- 20. Display the first 10 Account_Info rows where Exited is 1, ordered by NumOfProducts from lowest to highest.