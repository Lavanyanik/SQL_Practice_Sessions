USE SQLPractice;
GO

-- Day-1.2: Bank_Churn_Data_Dictionary.csv / dbo.Bank_Churn_Data_Dictionary

-- 1. Display every column from dbo.Bank_Churn_Data_Dictionary.
select * from Bank_Churn_Data_Dictionary;

-- 2. Display only the Field column.
select Field from Bank_Churn_Data_Dictionary;

-- 3. Display only the Description column.
select Description from Bank_Churn_Data_Dictionary;

-- 4. Display the distinct values in the Field column.
select distinct Field from Bank_Churn_Data_Dictionary;

-- 5. Find the dictionary row for the CustomerId field.
select * from Bank_Churn_Data_Dictionary where Field = 'CustomerId';

-- 6. Find the dictionary row for the Surname field.
select * from Bank_Churn_Data_Dictionary where Field = 'Surname';

-- 7. Find the dictionary row for the Balance field.
select * from Bank_Churn_Data_Dictionary where Field = 'Balance';

-- 8. Find dictionary rows whose Field starts with the letter C.
select * from Bank_Churn_Data_Dictionary where Field = 'C%';

-- 9. Find dictionary rows whose Field contains the text Salary.
select * from Bank_Churn_Data_Dictionary where Field like '%Salary%';

-- 10. Find dictionary rows whose Field ends with the text Member.
select * from Bank_Churn_Data_Dictionary where Field like '%Member';

-- 11. Find dictionary rows whose Field is either Age, Gender, or Geography.
select * from Bank_Churn_Data_Dictionary where Field in ('Age', 'Gender', 'Geography');

-- 12. Find dictionary rows whose Field is between Age and Tenure alphabetically.
select * from Bank_Churn _Data_Dictionary where Field between 'Age' and 'Tenure';

-- 13. Find dictionary rows whose Field is not CustomerId.
select * from Bank_Churn_Data_Dictionary where Field != 'CustomerId';

-- 14. Find dictionary rows whose Description contains the word customer.
select * from Bank_Churn_Data_Dictionary where Description like '%customer%';

-- 15. Find dictionary rows whose Description contains the word numerical.
select * from Bank_Churn_Data_Dictionary where Description like '%numerical%';

-- 16. Find dictionary rows whose Description starts with the letter A.
select * from Bank_Churn_Data_Dictionary where Description like 'A%';

-- 17. Find dictionary rows whose Field contains the text Card or Member.
select * from Bank_Churn_Data_Dictionary where Field like '%Card%' or Field like '%Member%';
-- 18. Display all dictionary rows ordered by Field alphabetically.
select * from Bank_Churn_Data_Dictionary order by Field asc;

-- 19. Display the first 5 dictionary rows ordered by Description alphabetically.
select top 5 * from Bank_Churn_Data_Dictionary order by Description asc;

-- 20. Display the first 10 dictionary rows whose Field is not CustomerId, ordered by Field alphabetically.
select top 10 * from Bank_Churn_Data_Dictionary where Field != 'CustomerID' order by Field asc;