-- DBT Official INTERNAL Assignment 1
-- Date of Assignment : 10 Sep 2020
-- Date of Submission : 10 Sep 2020 : 1700hrs

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- Q1) Write SECECT statement to achieve the following:             
-- [1 marks each]

-- 1. Display the Employee’s ID, Column with concatenation of First Name and Last Name, Salary who is living in ‘London’.

SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", salary
	FROM employees e JOIN departments d ON e.department_id = d.department_id
		JOIN locations AS l ON l.location_id = d.location_id
			WHERE l.city = 'London';

-- o/p:

-- +-------------+--------------+---------+
-- | employee_id | Full Name    | salary  |
-- +-------------+--------------+---------+
-- |         203 | Susan Mavris | 6500.00 |
-- +-------------+--------------+---------+

-- --------------------------------
-- --------------------------------
 
-- 2. Display the Employee’s Last name whose name starts with ‘s’. 

SELECT last_name AS "Last Name of First Name starting with S"
	FROM employees
		WHERE first_name LIKE 'S%';

-- o/p:

-- +-----------------------------------------+
-- | Last Name of First Name starting with S |
-- +-----------------------------------------+
-- | King                                    |
-- | Baida                                   |
-- | Tobias                                  |
-- | Vollman                                 |
-- | Markle                                  |
-- | Stiles                                  |
-- | Sewall                                  |
-- | Ande                                    |
-- | Kumar                                   |
-- | Bell                                    |
-- | McCain                                  |
-- | Mavris                                  |
-- | Higgins                                 |
-- +-----------------------------------------+

-- --------------------------------
-- --------------------------------

-- 3. Find the Employee Joining date in first Monday in October month. 

SELECT hire_date
	FROM employees 
		WHERE monthname(hire_date)= 'October'
			AND dayofmonth(hire_date) <= 7
				AND dayofweek(hire_date) = 2;		

-- o/p:

-- Empty set

-- --------------------------------
-- --------------------------------

-- 4. Display the Employee name and city in capital letter. 

SELECT UPPER(CONCAT(e.first_name, ' ', e.last_name)) AS "Name", UPPER(l.city) AS "City"
	FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id
		JOIN locations AS l ON l.location_id = d.location_id
			ORDER BY l.city;

-- o/p:

