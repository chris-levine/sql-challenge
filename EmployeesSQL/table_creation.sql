-- Creating department table
DROP TABLE IF EXISTS department;

CREATE TABLE department(
	dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

-- Creating employees table
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL
);

-- Creating department employee table
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

-- Creating department manager table
DROP TABLE IF EXISTS dept manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

-- Creating salaries table 
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Creating titles table
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(50) NOT NULL
);