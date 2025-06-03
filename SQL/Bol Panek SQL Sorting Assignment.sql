CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    employment_type VARCHAR(20) -- e.g., 'Full-time', 'Part-time', etc.
);
INSERT INTO employees (employee_id, first_name, last_name, age, department, city, employment_type)
VALUES 
(1, 'Alice', 'Johnson', 28, 'HR', 'New York', 'Full-time'),
(2, 'Bob', 'Smith', 22, 'Marketing', 'Chicago', 'Full-time'),
(3, 'Carol', 'Davis', 34, 'Finance', 'Chicago', 'Part-time'),
(4, 'David', 'Clark', 30, 'Sales', 'Los Angeles', 'Full-time'),
(5, 'Eva', 'Lewis', 41, 'HR', 'Chicago', 'Full-time'),
(6, 'Frank', 'Miller', 25, 'Engineering', 'Boston', 'Full-time'),
(7, 'Grace', 'Taylor', 20, 'Sales', 'Chicago', 'Full-time'),
(8, 'Henry', 'Wilson', 36, 'Marketing', 'New York', 'Part-time'),
(9, 'Ivy', 'Brown', 29, 'Finance', 'Chicago', 'Full-time'),
(10, 'Jake', 'Anderson', 31, 'HR', 'Chicago', 'Part-time');


-- Select employees who work in the HR Department
SELECT *
FROM employees 
WHERE department = 'HR';

-- Select employees aged between 20 and 35 years