/*
+-------------------+---------------------+
| Name              | City                |
+-------------------+---------------------+
| SUSAN MAVRIS      | LONDON              |
| HERMANN BAER      | MUNICH              |
| JOHN RUSSELL      | OXFORD              |
| KAREN PARTNERS    | OXFORD              |
| ALBERTO ERRAZURIZ | OXFORD              |
| GERALD CAMBRAULT  | OXFORD              |
| ELENI ZLOTKEY     | OXFORD              |
| PETER TUCKER      | OXFORD              |
| DAVID BERNSTEIN   | OXFORD              |
| PETER HALL        | OXFORD              |
| CHRISTOPHER OLSEN | OXFORD              |
| NANETTE CAMBRAULT | OXFORD              |
| OLIVER TUVAULT    | OXFORD              |
| JANETTE KING      | OXFORD              |
| PATRICK SULLY     | OXFORD              |
| ALLAN MCEWEN      | OXFORD              |
| LINDSEY SMITH     | OXFORD              |
| LOUISE DORAN      | OXFORD              |
| SARATH SEWALL     | OXFORD              |
| CLARA VISHNEY     | OXFORD              |
| DANIELLE GREENE   | OXFORD              |
| MATTEA MARVINS    | OXFORD              |
| DAVID LEE         | OXFORD              |
| SUNDAR ANDE       | OXFORD              |
| AMIT BANDA        | OXFORD              |
| LISA OZER         | OXFORD              |
| HARRISON BLOOM    | OXFORD              |
| TAYLER FOX        | OXFORD              |
| WILLIAM SMITH     | OXFORD              |
| ELIZABETH BATES   | OXFORD              |
| SUNDITA KUMAR     | OXFORD              |
| ELLEN ABEL        | OXFORD              |
| ALYSSA HUTTON     | OXFORD              |
| JONATHON TAYLOR   | OXFORD              |
| JACK LIVINGSTON   | OXFORD              |
| CHARLES JOHNSON   | OXFORD              |
| STEVEN KING       | SEATTLE             |
| NEENA KOCHHAR     | SEATTLE             |
| LEX DE HAAN       | SEATTLE             |
| NANCY GREENBERG   | SEATTLE             |
| DANIEL FAVIET     | SEATTLE             |
| JOHN CHEN         | SEATTLE             |
| ISMAEL SCIARRA    | SEATTLE             |
| JOSE MANUEL URMAN | SEATTLE             |
| LUIS POPP         | SEATTLE             |
| DEN RAPHAELY      | SEATTLE             |
| ALEXANDER KHOO    | SEATTLE             |
| SHELLI BAIDA      | SEATTLE             |
| SIGAL TOBIAS      | SEATTLE             |
| GUY HIMURO        | SEATTLE             |
| KAREN COLMENARES  | SEATTLE             |
| JENNIFER WHALEN   | SEATTLE             |
| SHELLEY HIGGINS   | SEATTLE             |
| WILLIAM GIETZ     | SEATTLE             |
| MATTHEW WEISS     | SOUTH SAN FRANCISCO |
| ADAM FRIPP        | SOUTH SAN FRANCISCO |
| PAYAM KAUFLING    | SOUTH SAN FRANCISCO |
| SHANTA VOLLMAN    | SOUTH SAN FRANCISCO |
| KEVIN MOURGOS     | SOUTH SAN FRANCISCO |
| JULIA NAYER       | SOUTH SAN FRANCISCO |
| IRENE MIKKILINENI | SOUTH SAN FRANCISCO |
| JAMES LANDRY      | SOUTH SAN FRANCISCO |
| STEVEN MARKLE     | SOUTH SAN FRANCISCO |
| LAURA BISSOT      | SOUTH SAN FRANCISCO |
| MOZHE ATKINSON    | SOUTH SAN FRANCISCO |
| JAMES MARLOW      | SOUTH SAN FRANCISCO |
| TJ OLSON          | SOUTH SAN FRANCISCO |
| JASON MALLIN      | SOUTH SAN FRANCISCO |
| MICHAEL ROGERS    | SOUTH SAN FRANCISCO |
| KI GEE            | SOUTH SAN FRANCISCO |
| HAZEL PHILTANKER  | SOUTH SAN FRANCISCO |
| RENSKE LADWIG     | SOUTH SAN FRANCISCO |
| STEPHEN STILES    | SOUTH SAN FRANCISCO |
| JOHN SEO          | SOUTH SAN FRANCISCO |
| JOSHUA PATEL      | SOUTH SAN FRANCISCO |
| TRENNA RAJS       | SOUTH SAN FRANCISCO |
| CURTIS DAVIES     | SOUTH SAN FRANCISCO |
| RANDALL MATOS     | SOUTH SAN FRANCISCO |
| PETER VARGAS      | SOUTH SAN FRANCISCO |
| WINSTON TAYLOR    | SOUTH SAN FRANCISCO |
| JEAN FLEAUR       | SOUTH SAN FRANCISCO |
| MARTHA SULLIVAN   | SOUTH SAN FRANCISCO |
| GIRARD GEONI      | SOUTH SAN FRANCISCO |
| NANDITA SARCHAND  | SOUTH SAN FRANCISCO |
| ALEXIS BULL       | SOUTH SAN FRANCISCO |
| JULIA DELLINGER   | SOUTH SAN FRANCISCO |
| ANTHONY CABRIO    | SOUTH SAN FRANCISCO |
| KELLY CHUNG       | SOUTH SAN FRANCISCO |
| JENNIFER DILLY    | SOUTH SAN FRANCISCO |
| TIMOTHY GATES     | SOUTH SAN FRANCISCO |
| RANDALL PERKINS   | SOUTH SAN FRANCISCO |
| SARAH BELL        | SOUTH SAN FRANCISCO |
| BRITNEY EVERETT   | SOUTH SAN FRANCISCO |
| SAMUEL MCCAIN     | SOUTH SAN FRANCISCO |
| VANCE JONES       | SOUTH SAN FRANCISCO |
| ALANA WALSH       | SOUTH SAN FRANCISCO |
| KEVIN FEENEY      | SOUTH SAN FRANCISCO |
| DONALD OCONNELL   | SOUTH SAN FRANCISCO |
| DOUGLAS GRANT     | SOUTH SAN FRANCISCO |
| ALEXANDER HUNOLD  | SOUTHLAKE           |
| BRUCE ERNST       | SOUTHLAKE           |
| DAVID AUSTIN      | SOUTHLAKE           |
| VALLI PATABALLA   | SOUTHLAKE           |
| DIANA LORENTZ     | SOUTHLAKE           |
| MICHAEL HARTSTEIN | TORONTO             |
| PAT FAY           | TORONTO             |
+-------------------+---------------------+
*/

-- --------------------------------
-- --------------------------------

-- 5. Display the department and there max salary of same department. 

