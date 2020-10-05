-- Create the tables for each csv file
CREATE TABLE departments (
  dept_no VARCHAR(5) NOT NULL,
  dept_name VARCHAR(64)
);

CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR(5) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(5) NOT NULL,
  emp_no INT NOT NULL
);

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id VARCHAR(5),
  birth_date VARCHAR(10),
  first_name VARCHAR(64),
  last_name VARCHAR(64),
  sex VARCHAR(1),
  hire_date VARCHAR(10)
);

CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary INT
);

CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(64)
);

-- Check data import
SELECT *
FROM salaries;

	
	