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


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
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


-- Create a Mentorship Elgibility table holding employees eligible to participate in a mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tl.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON (e.emp_no=de.emp_no)
LEFT JOIN titles AS tl
	ON (e.emp_no=tl.emp_no)
WHERE de.to_date =('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


-- Additional Query #1 to provide more insight:
-- GROUP # of Eligible Mentors by Title & Sum
SELECT COUNT(title), title
--INTO mentorship_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;

--Additional Query #2 to provide more insight:
--Create a table of employees born 1 year earlier (1964) through Dec 1965 to determine if we can gain more participation in the mentorship program without much risk.
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tl.title
INTO mentorship_eligibility_1964_1965
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON (e.emp_no=de.emp_no)
LEFT JOIN titles AS tl
	ON (e.emp_no=tl.emp_no)
WHERE de.to_date =('9999-01-01')
AND (e.birth_date BETWEEN '1964-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT COUNT(*)
FROM mentorship_eligibility_1964_1965;




