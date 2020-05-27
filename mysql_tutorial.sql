/*
SQL Basic commands - Marcello Tania | BootUP Academy
*/

create database bootup;

/* activationg the specific database, all further actions wil happen on this database */
use bootup;

/* Create a table inside a data */
CREATE TABLE students (
    Name VARCHAR(10),
    Email VARCHAR(20),
    City VARCHAR(10),
    DOB DATE,
    Salary NUMERIC(20)
);
students
/* Write a code to create a table - employee - (name, age, email, mobile, address, familysize*/
CREATE TABLE new_employee (
    Name VARCHAR(10),
    Age INT(4),
    Email VARCHAR(20),
    Mobile VARCHAR(15),
    Address VARCHAR(200),
    Familysize INT(3)
);

/* Create a dumy table, which we will delete later, to understand how to delte or remove a table */
CREATE TABLE emp (
	Name VARCHAR(10),
    Email VARCHAR(20)
);

/* DROP -  to drop a table, or a column or rows from a database/table */
DROP table emp;

/*DROP - dropping column familisize from new_employee */
alter table new_employee drop column familysize;

/* Rename a column age to current_age */
alter table new_employee rename column age to current_age;

/* ALTER - add a new column address to the table students */
alter table students add(a0ddress varchar(20));

/* DML Family commands - INSERT, UPDATE, DELETE */
insert into students values("Anshu", "anshu@anshu.com", "Delhi", '2012-05-01', 1234212, "Delhi, India");

/* OR */

insert into students (Name, City, DOB) values ("Juan", "Jakarta", '2012-05-01');

insert into students (Name, City, DOB) values ("Kelly", "Singapore", '2012-05-01');

/* TO check the database table and see the values */
select * from students;

/* add a key column - student_id to the table students*/
alter table students add student_id int not null primary key auto_increment;

/* Update command for DML*/
update students set DOB = '1995-01-12' where student_id=1;
update students set DOB = '2001-05-18' where student_id=2;
update students set DOB = '1996-01-15' where student_id=3;


/* Delete command - deleting a particular row*/
delete from students where student_id=3;
delete from students where student_id=NULL;

insert into students (Name, Email, City, DOB, Salary, address) values("Jimmy", "Kelly@bootup.com", "Singapore", '1992-05-02', 994489, "Singapore");

/*DQL : Select*/
select * from students;

/* condition based selection*/
select * from students where city="jakarta";

/* selecting top n rows*/
select * from students limit 3;

/* selecting and order*/
select * from students order by DOB;
select * from students order by DOB, Name;

/* selecting a set of columns*/
select Name, Email, City from students where City="Jakarta";

/* using multiple conditions */
select * from students where city="jakarta" and salary<500000;

select * from students where city="jakarta" or salary<500000;

/* Groupby operation */
select * from students;
select City, sum(Salary) from students group by City;
select City, sum(Salary) from students group by City order by sum(salary) desc;

/* delete the row where salary is null*/
delete from students where student_id=NULL;

/*elimintae duplicates - distinct*/
select distinct Name, Email, City from students;








