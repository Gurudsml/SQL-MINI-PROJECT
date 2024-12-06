-- create employee databse
create database employee;
use employee;
-- creating table based on the given schemas
create table departments(
department_id int primary key,
department_name varchar(100)
);

create table location(
location_id int primary key,
loacation varchar(30)
);

create table employees(
employee_id int primary key,
employee_name varchar(50),
gender enum("M","F"),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key (department_id) references departments (department_id),
foreign key (location_id) references location (location_id)
);

-- alter table - add

alter table employees
add column email varchar(30);

-- alter tablem - modify

alter table employees
modify column designation varchar(30); 

-- alter table - drop column 
alter table employees
drop column age;

-- alter table - rename column

alter table employees
rename column hire_date to date_of_joining;

 -- table renaming 
 
 rename table departments to departments_info;
 rename table location to locations;
  
  -- truncate table
  
  truncate table employees;
  
  -- drop table & database
  
  drop table employees;
  drop database employee;
  
  -- Q1.Database Recreation:
create database if not exists EMPLOYEE;
use EMPLOYEE;

  -- Q2.Create Departments Table:
create table DEPARTMENTS(
Department_ID int auto_increment primary key,
Department_Name varchar(100) unique not null
);

-- Q3.Create Location Table:
create table LOCATIONS(
Location_ID int auto_increment primary key,
Location varchar(30) unique not null
);

-- Q4.Create Employees Table:
create table EMPLOYEES(
Employee_ID int auto_increment primary key,
Employee_Name varchar(50) not null,
Gender enum ("M","F"),
Age int check (Age>=18),
Hire_Date datetime default current_timestamp,
Designation varchar(100),
Department_ID int not null,
Location_ID int not null,
Salary decimal(10,2),
foreign key (Department_ID) references DEPARTMENTS (Department_ID),
foreign key (Location_ID) references LOCATIONS (Location_ID)
);

