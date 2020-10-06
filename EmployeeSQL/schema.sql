-- Create the tables for each csv file
DROP TABLE departments;
CREATE TABLE departments (
  dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(64)	
);

DROP TABLE employees;
CREATE TABLE employees (
  emp_no int NOT NULL PRIMARY KEY,
  emp_title_id VARCHAR(5),
  birth_date VARCHAR(10),
  first_name VARCHAR(64),
  last_name VARCHAR(64),
  sex VARCHAR(1),
  hire_date VARCHAR(10)
);

DROP TABLE dept_emp;
CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE dept_manager;
CREATE TABLE dept_manager (
  dept_no VARCHAR(5) NOT NULL,
  emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE salaries;
CREATE TABLE salaries (
  emp_no int NOT NULL PRIMARY KEY,
  salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE titles;
CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL PRIMARY KEY,
  title VARCHAR(64)
);

-- Check data import
SELECT *
FROM salaries;

	
	