SELECT d.department_id, d.department_name, MAX(e.salary) AS "Max Salary"
	FROM departments AS d JOIN employees AS e ON d.department_id = e.department_id
		GROUP BY d.department_id
			ORDER BY d.department_id;

-- o/p:

-- +---------------+------------------+------------+
-- | department_id | department_name  | Max Salary |
-- +---------------+------------------+------------+
-- |            10 | Administration   |    4400.00 |
-- |            20 | Marketing        |   13000.00 |
-- |            30 | Purchasing       |   11000.00 |
-- |            40 | Human Resources  |    6500.00 |
-- |            50 | Shipping         |    8200.00 |
-- |            60 | IT               |    9000.00 |
-- |            70 | Public Relations |   10000.00 |
-- |            80 | Sales            |   14000.00 |
-- |            90 | Executive        |   24000.00 |
-- |           100 | Finance          |   12000.00 |
-- |           110 | Accounting       |   12000.00 |
-- +---------------+------------------+------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- Q2) Find the second lowest salary among the employees, who are working in the same department.
-- [2 Marks]

SELECT department_id, (SELECT salary FROM employees e1 WHERE e.department_id = e1.department_id ORDER BY salary LIMIT 1, 1) AS "SecondLowest"
	FROM employees e
		WHERE department_id IS NOT NULL
			GROUP BY department_id;

-- o/p:

/*
+---------------+--------------+
| department_id | SecondLowest |
+---------------+--------------+
|            10 |         NULL |
|            20 |     13000.00 |
|            30 |      2600.00 |
|            40 |         NULL |
|            50 |      2200.00 |
|            60 |      4800.00 |
|            70 |         NULL |
|            80 |      6200.00 |
|            90 |     17000.00 |
|           100 |      7700.00 |
|           110 |     12000.00 |
+---------------+--------------+
*/		

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- Q3) Create a report have employees name, department name and job id have salary in range 10000 to 25000 and department = 90.
-- [2 Marks]

SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", d.department_name, e.job_id
	FROM employees e JOIN departments d ON e.department_id = d.department_id
			WHERE d.department_id = 90
				AND e.salary BETWEEN 10000 AND 25000;

-- o/p:

-- +---------------+-----------------+---------+
-- | Full Name     | department_name | job_id  |
-- +---------------+-----------------+---------+
-- | Steven King   | Executive       | AD_PRES |
-- | Neena Kochhar | Executive       | AD_VP   |
-- | Lex De Haan   | Executive       | AD_VP   |
-- +---------------+-----------------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- Q4)  Display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
-- [2 Marks]

SELECT j.job_title, CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", e.salary - j.min_salary AS "Salary Difference"
	FROM jobs AS j JOIN employees AS e ON j.job_id = e.job_id
		ORDER BY j.job_title;

-- o/p:

