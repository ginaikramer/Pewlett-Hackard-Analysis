--Start of Module 07 Challenge


-- Create List of Eligible Retirees by Title
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	tl.title,
	tl.from_date,
	tl.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles as tl
	ON (e.emp_no=tl.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT DISTINCT customer_id, inventory_id
FROM rental
ORDER BY customer_id;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

--SELECT number of titles from Unique Titles table
SELECT COUNT(title)
FROM unique_titles;

-- GROUP # of Eligible Retirees by Title & Sum
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;



