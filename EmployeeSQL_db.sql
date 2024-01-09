-- Viewing the tables 
SELECT * FROM "Departments";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Employees";	
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";	
SELECT * FROM "Salaries";

DataAnalysis:
-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.employee_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" AS e
JOIN "Salaries" AS s ON e.employee_no = s.employee_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM "Employees" AS e
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.deputy_no, d.deputy_name, e.employee_no, e.last_name, e.first_name
FROM "Departments" AS d
JOIN "Dept_Manager" AS dm ON d.deputy_no = dm.deputy_no
JOIN "Employees" AS e ON dm.employee_no = e.employee_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.employee_no, e.last_name, e.first_name, d.deputy_no, d.deputy_name
FROM "Employees" AS e 
JOIN "Departments" AS d ON d.deputy_no = d.deputy_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM public."Employees"
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.employee_no, e.last_name, e.first_name, d.deputy_name
FROM "Dept_Emp" AS de
JOIN "Employees" AS e
ON de.employee_no = e.employee_no
JOIN "Departments" AS d
ON de.deputy_no = d.deputy_no
WHERE d.deputy_name = 'Sales';
 
-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.employee_no, e.last_name, e.first_name, d.deputy_name
FROM "Employees" AS e 
JOIN "Departments" AS d ON d.deputy_no = d.deputy_no
WHERE d.deputy_name IN ('Sales', 'Development');

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;