/*
+---------------------------------+-------------------+-------------------+
| job_title                       | Full Name         | Salary Difference |
+---------------------------------+-------------------+-------------------+
| Accountant                      | Daniel Faviet     |           4800.00 |
| Accountant                      | John Chen         |           4000.00 |
| Accountant                      | Ismael Sciarra    |           3500.00 |
| Accountant                      | Jose Manuel Urman |           3600.00 |
| Accountant                      | Luis Popp         |           2700.00 |
| Accounting Manager              | Shelley Higgins   |           3800.00 |
| Administration Assistant        | Jennifer Whalen   |           1400.00 |
| Administration Vice President   | Neena Kochhar     |           2000.00 |
| Administration Vice President   | Lex De Haan       |           2000.00 |
| Finance Manager                 | Nancy Greenberg   |           3800.00 |
| Human Resources Representative  | Susan Mavris      |           2500.00 |
| Marketing Manager               | Michael Hartstein |           4000.00 |
| Marketing Representative        | Pat Fay           |           2000.00 |
| President                       | Steven King       |           4000.00 |
| Programmer                      | Alexander Hunold  |           5000.00 |
| Programmer                      | Bruce Ernst       |           2000.00 |
| Programmer                      | David Austin      |            800.00 |
| Programmer                      | Valli Pataballa   |            800.00 |
| Programmer                      | Diana Lorentz     |            200.00 |
| Public Accountant               | William Gietz     |           4100.00 |
| Public Relations Representative | Hermann Baer      |           5500.00 |
| Purchasing Clerk                | Alexander Khoo    |            600.00 |
| Purchasing Clerk                | Shelli Baida      |            400.00 |
| Purchasing Clerk                | Sigal Tobias      |            300.00 |
| Purchasing Clerk                | Guy Himuro        |            100.00 |
| Purchasing Clerk                | Karen Colmenares  |              0.00 |
| Purchasing Manager              | Den Raphaely      |           3000.00 |
| Sales Manager                   | John Russell      |           4000.00 |
| Sales Manager                   | Karen Partners    |           3500.00 |
| Sales Manager                   | Alberto Errazuriz |           2000.00 |
| Sales Manager                   | Gerald Cambrault  |           1000.00 |
| Sales Manager                   | Eleni Zlotkey     |            500.00 |
| Sales Representative            | Peter Tucker      |           4000.00 |
| Sales Representative            | David Bernstein   |           3500.00 |
| Sales Representative            | Peter Hall        |           3000.00 |
| Sales Representative            | Christopher Olsen |           2000.00 |
| Sales Representative            | Nanette Cambrault |           1500.00 |
| Sales Representative            | Oliver Tuvault    |           1000.00 |
| Sales Representative            | Janette King      |           4000.00 |
| Sales Representative            | Patrick Sully     |           3500.00 |
| Sales Representative            | Allan McEwen      |           3000.00 |
| Sales Representative            | Lindsey Smith     |           2000.00 |
| Sales Representative            | Louise Doran      |           1500.00 |
| Sales Representative            | Sarath Sewall     |           1000.00 |
| Sales Representative            | Clara Vishney     |           4500.00 |
| Sales Representative            | Danielle Greene   |           3500.00 |
| Sales Representative            | Mattea Marvins    |           1200.00 |
| Sales Representative            | David Lee         |            800.00 |
| Sales Representative            | Sundar Ande       |            400.00 |
| Sales Representative            | Amit Banda        |            200.00 |
| Sales Representative            | Lisa Ozer         |           5500.00 |
| Sales Representative            | Harrison Bloom    |           4000.00 |
| Sales Representative            | Tayler Fox        |           3600.00 |
| Sales Representative            | William Smith     |           1400.00 |
| Sales Representative            | Elizabeth Bates   |           1300.00 |
| Sales Representative            | Sundita Kumar     |            100.00 |
| Sales Representative            | Ellen Abel        |           5000.00 |
| Sales Representative            | Alyssa Hutton     |           2800.00 |
| Sales Representative            | Jonathon Taylor   |           2600.00 |
| Sales Representative            | Jack Livingston   |           2400.00 |
| Sales Representative            | Kimberely Grant   |           1000.00 |
| Sales Representative            | Charles Johnson   |            200.00 |
| Shipping Clerk                  | Winston Taylor    |            700.00 |
| Shipping Clerk                  | Jean Fleaur       |            600.00 |
| Shipping Clerk                  | Martha Sullivan   |              0.00 |
| Shipping Clerk                  | Girard Geoni      |            300.00 |
| Shipping Clerk                  | Nandita Sarchand  |           1700.00 |
| Shipping Clerk                  | Alexis Bull       |           1600.00 |
| Shipping Clerk                  | Julia Dellinger   |            900.00 |
| Shipping Clerk                  | Anthony Cabrio    |            500.00 |
| Shipping Clerk                  | Kelly Chung       |           1300.00 |
| Shipping Clerk                  | Jennifer Dilly    |           1100.00 |
| Shipping Clerk                  | Timothy Gates     |            400.00 |
| Shipping Clerk                  | Randall Perkins   |              0.00 |
| Shipping Clerk                  | Sarah Bell        |           1500.00 |
| Shipping Clerk                  | Britney Everett   |           1400.00 |
| Shipping Clerk                  | Samuel McCain     |            700.00 |
| Shipping Clerk                  | Vance Jones       |            300.00 |
| Shipping Clerk                  | Alana Walsh       |            600.00 |
| Shipping Clerk                  | Kevin Feeney      |            500.00 |
| Shipping Clerk                  | Donald OConnell   |            100.00 |
| Shipping Clerk                  | Douglas Grant     |            100.00 |
| Stock Clerk                     | Julia Nayer       |           1200.00 |
| Stock Clerk                     | Irene Mikkilineni |            700.00 |
| Stock Clerk                     | James Landry      |            400.00 |
| Stock Clerk                     | Steven Markle     |            200.00 |
| Stock Clerk                     | Laura Bissot      |           1300.00 |
| Stock Clerk                     | Mozhe Atkinson    |            800.00 |
| Stock Clerk                     | James Marlow      |            500.00 |
| Stock Clerk                     | TJ Olson          |            100.00 |
| Stock Clerk                     | Jason Mallin      |           1300.00 |
| Stock Clerk                     | Michael Rogers    |            900.00 |
| Stock Clerk                     | Ki Gee            |            400.00 |
| Stock Clerk                     | Hazel Philtanker  |            200.00 |
| Stock Clerk                     | Renske Ladwig     |           1600.00 |
| Stock Clerk                     | Stephen Stiles    |           1200.00 |
| Stock Clerk                     | John Seo          |            700.00 |
| Stock Clerk                     | Joshua Patel      |            500.00 |
| Stock Clerk                     | Trenna Rajs       |           1500.00 |
| Stock Clerk                     | Curtis Davies     |           1100.00 |
| Stock Clerk                     | Randall Matos     |            600.00 |
| Stock Clerk                     | Peter Vargas      |            500.00 |
| Stock Manager                   | Matthew Weiss     |           2500.00 |
| Stock Manager                   | Adam Fripp        |           2700.00 |
| Stock Manager                   | Payam Kaufling    |           2400.00 |
| Stock Manager                   | Shanta Vollman    |           1000.00 |
| Stock Manager                   | Kevin Mourgos     |            300.00 |
+---------------------------------+-------------------+-------------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- Q5) Write a query to display department name, name (first_name, last_name), hire date, salary of the manager
--     for all managers whose experience is more than 15 years.
-- [2 Marks]

SELECT department_name, CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", e.job_id, e.hire_date, e.salary
	FROM employees e JOIN departments d ON e.department_id = d.department_id
		WHERE e.employee_id IN (SELECT manager_id FROM employees)
			AND (YEAR(NOW()) - YEAR(e.hire_date)) > 15
				ORDER BY hire_date;
-- o/p:

/*
+-----------------+-------------------+---------+------------+----------+
| department_name | Full Name         | job_id  | hire_date  | salary   |
+-----------------+-------------------+---------+------------+----------+
| Executive       | Steven King       | AD_PRES | 1987-06-17 | 24000.00 |
| Executive       | Neena Kochhar     | AD_VP   | 1989-09-21 | 17000.00 |
| IT              | Alexander Hunold  | IT_PROG | 1990-01-03 |  9000.00 |
| Executive       | Lex De Haan       | AD_VP   | 1993-01-13 | 17000.00 |
| Accounting      | Shelley Higgins   | AC_MGR  | 1994-06-07 | 12000.00 |
| Finance         | Nancy Greenberg   | FI_MGR  | 1994-08-17 | 12000.00 |
| Purchasing      | Den Raphaely      | PU_MAN  | 1994-12-07 | 11000.00 |
| Shipping        | Payam Kaufling    | ST_MAN  | 1995-05-01 |  7900.00 |
| Marketing       | Michael Hartstein | MK_MAN  | 1996-02-17 | 13000.00 |
| Shipping        | Matthew Weiss     | ST_MAN  | 1996-07-18 |  8000.00 |
| Sales           | John Russell      | SA_MAN  | 1996-10-01 | 14000.00 |
| Sales           | Karen Partners    | SA_MAN  | 1997-01-05 | 13500.00 |
| Sales           | Alberto Errazuriz | SA_MAN  | 1997-03-10 | 12000.00 |
| Shipping        | Adam Fripp        | ST_MAN  | 1997-04-10 |  8200.00 |
| Shipping        | Shanta Vollman    | ST_MAN  | 1997-10-10 |  6500.00 |
| Sales           | Gerald Cambrault  | SA_MAN  | 1999-10-15 | 11000.00 |
| Shipping        | Kevin Mourgos     | ST_MAN  | 1999-11-16 |  5800.00 |
| Sales           | Eleni Zlotkey     | SA_MAN  | 2000-01-29 | 10500.00 |
+-----------------+-------------------+---------+------------+----------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- Q6) Create a report to display the manager number and the salary of the lowest-paid employee for that manager.
--     Exclude anyone whose manager is not known.
--     Exclude any groups where the minimum salary is $6,000 or less.
--     Sort the output in descending order of salary.
-- [2Marks]

SELECT manager_id, MIN(salary)
	FROM employees
		GROUP BY manager_id
			HAVING MIN(salary) > 6000
				ORDER BY salary DESC;

-- o/p:

/*
+------------+-------------+
| manager_id | MIN(salary) |
+------------+-------------+
|       NULL |    24000.00 |
|        148 |     6100.00 |
|        149 |     6200.00 |
|        147 |     6200.00 |
|        145 |     7000.00 |
|        146 |     7000.00 |
|        102 |     9000.00 |
|        108 |     6900.00 |
|        205 |     8300.00 |
+------------+-------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------