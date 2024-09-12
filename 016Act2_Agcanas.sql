use empmanagementdb_agcanas;

-- Q1 Retrieve the birth date and address of the employees whose name is ‘Martyn D. Campbell’.
Select BirthDate, Address
From employee
Where concat(FName ='Martyn',' ', LName ='Campbell');

-- Q2 Retrieve the name and address of all employees who work for the ‘Marketing’ Department.
Select concat(FName, MInit, LName)Address
From employee
Where DNo = '4';

-- Q3 For every project located in ‘Lexington’, list the project number, the controlling department number and the department’s name.
Select Pno, DNo
From project
Where Location = 'Lexington';

-- Q4 Select all EMPLOYEE SSNs and their Dependents’ Name. SSN of employees without any dependents must also be displayed


-- Q5 Retrieve all distinct salary values.
Select Salary 
From employee
Where Salary;

-- Q6 Make a list of all project numbers for projects that involve an employee whose last name is ‘Jones’


-- Q7 Retrieve all employees whose address is in ‘Louisville, Kentucky’
Select *
From employee
Where Address = '%$ Louisville, KY';
