USE Employees;
#SELECT count(t.title) AS "Employees Count" , t.title AS "Tittle"
 #FROM titles t 
 #INNER JOIN employees e 
 #ON e.emp_no = t.emp_no
 #WHERE e.birth_date > "1965-01-01"
 #GROUP BY t.title;
 

#SELECT t.title AS "Tittle" ,avg(s.salary) AS "Average Salary" 
#FROM titles t 
#INNER JOIN salaries s 
#ON t.emp_no = s.emp_no
#GROUP BY t.title;

SELECT d.dept_name AS "Department Name" , sum(s.salary) AS "Money Spent"
FROM salaries s
INNER JOIN dept_emp de ON de.emp_no = s.emp_no 
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE dept_name = "Marketing" AND de.from_date >= "1990-01-01" AND de.to_date < "1992-01-01"


 
 
