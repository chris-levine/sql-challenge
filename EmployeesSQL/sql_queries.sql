-- First query 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no
LIMIT 10;

-- Second query
SELECT first_name, last_name, hire_date 
FROM employees
WHERE extract(year from hire_date) = 1986
LIMIT 10;

-- Third query 
SELECT dept_manager.dept_no,
	department.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name
FROM dept_manager
INNER JOIN department ON
dept_manager.dept_no = department.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no
LIMIT 10;

-- Fourth query
SELECT dept_emp.dept_no,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	department.dept_name
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN department ON
dept_emp.dept_no = department.dept_no
LIMIT 10;

-- Fifth query
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Sixth query
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.dept_no,
	department.dept_name
FROM employees 
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN department ON
dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales'
LIMIT 10;

-- Seventh query
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.dept_no,
	department.dept_name
FROM employees 
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN department ON
dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development'
LIMIT 10;

-- Last query
SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC
LIMIT 10;