--  create a database
CREATE Database IntroDB;
use IntroDB;

-- create tables
CREATE Table Student(
	IDNumber varchar(6) Primary Key,
    FirstName varchar (2) not null,
    MiddleName varchar (6) null,
    LastName varchar (6) not null,
    Gender varchar (1) not null,
    Program  varchar (4) not null,
    YearLeverl int not null
);

-- populate the table
INSERT INTO Student (IDNumber, FirstName, MiddleName, LastName, Gender, Program, YearLeverl)
VALUES ('525533', 'Jr', 'Junior', 'Lazaro', 'M', 'BSIT', 3);

Select * from Student;

Update Student
Set FirstName='Momo',
	LastName='Hirai',
    Gender='F'
Where IDNumber='525533';

Delete From Student Where IDNumber='525533';
    