-- DML Commands:
-- Q5. Insert the records into the employees database respective tables: Departments, Location, and Employees by referring to the tables provided.
 insert into LOCATIONS(Location)
 value ("Chennai"),
       ("Bangalore"),
       ("Hyderabad"),
       ("Pune");
   
 
 insert into DEPARTMENTS(Department_Name)
 values 
 ("Software Development"),
 ("Marketing"),
 ("Data Science"),
 ("Human Resources"),
 ("Product Manager"),
 ("Content Creation"),
 ("Finance"),
 ("Design"),
 ("Research and Development"),
 ("Customer Support"),
 ("Business Development"),
 ("IT"),
 ("Operations");
 
 
 insert into EMPLOYEES (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) 
 value
    (5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
    (5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
    (5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
    (5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
    (5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
    (5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
    (5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
    (5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
    (5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
    (5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
    (5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
    (5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
    (5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
    (5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
    (5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
    (5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
    (5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
    (5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
    (5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
    (5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
    (5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
    (5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
    (5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
    (5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
    (5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
    (5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
    (5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
    (5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
    (5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
    (5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

 /* Q6. Retrieve all data from the Departments table.
  Display only the location name from the Location table.
  Display the employee names and their respective designations.
  */ 
select * from DEPARTMENTS;

select Location from LOCATIONS;

select Employee_Name,Designation from EMPLOYEES;

/*Q7. Change the designation of employee with ID 5001 to 'Senior Data Analyst'.
     Increase the salary of all employees in the Finance department by 10%.
*/
update EMPLOYEES
set Designation = "Senior Data Analyst"
where Employee_ID = "5001";

select* from EMPLOYEES;

update EMPLOYEES
set Salary = Salary*1.1
where Department_ID = 7;

/*Q8. Remove all records from the Employees table where the hire date is before '2017-01-01'.
  Delete the record of the employee with ID 5025.
*/
set SQL_SAFE_UPDATES=0;
delete from EMPLOYEES
where Hire_Date <'2017-01-01';

delete from EMPLOYEES
where Employee_ID = 5025;

-- 1.	Distinct Values: Write a query to retrieve distinct salaries from the Employees table.
select distinct Salary from EMPLOYEES;

-- 2.	Alias (AS): Provide aliases for the "age" and "salary" columns as "Employee_Age" and "Employee_Salary"
select Age as Employee_Age, Salary as Employee_Salary
from EMPLOYEES;

-- Calculate the net salary per employee by adding a 10% bonus. 
select Employee_ID, Employee_Name, Salary*1.1 Net_Salary 
from EMPLOYEES; 

-- Retrieve employees with a salary greater than ₹50000 and hired before 2016-01-01.
select * from EMPLOYEES
where salary>'50000' and Hire_Date < '2016-01-01';

-- List employees who are Data Analyst or Data Scientist
select * from EMPLOYEES
where Designation = "Data Analyst" or Designation = "Data Scientist";
 
-- Find the employee whose designation is missing and fill it with "Data Scientist". 
set SQL_safe_updates = 0;

update EMPLOYEES
set Designation = "Data Scientist"
where Designation is null;

-- List employees whose department_id is either 1, 3, 4, 9, or 12.
select * from EMPLOYEES 
where Department_ID in (1,3,4,9,12);

-- Identify employees whose salary is not between 50000 and 80000;
select Employee_ID, Employee_Name, Salary from EMPLOYEES
where Salary not between 50000 and 80000;

-- Find employees whose name starts with a vowel;
select* from employees 
where Employee_Name regexp '^[AEIOU]';

-- Display the employee names that have 'sh' as the second and third characters
select * from EMPLOYEES
where Employee_name like('_sh%' ) or Employee_name like ('__sh%');  

-- Sorting and Grouping Data: 
-- 1.	ORDER BY: List employees hired after January 1, 2019, ordered by hire date.
select * from EMPLOYEES
where Hire_date > '2019-01-01' 
order by Hire_date ;

-- Find employees sorted by department ID in ascending order and salary in descending order.
select * from EMPLOYEES
order by Department_ID asc, Salary desc;

-- 2.	LIMIT: Retrieve the top 10 highest paid employees from the Employees table.
select * from EMPLOYEES
order by Salary desc
limit 10;

-- Display the first 5 employees hired in the year 2018.
select * from EMPLOYEES
where Hire_date like ('2018-%')
order by Hire_date limit  5; 

-- 3.	Aggregate Functions: Calculate the sum of all salaries in the Finance department
select sum(Salary) as Total_salary_of_FD From EMPLOYEES
where Department_ID = '7';

-- Find the minimum age among all employees
select min(age) Minimum_Age 
from EMPLOYEES;

-- 4.	GROUP BY: List the maximum salary for each location
select Location_ID , max(salary) as Maximum_Salary 
from EMPLOYEES
group by location_ID;

-- Calculate the average salary for each designation containing the word 'Analyst'.
select Designation, avg(Salary) as Average_Salary 
from Employees
where Designation like ('%Analyst%')
group by Designation;

-- 5.	HAVING: Find departments with less than 3 employees

select Department_ID, count(Employee_ID) as Total_Employees 
from EMPLOYEES
group by department_ID
Having Total_Employees < '3'
order by department_ID ; 

-- Find locations with female employees whose average age is below 30.
select Location_ID ,Employee_name, avg(Age) as Average_Age 
from EMPLOYEES
where Gender = 'f'
group by Location_ID ,Employee_name
having Average_Age < '30'
order by location_ID;

-- Joins: 1.	Inner Join: List employee names, their designations, and department names where employees are assigned to a department.

select E.Employee_name , E.Designation , D.Department_Name from Employees E
inner join Departments D on E.Department_ID = D.Department_ID;

-- 2.	Left Join: List all departments along with the total number of employees in each department, including departments with no employees.

select * from Departments D
left join Employees E on E.Department_ID = D.Department_ID;

-- 3.	Right Join: Display all locations along with the names of employees assigned to each location. If no employees are assigned to a location, display NULL for employee name.

select * from Employees E
right join Locations L  on E.Location_ID = L.Location_ID;

/* Functions: 
1. Built-in Numeric Functions: 
Find the average age of employees, rounded off to the nearest integer.
Retrieve all employee records including a bonus column, calculated as the square root of their salary rounded up to the nearest larger integer.
*/

select *,round(avg(age)) AS Average_age ,ceil(SQRT(salary)) as Bonus from Employees
group by employee_ID;

/* 2. Built-in String Functions:
Extract the first three characters from the location names.
Concatenate employee names with their designations separated by a hyphen.
*/
select *, left(Location,3) as Location_firstName from locations;

select concat(Employee_name, ' - ',Designation)  Employeename_and_Designation from employees;

/* 3. Built-in Date Time Functions:
Extract the year from the hire date of all employees.
Calculate the number of days between the hire date and the current date for each employee.
Format the hire date of employees to display in 'DD-MM-YYYY' format.
Find the 'employment_confirmation' date of each employee which is 3 months from their hire_date.
*/

select year(Hire_Date) Hiring_year ,employee_name , Designation from Employees;

select DATEDIFF(curdate(),hire_date) as Currentdate from employees;

select Hire_Date, date_format(Hire_Date,'%D-%M-%Y') Formatted_date from employees;

select date_add(Hire_date, interval 3 month) Employment_confirmation from employees;

/* 4. User-defined Functions:
 Define a function to retrieve the employee count by location name. Find the employee count for the cities Bangalore and Hyderabad.
*/

delimiter $$
create function Employee_count_by_Locations(location varchar(30))
returns Decimal(10,2)
reads sql data
Begin
	declare Employee_count int;
    select Count(*)into Employee_count  from employees e
    join locations L
    on e.location_id=l.location_id
    where l.Location =location;
    return Employee_count;
end $$
delimiter ;

select employee_count_by_locations ('bangalore') as Bangalore_count_locations;
select employee_count_by_locations ('Hyderabad') as Hyderabad_count_locations;

-- Subqueries: 1. Single-Row Subqueries:

/*Retrieve the details of employees with salaries greater than the average salary of all employees.
  List the employee(s) with the highest salary.
  Retrieve the details of employees who are working in the same department as the employee Arjun Kumar.
*/
select * from employees
where salary > (select avg(salary) from employees);

select *from employees
where salary =( select max(salary) from employees );

select * from employees 
where department_ID=(select department_ID from employees 
where employee_name ='arjun kumar'); 

-- 2. Multi-Row Subqueries:
-- Find the employees who work in departments with 'Development' in their name.

select e.* from employees e
join departments d
on e.department_id=D.department_id
where e.department_ID in (select department_ID from departments 
where department_name like '%Development%');

-- Stored Procedure: 1. Stored Procedure with IN Parameter:
/* Define a stored procedure named GetEmployeesByDepartmentName that takes a department name as input and retrieves employees belonging to that department. 
   Retrieve employee details of the departments 'IT' and 'Human Resources'.
*/

delimiter $$
create procedure GetEmployeesByDepartmentName (in depart_name varchar(30))
begin
	select e.* ,department_Name from employees e
    join departments d 
    on e.department_ID= d.department_ID
    where d.Department_Name=depart_name;
end $$
delimiter ;

call GetEmployeesByDepartmentName ('IT');
call GetEmployeesByDepartmentName ('human resources');

/* 2. Stored Procedure with OUT Parameter:
 Create a stored procedure named FindEmployeeBirthYearByID that takes an employee ID as input and returns the employee's birth year. 
 Retrieve the birth year of employees with the IDs 5004, 5018 and 5029.
   -- CALCULATE AGE: select date_sub(current_date(),interval age year)  from employees;
*/

delimiter //
create procedure FindEmployeeBirthYearByID (in emp_ID int, out Employee_DOB date)
begin
	select  date_sub(current_date(),interval age year) into Employee_DOB from employees
    where employee_ID=emp_ID;
end //
delimiter ;

call FindEmployeeBirthYearByID(5004,@employee_DOB5004);
select @employee_DOB5004 as 5004_Employee_DOB;
select year(@employee_DOB5004) as Employee_birth_year; -- Note(Change the out parameter Data_type DATE to YEAR we can get year Directly)

call FindEmployeeBirthYearByID(5018,@employee_DOB5018);
select @employee_DOB5018 as 5018_Employee_DOB;
select year(@employee_DOB5018) as Employee_birth_year;

call FindEmployeeBirthYearByID(5029,@employee_DOB5029);
select date_format(@employee_DOB5029,'%d-%b-%Y') as 5029_Employee_DOB ; 
select year(@employee_DOB5029) as Employee_birth_year;

/* 1. Before Insert Trigger
Create a before insert trigger that automatically sets the salary of an employee to the average of all salaries if it's not provided during insertion. 
Test the trigger by attempting to insert a new employee without providing a salary.
*/

select avg(salary) from Employees;

delimiter //

create trigger Automatically_set_Avg_salary
before insert on employees
for each row
begin
   if new.Salary is null then 
    set new.salary =(select avg(salary) from Employees);
    end if;
end //
  
delimiter ;

--  testng trigger 
insert into Employees (Employee_Name,Gender,Age,Hire_Date,Designation,Department_ID,Location_ID)
values ('Guru','m','24','2019-11-22','SQL Developer',12,2);

select * from Employees;

/* 2. After Delete Trigger
Create an after delete trigger to prevent the deletion of employees who joined in the most recent year.
 Test the trigger by attempting to delete an employee who joined in the latest year.
*/

select year(Hire_date) From Employees order by hire_date desc limit 1;

delimiter \\

create trigger Prevent_Employee_deletion_1
after delete on employees
for each row
begin
declare recent_year year;
select year(Hire_date) into recent_year From Employees order by year(hire_date) desc limit 1;
   if year(Old.Hire_date)>=recent_year then
   signal Sqlstate '45000'
   set message_Text = 'Employee Join in the Current year' ;
   end if;
end \\

delimiter ;

delete from Employees where Employee_ID = 5015;
delete From Employees where Employee_iD= 5031;

select * from Employees;
