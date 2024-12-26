-- at this mysql assignment, I added sql queries under the appropriate comment

-- statement to create database
CREATE DATABASE EmployeeDepartmentDB;
USE EmployeeDepartmentDB;

-- statement to create table 1
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,  -- Department ID
    department_name VARCHAR(57) NOT NULL,          -- Department
    location VARCHAR(57)                           -- Location
);


-- statement to create table 2
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,    -- employee ID
    first_name VARCHAR(55) NOT NULL,               -- First name
    last_name VARCHAR(55) NOT NULL,                -- Last name
    hire_date DATE NOT NULL,                       -- Hiring Date 
    department_id INT,                             -- Foreign key that is linked with Departments
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)  -- Constraint Foreign key 
);


-- statements to insert data into tables
INSERT INTO Departments (department_name, location)
VALUES 
    ('HR', 'New Jersey'),
    ('Marketing', 'Chicago');

-- Insert data into Employees table
INSERT INTO Employees (first_name, last_name, hire_date, department_id)
VALUES 
    ('Taj', 'Marry', '2020-04-07', 11),        -- Assigned to HR 
    ('Bobby', 'Smith', '2018-07-09', 12);      -- Assigned to Marketing


