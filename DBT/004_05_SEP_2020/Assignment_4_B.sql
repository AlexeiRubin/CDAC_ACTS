-- 1.) Write a query in SQL to display the first name, last name, department number, and department name for each employee.

SELECT e.first_name, e.last_name, d.department_id, d.department_name
	FROM employees AS e
		LEFT OUTER JOIN departments AS d
			ON e.department_id = d.department_id;

-- o/p:

/*
+-------------+-------------+---------------+------------------+
| first_name  | last_name   | department_id | department_name  |
+-------------+-------------+---------------+------------------+
| Steven      | King        |            90 | Executive        |
| Neena       | Kochhar     |            90 | Executive        |
| Lex         | De Haan     |            90 | Executive        |
| Alexander   | Hunold      |            60 | IT               |
| Bruce       | Ernst       |            60 | IT               |
| David       | Austin      |            60 | IT               |
| Valli       | Pataballa   |            60 | IT               |
| Diana       | Lorentz     |            60 | IT               |
| Nancy       | Greenberg   |           100 | Finance          |
| Daniel      | Faviet      |           100 | Finance          |
| John        | Chen        |           100 | Finance          |
| Ismael      | Sciarra     |           100 | Finance          |
| Jose Manuel | Urman       |           100 | Finance          |
| Luis        | Popp        |           100 | Finance          |
| Den         | Raphaely    |            30 | Purchasing       |
| Alexander   | Khoo        |            30 | Purchasing       |
| Shelli      | Baida       |            30 | Purchasing       |
| Sigal       | Tobias      |            30 | Purchasing       |
| Guy         | Himuro      |            30 | Purchasing       |
| Karen       | Colmenares  |            30 | Purchasing       |
| Matthew     | Weiss       |            50 | Shipping         |
| Adam        | Fripp       |            50 | Shipping         |
| Payam       | Kaufling    |            50 | Shipping         |
| Shanta      | Vollman     |            50 | Shipping         |
| Kevin       | Mourgos     |            50 | Shipping         |
| Julia       | Nayer       |            50 | Shipping         |
| Irene       | Mikkilineni |            50 | Shipping         |
| James       | Landry      |            50 | Shipping         |
| Steven      | Markle      |            50 | Shipping         |
| Laura       | Bissot      |            50 | Shipping         |
| Mozhe       | Atkinson    |            50 | Shipping         |
| James       | Marlow      |            50 | Shipping         |
| TJ          | Olson       |            50 | Shipping         |
| Jason       | Mallin      |            50 | Shipping         |
| Michael     | Rogers      |            50 | Shipping         |
| Ki          | Gee         |            50 | Shipping         |
| Hazel       | Philtanker  |            50 | Shipping         |
| Renske      | Ladwig      |            50 | Shipping         |
| Stephen     | Stiles      |            50 | Shipping         |
| John        | Seo         |            50 | Shipping         |
| Joshua      | Patel       |            50 | Shipping         |
| Trenna      | Rajs        |            50 | Shipping         |
| Curtis      | Davies      |            50 | Shipping         |
| Randall     | Matos       |            50 | Shipping         |
| Peter       | Vargas      |            50 | Shipping         |
| John        | Russell     |            80 | Sales            |
| Karen       | Partners    |            80 | Sales            |
| Alberto     | Errazuriz   |            80 | Sales            |
| Gerald      | Cambrault   |            80 | Sales            |
| Eleni       | Zlotkey     |            80 | Sales            |
| Peter       | Tucker      |            80 | Sales            |
| David       | Bernstein   |            80 | Sales            |
| Peter       | Hall        |            80 | Sales            |
| Christopher | Olsen       |            80 | Sales            |
| Nanette     | Cambrault   |            80 | Sales            |
| Oliver      | Tuvault     |            80 | Sales            |
| Janette     | King        |            80 | Sales            |
| Patrick     | Sully       |            80 | Sales            |
| Allan       | McEwen      |            80 | Sales            |
| Lindsey     | Smith       |            80 | Sales            |
| Louise      | Doran       |            80 | Sales            |
| Sarath      | Sewall      |            80 | Sales            |
| Clara       | Vishney     |            80 | Sales            |
| Danielle    | Greene      |            80 | Sales            |
| Mattea      | Marvins     |            80 | Sales            |
| David       | Lee         |            80 | Sales            |
| Sundar      | Ande        |            80 | Sales            |
| Amit        | Banda       |            80 | Sales            |
| Lisa        | Ozer        |            80 | Sales            |
| Harrison    | Bloom       |            80 | Sales            |
| Tayler      | Fox         |            80 | Sales            |
| William     | Smith       |            80 | Sales            |
| Elizabeth   | Bates       |            80 | Sales            |
| Sundita     | Kumar       |            80 | Sales            |
| Ellen       | Abel        |            80 | Sales            |
| Alyssa      | Hutton      |            80 | Sales            |
| Jonathon    | Taylor      |            80 | Sales            |
| Jack        | Livingston  |            80 | Sales            |
| Kimberely   | Grant       |          NULL | NULL             |
| Charles     | Johnson     |            80 | Sales            |
| Winston     | Taylor      |            50 | Shipping         |
| Jean        | Fleaur      |            50 | Shipping         |
| Martha      | Sullivan    |            50 | Shipping         |
| Girard      | Geoni       |            50 | Shipping         |
| Nandita     | Sarchand    |            50 | Shipping         |
| Alexis      | Bull        |            50 | Shipping         |
| Julia       | Dellinger   |            50 | Shipping         |
| Anthony     | Cabrio      |            50 | Shipping         |
| Kelly       | Chung       |            50 | Shipping         |
| Jennifer    | Dilly       |            50 | Shipping         |
| Timothy     | Gates       |            50 | Shipping         |
| Randall     | Perkins     |            50 | Shipping         |
| Sarah       | Bell        |            50 | Shipping         |
| Britney     | Everett     |            50 | Shipping         |
| Samuel      | McCain      |            50 | Shipping         |
| Vance       | Jones       |            50 | Shipping         |
| Alana       | Walsh       |            50 | Shipping         |
| Kevin       | Feeney      |            50 | Shipping         |
| Donald      | OConnell    |            50 | Shipping         |
| Douglas     | Grant       |            50 | Shipping         |
| Jennifer    | Whalen      |            10 | Administration   |
| Michael     | Hartstein   |            20 | Marketing        |
| Pat         | Fay         |            20 | Marketing        |
| Susan       | Mavris      |            40 | Human Resources  |
| Hermann     | Baer        |            70 | Public Relations |
| Shelley     | Higgins     |           110 | Accounting       |
| William     | Gietz       |           110 | Accounting       |
+-------------+-------------+---------------+------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 2.) Write a query in SQL to display the first and last name, department, city, and state province for each employee

SELECT e.first_name, e.last_name, d.department_id, l.city, l.state_province
	FROM employees AS e
		JOIN departments AS d ON e.department_id = d.department_id
			JOIN locations AS l ON l.location_id = d.location_id;

-- o/p:

/*
+-------------+-------------+---------------+---------------------+----------------+
| first_name  | last_name   | department_id | city                | state_province |
+-------------+-------------+---------------+---------------------+----------------+
| Alexander   | Hunold      |            60 | Southlake           | Texas          |
| Bruce       | Ernst       |            60 | Southlake           | Texas          |
| David       | Austin      |            60 | Southlake           | Texas          |
| Valli       | Pataballa   |            60 | Southlake           | Texas          |
| Diana       | Lorentz     |            60 | Southlake           | Texas          |
| Matthew     | Weiss       |            50 | South San Francisco | California     |
| Adam        | Fripp       |            50 | South San Francisco | California     |
| Payam       | Kaufling    |            50 | South San Francisco | California     |
| Shanta      | Vollman     |            50 | South San Francisco | California     |
| Kevin       | Mourgos     |            50 | South San Francisco | California     |
| Julia       | Nayer       |            50 | South San Francisco | California     |
| Irene       | Mikkilineni |            50 | South San Francisco | California     |
| James       | Landry      |            50 | South San Francisco | California     |
| Steven      | Markle      |            50 | South San Francisco | California     |
| Laura       | Bissot      |            50 | South San Francisco | California     |
| Mozhe       | Atkinson    |            50 | South San Francisco | California     |
| James       | Marlow      |            50 | South San Francisco | California     |
| TJ          | Olson       |            50 | South San Francisco | California     |
| Jason       | Mallin      |            50 | South San Francisco | California     |
| Michael     | Rogers      |            50 | South San Francisco | California     |
| Ki          | Gee         |            50 | South San Francisco | California     |
| Hazel       | Philtanker  |            50 | South San Francisco | California     |
| Renske      | Ladwig      |            50 | South San Francisco | California     |
| Stephen     | Stiles      |            50 | South San Francisco | California     |
| John        | Seo         |            50 | South San Francisco | California     |
| Joshua      | Patel       |            50 | South San Francisco | California     |
| Trenna      | Rajs        |            50 | South San Francisco | California     |
| Curtis      | Davies      |            50 | South San Francisco | California     |
| Randall     | Matos       |            50 | South San Francisco | California     |
| Peter       | Vargas      |            50 | South San Francisco | California     |
| Winston     | Taylor      |            50 | South San Francisco | California     |
| Jean        | Fleaur      |            50 | South San Francisco | California     |
| Martha      | Sullivan    |            50 | South San Francisco | California     |
| Girard      | Geoni       |            50 | South San Francisco | California     |
| Nandita     | Sarchand    |            50 | South San Francisco | California     |
| Alexis      | Bull        |            50 | South San Francisco | California     |
| Julia       | Dellinger   |            50 | South San Francisco | California     |
| Anthony     | Cabrio      |            50 | South San Francisco | California     |
| Kelly       | Chung       |            50 | South San Francisco | California     |
| Jennifer    | Dilly       |            50 | South San Francisco | California     |
| Timothy     | Gates       |            50 | South San Francisco | California     |
| Randall     | Perkins     |            50 | South San Francisco | California     |
| Sarah       | Bell        |            50 | South San Francisco | California     |
| Britney     | Everett     |            50 | South San Francisco | California     |
| Samuel      | McCain      |            50 | South San Francisco | California     |
| Vance       | Jones       |            50 | South San Francisco | California     |
| Alana       | Walsh       |            50 | South San Francisco | California     |
| Kevin       | Feeney      |            50 | South San Francisco | California     |
| Donald      | OConnell    |            50 | South San Francisco | California     |
| Douglas     | Grant       |            50 | South San Francisco | California     |
| Jennifer    | Whalen      |            10 | Seattle             | Washington     |
| Den         | Raphaely    |            30 | Seattle             | Washington     |
| Alexander   | Khoo        |            30 | Seattle             | Washington     |
| Shelli      | Baida       |            30 | Seattle             | Washington     |
| Sigal       | Tobias      |            30 | Seattle             | Washington     |
| Guy         | Himuro      |            30 | Seattle             | Washington     |
| Karen       | Colmenares  |            30 | Seattle             | Washington     |
| Steven      | King        |            90 | Seattle             | Washington     |
| Neena       | Kochhar     |            90 | Seattle             | Washington     |
| Lex         | De Haan     |            90 | Seattle             | Washington     |
| Nancy       | Greenberg   |           100 | Seattle             | Washington     |
| Daniel      | Faviet      |           100 | Seattle             | Washington     |
| John        | Chen        |           100 | Seattle             | Washington     |
| Ismael      | Sciarra     |           100 | Seattle             | Washington     |
| Jose Manuel | Urman       |           100 | Seattle             | Washington     |
| Luis        | Popp        |           100 | Seattle             | Washington     |
| Shelley     | Higgins     |           110 | Seattle             | Washington     |
| William     | Gietz       |           110 | Seattle             | Washington     |
| Michael     | Hartstein   |            20 | Toronto             | Ontario        |
| Pat         | Fay         |            20 | Toronto             | Ontario        |
| Susan       | Mavris      |            40 | London              | NULL           |
| John        | Russell     |            80 | Oxford              | Oxford         |
| Karen       | Partners    |            80 | Oxford              | Oxford         |
| Alberto     | Errazuriz   |            80 | Oxford              | Oxford         |
| Gerald      | Cambrault   |            80 | Oxford              | Oxford         |
| Eleni       | Zlotkey     |            80 | Oxford              | Oxford         |
| Peter       | Tucker      |            80 | Oxford              | Oxford         |
| David       | Bernstein   |            80 | Oxford              | Oxford         |
| Peter       | Hall        |            80 | Oxford              | Oxford         |
| Christopher | Olsen       |            80 | Oxford              | Oxford         |
| Nanette     | Cambrault   |            80 | Oxford              | Oxford         |
| Oliver      | Tuvault     |            80 | Oxford              | Oxford         |
| Janette     | King        |            80 | Oxford              | Oxford         |
| Patrick     | Sully       |            80 | Oxford              | Oxford         |
| Allan       | McEwen      |            80 | Oxford              | Oxford         |
| Lindsey     | Smith       |            80 | Oxford              | Oxford         |
| Louise      | Doran       |            80 | Oxford              | Oxford         |
| Sarath      | Sewall      |            80 | Oxford              | Oxford         |
| Clara       | Vishney     |            80 | Oxford              | Oxford         |
| Danielle    | Greene      |            80 | Oxford              | Oxford         |
| Mattea      | Marvins     |            80 | Oxford              | Oxford         |
| David       | Lee         |            80 | Oxford              | Oxford         |
| Sundar      | Ande        |            80 | Oxford              | Oxford         |
| Amit        | Banda       |            80 | Oxford              | Oxford         |
| Lisa        | Ozer        |            80 | Oxford              | Oxford         |
| Harrison    | Bloom       |            80 | Oxford              | Oxford         |
| Tayler      | Fox         |            80 | Oxford              | Oxford         |
| William     | Smith       |            80 | Oxford              | Oxford         |
| Elizabeth   | Bates       |            80 | Oxford              | Oxford         |
| Sundita     | Kumar       |            80 | Oxford              | Oxford         |
| Ellen       | Abel        |            80 | Oxford              | Oxford         |
| Alyssa      | Hutton      |            80 | Oxford              | Oxford         |
| Jonathon    | Taylor      |            80 | Oxford              | Oxford         |
| Jack        | Livingston  |            80 | Oxford              | Oxford         |
| Charles     | Johnson     |            80 | Oxford              | Oxford         |
| Hermann     | Baer        |            70 | Munich              | Bavaria        |
+-------------+-------------+---------------+---------------------+----------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3.) Write a query in SQL to display the first name, last name, salary, and job title for all employees.

SELECT e.first_name, e.last_name, e.salary, j.job_title
	FROM employees AS e
		JOIN jobs AS j
			ON e.job_id = j.job_id;

-- o/p:

/*
+-------------+-------------+----------+---------------------------------+
| first_name  | last_name   | salary   | job_title                       |
+-------------+-------------+----------+---------------------------------+
| William     | Gietz       |  8300.00 | Public Accountant               |
| Shelley     | Higgins     | 12000.00 | Accounting Manager              |
| Jennifer    | Whalen      |  4400.00 | Administration Assistant        |
| Steven      | King        | 24000.00 | President                       |
| Neena       | Kochhar     | 17000.00 | Administration Vice President   |
| Lex         | De Haan     | 17000.00 | Administration Vice President   |
| Daniel      | Faviet      |  9000.00 | Accountant                      |
| John        | Chen        |  8200.00 | Accountant                      |
| Ismael      | Sciarra     |  7700.00 | Accountant                      |
| Jose Manuel | Urman       |  7800.00 | Accountant                      |
| Luis        | Popp        |  6900.00 | Accountant                      |
| Nancy       | Greenberg   | 12000.00 | Finance Manager                 |
| Susan       | Mavris      |  6500.00 | Human Resources Representative  |
| Alexander   | Hunold      |  9000.00 | Programmer                      |
| Bruce       | Ernst       |  6000.00 | Programmer                      |
| David       | Austin      |  4800.00 | Programmer                      |
| Valli       | Pataballa   |  4800.00 | Programmer                      |
| Diana       | Lorentz     |  4200.00 | Programmer                      |
| Michael     | Hartstein   | 13000.00 | Marketing Manager               |
| Pat         | Fay         |  6000.00 | Marketing Representative        |
| Hermann     | Baer        | 10000.00 | Public Relations Representative |
| Alexander   | Khoo        |  3100.00 | Purchasing Clerk                |
| Shelli      | Baida       |  2900.00 | Purchasing Clerk                |
| Sigal       | Tobias      |  2800.00 | Purchasing Clerk                |
| Guy         | Himuro      |  2600.00 | Purchasing Clerk                |
| Karen       | Colmenares  |  2500.00 | Purchasing Clerk                |
| Den         | Raphaely    | 11000.00 | Purchasing Manager              |
| John        | Russell     | 14000.00 | Sales Manager                   |
| Karen       | Partners    | 13500.00 | Sales Manager                   |
| Alberto     | Errazuriz   | 12000.00 | Sales Manager                   |
| Gerald      | Cambrault   | 11000.00 | Sales Manager                   |
| Eleni       | Zlotkey     | 10500.00 | Sales Manager                   |
| Peter       | Tucker      | 10000.00 | Sales Representative            |
| David       | Bernstein   |  9500.00 | Sales Representative            |
| Peter       | Hall        |  9000.00 | Sales Representative            |
| Christopher | Olsen       |  8000.00 | Sales Representative            |
| Nanette     | Cambrault   |  7500.00 | Sales Representative            |
| Oliver      | Tuvault     |  7000.00 | Sales Representative            |
| Janette     | King        | 10000.00 | Sales Representative            |
| Patrick     | Sully       |  9500.00 | Sales Representative            |
| Allan       | McEwen      |  9000.00 | Sales Representative            |
| Lindsey     | Smith       |  8000.00 | Sales Representative            |
| Louise      | Doran       |  7500.00 | Sales Representative            |
| Sarath      | Sewall      |  7000.00 | Sales Representative            |
| Clara       | Vishney     | 10500.00 | Sales Representative            |
| Danielle    | Greene      |  9500.00 | Sales Representative            |
| Mattea      | Marvins     |  7200.00 | Sales Representative            |
| David       | Lee         |  6800.00 | Sales Representative            |
| Sundar      | Ande        |  6400.00 | Sales Representative            |
| Amit        | Banda       |  6200.00 | Sales Representative            |
| Lisa        | Ozer        | 11500.00 | Sales Representative            |
| Harrison    | Bloom       | 10000.00 | Sales Representative            |
| Tayler      | Fox         |  9600.00 | Sales Representative            |
| William     | Smith       |  7400.00 | Sales Representative            |
| Elizabeth   | Bates       |  7300.00 | Sales Representative            |
| Sundita     | Kumar       |  6100.00 | Sales Representative            |
| Ellen       | Abel        | 11000.00 | Sales Representative            |
| Alyssa      | Hutton      |  8800.00 | Sales Representative            |
| Jonathon    | Taylor      |  8600.00 | Sales Representative            |
| Jack        | Livingston  |  8400.00 | Sales Representative            |
| Kimberely   | Grant       |  7000.00 | Sales Representative            |
| Charles     | Johnson     |  6200.00 | Sales Representative            |
| Winston     | Taylor      |  3200.00 | Shipping Clerk                  |
| Jean        | Fleaur      |  3100.00 | Shipping Clerk                  |
| Martha      | Sullivan    |  2500.00 | Shipping Clerk                  |
| Girard      | Geoni       |  2800.00 | Shipping Clerk                  |
| Nandita     | Sarchand    |  4200.00 | Shipping Clerk                  |
| Alexis      | Bull        |  4100.00 | Shipping Clerk                  |
| Julia       | Dellinger   |  3400.00 | Shipping Clerk                  |
| Anthony     | Cabrio      |  3000.00 | Shipping Clerk                  |
| Kelly       | Chung       |  3800.00 | Shipping Clerk                  |
| Jennifer    | Dilly       |  3600.00 | Shipping Clerk                  |
| Timothy     | Gates       |  2900.00 | Shipping Clerk                  |
| Randall     | Perkins     |  2500.00 | Shipping Clerk                  |
| Sarah       | Bell        |  4000.00 | Shipping Clerk                  |
| Britney     | Everett     |  3900.00 | Shipping Clerk                  |
| Samuel      | McCain      |  3200.00 | Shipping Clerk                  |
| Vance       | Jones       |  2800.00 | Shipping Clerk                  |
| Alana       | Walsh       |  3100.00 | Shipping Clerk                  |
| Kevin       | Feeney      |  3000.00 | Shipping Clerk                  |
| Donald      | OConnell    |  2600.00 | Shipping Clerk                  |
| Douglas     | Grant       |  2600.00 | Shipping Clerk                  |
| Julia       | Nayer       |  3200.00 | Stock Clerk                     |
| Irene       | Mikkilineni |  2700.00 | Stock Clerk                     |
| James       | Landry      |  2400.00 | Stock Clerk                     |
| Steven      | Markle      |  2200.00 | Stock Clerk                     |
| Laura       | Bissot      |  3300.00 | Stock Clerk                     |
| Mozhe       | Atkinson    |  2800.00 | Stock Clerk                     |
| James       | Marlow      |  2500.00 | Stock Clerk                     |
| TJ          | Olson       |  2100.00 | Stock Clerk                     |
| Jason       | Mallin      |  3300.00 | Stock Clerk                     |
| Michael     | Rogers      |  2900.00 | Stock Clerk                     |
| Ki          | Gee         |  2400.00 | Stock Clerk                     |
| Hazel       | Philtanker  |  2200.00 | Stock Clerk                     |
| Renske      | Ladwig      |  3600.00 | Stock Clerk                     |
| Stephen     | Stiles      |  3200.00 | Stock Clerk                     |
| John        | Seo         |  2700.00 | Stock Clerk                     |
| Joshua      | Patel       |  2500.00 | Stock Clerk                     |
| Trenna      | Rajs        |  3500.00 | Stock Clerk                     |
| Curtis      | Davies      |  3100.00 | Stock Clerk                     |
| Randall     | Matos       |  2600.00 | Stock Clerk                     |
| Peter       | Vargas      |  2500.00 | Stock Clerk                     |
| Matthew     | Weiss       |  8000.00 | Stock Manager                   |
| Adam        | Fripp       |  8200.00 | Stock Manager                   |
| Payam       | Kaufling    |  7900.00 | Stock Manager                   |
| Shanta      | Vollman     |  6500.00 | Stock Manager                   |
| Kevin       | Mourgos     |  5800.00 | Stock Manager                   |
+-------------+-------------+----------+---------------------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4.) Write a query in SQL to display the first name, last name, department number and department name, for all employees for departments 80 or 40.

SELECT e.first_name, e.last_name, d.department_id, d.department_name
	FROM employees AS e JOIN departments AS d
		ON e.department_id = d.department_id
			WHERE d.department_id IN (40, 80);

-- o/p:

/*
+-------------+------------+---------------+-----------------+
| Susan       | Mavris     |            40 | Human Resources |
| John        | Russell    |            80 | Sales           |
| Karen       | Partners   |            80 | Sales           |
| Alberto     | Errazuriz  |            80 | Sales           |
| Gerald      | Cambrault  |            80 | Sales           |
| Eleni       | Zlotkey    |            80 | Sales           |
| Peter       | Tucker     |            80 | Sales           |
| David       | Bernstein  |            80 | Sales           |
| Peter       | Hall       |            80 | Sales           |
| Christopher | Olsen      |            80 | Sales           |
| Nanette     | Cambrault  |            80 | Sales           |
| Oliver      | Tuvault    |            80 | Sales           |
| Janette     | King       |            80 | Sales           |
| Patrick     | Sully      |            80 | Sales           |
| Allan       | McEwen     |            80 | Sales           |
| Lindsey     | Smith      |            80 | Sales           |
| Louise      | Doran      |            80 | Sales           |
| Sarath      | Sewall     |            80 | Sales           |
| Clara       | Vishney    |            80 | Sales           |
| Danielle    | Greene     |            80 | Sales           |
| Mattea      | Marvins    |            80 | Sales           |
| David       | Lee        |            80 | Sales           |
| Sundar      | Ande       |            80 | Sales           |
| Amit        | Banda      |            80 | Sales           |
| Lisa        | Ozer       |            80 | Sales           |
| Harrison    | Bloom      |            80 | Sales           |
| Tayler      | Fox        |            80 | Sales           |
| William     | Smith      |            80 | Sales           |
| Elizabeth   | Bates      |            80 | Sales           |
| Sundita     | Kumar      |            80 | Sales           |
| Ellen       | Abel       |            80 | Sales           |
| Alyssa      | Hutton     |            80 | Sales           |
| Jonathon    | Taylor     |            80 | Sales           |
| Jack        | Livingston |            80 | Sales           |
| Charles     | Johnson    |            80 | Sales           |
+-------------+------------+---------------+-----------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5.) Write a query in SQL to display those employees who contain a letter z to their first name
--     and also display their last name, department, city, and state province.

SELECT e.first_name, e.last_name, d.department_id, l.city, l.state_province
	FROM employees AS e
		JOIN departments AS d ON e.department_id = d.department_id
			JOIN locations AS l ON l.location_id = d.location_id
				WHERE e.first_name LIKE '%z%';


-- o/p:

-- +------------+------------+---------------+---------------------+----------------+
-- | first_name | last_name  | department_id | city                | state_province |
-- +------------+------------+---------------+---------------------+----------------+
-- | Mozhe      | Atkinson   |            50 | South San Francisco | California     |
-- | Hazel      | Philtanker |            50 | South San Francisco | California     |
-- | Elizabeth  | Bates      |            80 | Oxford              | Oxford         |
-- +------------+------------+---------------+---------------------+----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6.) Write a query in SQL to display all departments including those where does not have any employee. 

SELECT d.*
	FROM departments AS d
		LEFT OUTER JOIN employees AS e
			ON d.department_id = e.department_id
				GROUP BY d.department_id;

-- o/p:

/*
+---------------+----------------------+------------+-------------+
| department_id | department_name      | manager_id | location_id |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |       NULL |        1700 |
|           130 | Corporate Tax        |       NULL |        1700 |
|           140 | Control And Credit   |       NULL |        1700 |
|           150 | Shareholder Services |       NULL |        1700 |
|           160 | Benefits             |       NULL |        1700 |
|           170 | Manufacturing        |       NULL |        1700 |
|           180 | Construction         |       NULL |        1700 |
|           190 | Contracting          |       NULL |        1700 |
|           200 | Operations           |       NULL |        1700 |
|           210 | IT Support           |       NULL |        1700 |
|           220 | NOC                  |       NULL |        1700 |
|           230 | IT Helpdesk          |       NULL |        1700 |
|           240 | Government Sales     |       NULL |        1700 |
|           250 | Retail Sales         |       NULL |        1700 |
|           260 | Recruiting           |       NULL |        1700 |
|           270 | Payroll              |       NULL |        1700 |
+---------------+----------------------+------------+-------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 7.) Write a query in SQL to display the first and last name and salary for those employees who earn less than the employee whose number is 182.

SELECT e.first_name, e.last_name, e.salary
	FROM employees AS e
		JOIN (SELECT salary FROM employees WHERE employee_id = 182) AS s
			ON e.salary < s.salary;

-- o/p:

-- +------------+------------+---------+
-- | first_name | last_name  | salary  |
-- +------------+------------+---------+
-- | James      | Landry     | 2400.00 |
-- | Steven     | Markle     | 2200.00 |
-- | TJ         | Olson      | 2100.00 |
-- | Ki         | Gee        | 2400.00 |
-- | Hazel      | Philtanker | 2200.00 |
-- +------------+------------+---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 8.) Write a query in SQL to display the first name of all employees including the first name of their manager. 

SELECT e.first_name AS "EmpFirstName", m.first_name AS "MgrFirstName"
	FROM employees AS e
		JOIN employees AS m
			ON e.manager_id = m.employee_id;

-- o/p:

/*
+--------------+--------------+
| EmpFirstName | MgrFirstName |
+--------------+--------------+
| Neena        | Steven       |
| Lex          | Steven       |
| Alexander    | Lex          |
| Bruce        | Alexander    |
| David        | Alexander    |
| Valli        | Alexander    |
| Diana        | Alexander    |
| Nancy        | Neena        |
| Daniel       | Nancy        |
| John         | Nancy        |
| Ismael       | Nancy        |
| Jose Manuel  | Nancy        |
| Luis         | Nancy        |
| Den          | Steven       |
| Alexander    | Den          |
| Shelli       | Den          |
| Sigal        | Den          |
| Guy          | Den          |
| Karen        | Den          |
| Matthew      | Steven       |
| Adam         | Steven       |
| Payam        | Steven       |
| Shanta       | Steven       |
| Kevin        | Steven       |
| Julia        | Matthew      |
| Irene        | Matthew      |
| James        | Matthew      |
| Steven       | Matthew      |
| Laura        | Adam         |
| Mozhe        | Adam         |
| James        | Adam         |
| TJ           | Adam         |
| Jason        | Payam        |
| Michael      | Payam        |
| Ki           | Payam        |
| Hazel        | Payam        |
| Renske       | Shanta       |
| Stephen      | Shanta       |
| John         | Shanta       |
| Joshua       | Shanta       |
| Trenna       | Kevin        |
| Curtis       | Kevin        |
| Randall      | Kevin        |
| Peter        | Kevin        |
| John         | Steven       |
| Karen        | Steven       |
| Alberto      | Steven       |
| Gerald       | Steven       |
| Eleni        | Steven       |
| Peter        | John         |
| David        | John         |
| Peter        | John         |
| Christopher  | John         |
| Nanette      | John         |
| Oliver       | John         |
| Janette      | Karen        |
| Patrick      | Karen        |
| Allan        | Karen        |
| Lindsey      | Karen        |
| Louise       | Karen        |
| Sarath       | Karen        |
| Clara        | Alberto      |
| Danielle     | Alberto      |
| Mattea       | Alberto      |
| David        | Alberto      |
| Sundar       | Alberto      |
| Amit         | Alberto      |
| Lisa         | Gerald       |
| Harrison     | Gerald       |
| Tayler       | Gerald       |
| William      | Gerald       |
| Elizabeth    | Gerald       |
| Sundita      | Gerald       |
| Ellen        | Eleni        |
| Alyssa       | Eleni        |
| Jonathon     | Eleni        |
| Jack         | Eleni        |
| Kimberely    | Eleni        |
| Charles      | Eleni        |
| Winston      | Matthew      |
| Jean         | Matthew      |
| Martha       | Matthew      |
| Girard       | Matthew      |
| Nandita      | Adam         |
| Alexis       | Adam         |
| Julia        | Adam         |
| Anthony      | Adam         |
| Kelly        | Payam        |
| Jennifer     | Payam        |
| Timothy      | Payam        |
| Randall      | Payam        |
| Sarah        | Shanta       |
| Britney      | Shanta       |
| Samuel       | Shanta       |
| Vance        | Shanta       |
| Alana        | Kevin        |
| Kevin        | Kevin        |
| Donald       | Kevin        |
| Douglas      | Kevin        |
| Jennifer     | Neena        |
| Michael      | Steven       |
| Pat          | Michael      |
| Susan        | Neena        |
| Hermann      | Neena        |
| Shelley      | Neena        |
| William      | Shelley      |
+--------------+--------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 9.) Write a query in SQL to display the department name, city, and state province for each department. 

SELECT d.department_name, l.city, l.state_province
	FROM departments AS d
		JOIN locations AS l
			ON d.location_id = l.location_id;
			
-- o/p:

/*
+----------------------+---------------------+----------------+
| department_name      | city                | state_province |
+----------------------+---------------------+----------------+
| Administration       | Seattle             | Washington     |
| Marketing            | Toronto             | Ontario        |
| Purchasing           | Seattle             | Washington     |
| Human Resources      | London              | NULL           |
| Shipping             | South San Francisco | California     |
| IT                   | Southlake           | Texas          |
| Public Relations     | Munich              | Bavaria        |
| Sales                | Oxford              | Oxford         |
| Executive            | Seattle             | Washington     |
| Finance              | Seattle             | Washington     |
| Accounting           | Seattle             | Washington     |
| Treasury             | Seattle             | Washington     |
| Corporate Tax        | Seattle             | Washington     |
| Control And Credit   | Seattle             | Washington     |
| Shareholder Services | Seattle             | Washington     |
| Benefits             | Seattle             | Washington     |
| Manufacturing        | Seattle             | Washington     |
| Construction         | Seattle             | Washington     |
| Contracting          | Seattle             | Washington     |
| Operations           | Seattle             | Washington     |
| IT Support           | Seattle             | Washington     |
| NOC                  | Seattle             | Washington     |
| IT Helpdesk          | Seattle             | Washington     |
| Government Sales     | Seattle             | Washington     |
| Retail Sales         | Seattle             | Washington     |
| Recruiting           | Seattle             | Washington     |
| Payroll              | Seattle             | Washington     |
+----------------------+---------------------+----------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 10.) Write a query in SQL to display the first name, last name, department number and name, for all employees who have or have not any department. 

SELECT e.first_name, e.last_name, d.department_id, d.department_name
	FROM employees AS e
		LEFT OUTER JOIN departments AS d
			ON e.department_id = d.department_id;

-- o/p:

/*
+-------------+-------------+---------------+------------------+
| first_name  | last_name   | department_id | department_name  |
+-------------+-------------+---------------+------------------+
| Steven      | King        |            90 | Executive        |
| Neena       | Kochhar     |            90 | Executive        |
| Lex         | De Haan     |            90 | Executive        |
| Alexander   | Hunold      |            60 | IT               |
| Bruce       | Ernst       |            60 | IT               |
| David       | Austin      |            60 | IT               |
| Valli       | Pataballa   |            60 | IT               |
| Diana       | Lorentz     |            60 | IT               |
| Nancy       | Greenberg   |           100 | Finance          |
| Daniel      | Faviet      |           100 | Finance          |
| John        | Chen        |           100 | Finance          |
| Ismael      | Sciarra     |           100 | Finance          |
| Jose Manuel | Urman       |           100 | Finance          |
| Luis        | Popp        |           100 | Finance          |
| Den         | Raphaely    |            30 | Purchasing       |
| Alexander   | Khoo        |            30 | Purchasing       |
| Shelli      | Baida       |            30 | Purchasing       |
| Sigal       | Tobias      |            30 | Purchasing       |
| Guy         | Himuro      |            30 | Purchasing       |
| Karen       | Colmenares  |            30 | Purchasing       |
| Matthew     | Weiss       |            50 | Shipping         |
| Adam        | Fripp       |            50 | Shipping         |
| Payam       | Kaufling    |            50 | Shipping         |
| Shanta      | Vollman     |            50 | Shipping         |
| Kevin       | Mourgos     |            50 | Shipping         |
| Julia       | Nayer       |            50 | Shipping         |
| Irene       | Mikkilineni |            50 | Shipping         |
| James       | Landry      |            50 | Shipping         |
| Steven      | Markle      |            50 | Shipping         |
| Laura       | Bissot      |            50 | Shipping         |
| Mozhe       | Atkinson    |            50 | Shipping         |
| James       | Marlow      |            50 | Shipping         |
| TJ          | Olson       |            50 | Shipping         |
| Jason       | Mallin      |            50 | Shipping         |
| Michael     | Rogers      |            50 | Shipping         |
| Ki          | Gee         |            50 | Shipping         |
| Hazel       | Philtanker  |            50 | Shipping         |
| Renske      | Ladwig      |            50 | Shipping         |
| Stephen     | Stiles      |            50 | Shipping         |
| John        | Seo         |            50 | Shipping         |
| Joshua      | Patel       |            50 | Shipping         |
| Trenna      | Rajs        |            50 | Shipping         |
| Curtis      | Davies      |            50 | Shipping         |
| Randall     | Matos       |            50 | Shipping         |
| Peter       | Vargas      |            50 | Shipping         |
| John        | Russell     |            80 | Sales            |
| Karen       | Partners    |            80 | Sales            |
| Alberto     | Errazuriz   |            80 | Sales            |
| Gerald      | Cambrault   |            80 | Sales            |
| Eleni       | Zlotkey     |            80 | Sales            |
| Peter       | Tucker      |            80 | Sales            |
| David       | Bernstein   |            80 | Sales            |
| Peter       | Hall        |            80 | Sales            |
| Christopher | Olsen       |            80 | Sales            |
| Nanette     | Cambrault   |            80 | Sales            |
| Oliver      | Tuvault     |            80 | Sales            |
| Janette     | King        |            80 | Sales            |
| Patrick     | Sully       |            80 | Sales            |
| Allan       | McEwen      |            80 | Sales            |
| Lindsey     | Smith       |            80 | Sales            |
| Louise      | Doran       |            80 | Sales            |
| Sarath      | Sewall      |            80 | Sales            |
| Clara       | Vishney     |            80 | Sales            |
| Danielle    | Greene      |            80 | Sales            |
| Mattea      | Marvins     |            80 | Sales            |
| David       | Lee         |            80 | Sales            |
| Sundar      | Ande        |            80 | Sales            |
| Amit        | Banda       |            80 | Sales            |
| Lisa        | Ozer        |            80 | Sales            |
| Harrison    | Bloom       |            80 | Sales            |
| Tayler      | Fox         |            80 | Sales            |
| William     | Smith       |            80 | Sales            |
| Elizabeth   | Bates       |            80 | Sales            |
| Sundita     | Kumar       |            80 | Sales            |
| Ellen       | Abel        |            80 | Sales            |
| Alyssa      | Hutton      |            80 | Sales            |
| Jonathon    | Taylor      |            80 | Sales            |
| Jack        | Livingston  |            80 | Sales            |
| Kimberely   | Grant       |          NULL | NULL             |
| Charles     | Johnson     |            80 | Sales            |
| Winston     | Taylor      |            50 | Shipping         |
| Jean        | Fleaur      |            50 | Shipping         |
| Martha      | Sullivan    |            50 | Shipping         |
| Girard      | Geoni       |            50 | Shipping         |
| Nandita     | Sarchand    |            50 | Shipping         |
| Alexis      | Bull        |            50 | Shipping         |
| Julia       | Dellinger   |            50 | Shipping         |
| Anthony     | Cabrio      |            50 | Shipping         |
| Kelly       | Chung       |            50 | Shipping         |
| Jennifer    | Dilly       |            50 | Shipping         |
| Timothy     | Gates       |            50 | Shipping         |
| Randall     | Perkins     |            50 | Shipping         |
| Sarah       | Bell        |            50 | Shipping         |
| Britney     | Everett     |            50 | Shipping         |
| Samuel      | McCain      |            50 | Shipping         |
| Vance       | Jones       |            50 | Shipping         |
| Alana       | Walsh       |            50 | Shipping         |
| Kevin       | Feeney      |            50 | Shipping         |
| Donald      | OConnell    |            50 | Shipping         |
| Douglas     | Grant       |            50 | Shipping         |
| Jennifer    | Whalen      |            10 | Administration   |
| Michael     | Hartstein   |            20 | Marketing        |
| Pat         | Fay         |            20 | Marketing        |
| Susan       | Mavris      |            40 | Human Resources  |
| Hermann     | Baer        |            70 | Public Relations |
| Shelley     | Higgins     |           110 | Accounting       |
| William     | Gietz       |           110 | Accounting       |
+-------------+-------------+---------------+------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 11.) Write a query in SQL to display the first name of all employees and the first name of their manager
--      including those who does not working under any manager.

SELECT e.first_name AS "EmpFirstName", m.first_name AS "MgrFirstName"
	FROM employees AS e
		LEFT OUTER JOIN employees AS m
			ON e.manager_id = m.employee_id;

-- o/p:

/*
+--------------+--------------+
| EmpFirstName | MgrFirstName |
+--------------+--------------+
| Steven       | NULL         |
| Neena        | Steven       |
| Lex          | Steven       |
| Alexander    | Lex          |
| Bruce        | Alexander    |
| David        | Alexander    |
| Valli        | Alexander    |
| Diana        | Alexander    |
| Nancy        | Neena        |
| Daniel       | Nancy        |
| John         | Nancy        |
| Ismael       | Nancy        |
| Jose Manuel  | Nancy        |
| Luis         | Nancy        |
| Den          | Steven       |
| Alexander    | Den          |
| Shelli       | Den          |
| Sigal        | Den          |
| Guy          | Den          |
| Karen        | Den          |
| Matthew      | Steven       |
| Adam         | Steven       |
| Payam        | Steven       |
| Shanta       | Steven       |
| Kevin        | Steven       |
| Julia        | Matthew      |
| Irene        | Matthew      |
| James        | Matthew      |
| Steven       | Matthew      |
| Laura        | Adam         |
| Mozhe        | Adam         |
| James        | Adam         |
| TJ           | Adam         |
| Jason        | Payam        |
| Michael      | Payam        |
| Ki           | Payam        |
| Hazel        | Payam        |
| Renske       | Shanta       |
| Stephen      | Shanta       |
| John         | Shanta       |
| Joshua       | Shanta       |
| Trenna       | Kevin        |
| Curtis       | Kevin        |
| Randall      | Kevin        |
| Peter        | Kevin        |
| John         | Steven       |
| Karen        | Steven       |
| Alberto      | Steven       |
| Gerald       | Steven       |
| Eleni        | Steven       |
| Peter        | John         |
| David        | John         |
| Peter        | John         |
| Christopher  | John         |
| Nanette      | John         |
| Oliver       | John         |
| Janette      | Karen        |
| Patrick      | Karen        |
| Allan        | Karen        |
| Lindsey      | Karen        |
| Louise       | Karen        |
| Sarath       | Karen        |
| Clara        | Alberto      |
| Danielle     | Alberto      |
| Mattea       | Alberto      |
| David        | Alberto      |
| Sundar       | Alberto      |
| Amit         | Alberto      |
| Lisa         | Gerald       |
| Harrison     | Gerald       |
| Tayler       | Gerald       |
| William      | Gerald       |
| Elizabeth    | Gerald       |
| Sundita      | Gerald       |
| Ellen        | Eleni        |
| Alyssa       | Eleni        |
| Jonathon     | Eleni        |
| Jack         | Eleni        |
| Kimberely    | Eleni        |
| Charles      | Eleni        |
| Winston      | Matthew      |
| Jean         | Matthew      |
| Martha       | Matthew      |
| Girard       | Matthew      |
| Nandita      | Adam         |
| Alexis       | Adam         |
| Julia        | Adam         |
| Anthony      | Adam         |
| Kelly        | Payam        |
| Jennifer     | Payam        |
| Timothy      | Payam        |
| Randall      | Payam        |
| Sarah        | Shanta       |
| Britney      | Shanta       |
| Samuel       | Shanta       |
| Vance        | Shanta       |
| Alana        | Kevin        |
| Kevin        | Kevin        |
| Donald       | Kevin        |
| Douglas      | Kevin        |
| Jennifer     | Neena        |
| Michael      | Steven       |
| Pat          | Michael      |
| Susan        | Neena        |
| Hermann      | Neena        |
| Shelley      | Neena        |
| William      | Shelley      |
+--------------+--------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 12.) Write a query in SQL to display the first name, last name, and department number
--      for those employees who works in the same department as the employee who holds the last name as Taylor.

SELECT e.first_name, e.last_name, e.department_id
	FROM employees e JOIN (SELECT * FROM employees WHERE last_name = 'Taylor') AS t
		ON e.department_id = t.department_id;

-- o/p:

/*
+-------------+-------------+---------------+
| first_name  | last_name   | department_id |
+-------------+-------------+---------------+
| John        | Russell     |            80 |
| Karen       | Partners    |            80 |
| Alberto     | Errazuriz   |            80 |
| Gerald      | Cambrault   |            80 |
| Eleni       | Zlotkey     |            80 |
| Peter       | Tucker      |            80 |
| David       | Bernstein   |            80 |
| Peter       | Hall        |            80 |
| Christopher | Olsen       |            80 |
| Nanette     | Cambrault   |            80 |
| Oliver      | Tuvault     |            80 |
| Janette     | King        |            80 |
| Patrick     | Sully       |            80 |
| Allan       | McEwen      |            80 |
| Lindsey     | Smith       |            80 |
| Louise      | Doran       |            80 |
| Sarath      | Sewall      |            80 |
| Clara       | Vishney     |            80 |
| Danielle    | Greene      |            80 |
| Mattea      | Marvins     |            80 |
| David       | Lee         |            80 |
| Sundar      | Ande        |            80 |
| Amit        | Banda       |            80 |
| Lisa        | Ozer        |            80 |
| Harrison    | Bloom       |            80 |
| Tayler      | Fox         |            80 |
| William     | Smith       |            80 |
| Elizabeth   | Bates       |            80 |
| Sundita     | Kumar       |            80 |
| Ellen       | Abel        |            80 |
| Alyssa      | Hutton      |            80 |
| Jonathon    | Taylor      |            80 |
| Jack        | Livingston  |            80 |
| Charles     | Johnson     |            80 |
| Matthew     | Weiss       |            50 |
| Adam        | Fripp       |            50 |
| Payam       | Kaufling    |            50 |
| Shanta      | Vollman     |            50 |
| Kevin       | Mourgos     |            50 |
| Julia       | Nayer       |            50 |
| Irene       | Mikkilineni |            50 |
| James       | Landry      |            50 |
| Steven      | Markle      |            50 |
| Laura       | Bissot      |            50 |
| Mozhe       | Atkinson    |            50 |
| James       | Marlow      |            50 |
| TJ          | Olson       |            50 |
| Jason       | Mallin      |            50 |
| Michael     | Rogers      |            50 |
| Ki          | Gee         |            50 |
| Hazel       | Philtanker  |            50 |
| Renske      | Ladwig      |            50 |
| Stephen     | Stiles      |            50 |
| John        | Seo         |            50 |
| Joshua      | Patel       |            50 |
| Trenna      | Rajs        |            50 |
| Curtis      | Davies      |            50 |
| Randall     | Matos       |            50 |
| Peter       | Vargas      |            50 |
| Winston     | Taylor      |            50 |
| Jean        | Fleaur      |            50 |
| Martha      | Sullivan    |            50 |
| Girard      | Geoni       |            50 |
| Nandita     | Sarchand    |            50 |
| Alexis      | Bull        |            50 |
| Julia       | Dellinger   |            50 |
| Anthony     | Cabrio      |            50 |
| Kelly       | Chung       |            50 |
| Jennifer    | Dilly       |            50 |
| Timothy     | Gates       |            50 |
| Randall     | Perkins     |            50 |
| Sarah       | Bell        |            50 |
| Britney     | Everett     |            50 |
| Samuel      | McCain      |            50 |
| Vance       | Jones       |            50 |
| Alana       | Walsh       |            50 |
| Kevin       | Feeney      |            50 |
| Donald      | OConnell    |            50 |
| Douglas     | Grant       |            50 |
+-------------+-------------+---------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 13.) Write a query in SQL to display the job title, department name, full name (first and last name ) of employee, and starting date
--      for all the jobs which started on or after 1st January, 1993 and ending with on or before 31 August, 1997.

SELECT j.job_title, d.department_id, CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", jh.start_date
	FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id
		JOIN jobs AS j ON j.job_id = e.job_id
			JOIN job_history AS jh ON jh.job_id = e.job_id
				WHERE jh.start_date BETWEEN '1993-01-01' AND '1997-08-31';

-- o/p:

/*
+--------------------------+---------------+------------------+------------+
| job_title                | department_id | Full Name        | start_date |
+--------------------------+---------------+------------------+------------+
| Public Accountant        |           110 | William Gietz    | 1994-07-01 |
| Accounting Manager       |           110 | Shelley Higgins  | 1993-10-28 |
| Programmer               |            60 | Alexander Hunold | 1993-01-13 |
| Programmer               |            60 | Bruce Ernst      | 1993-01-13 |
| Programmer               |            60 | David Austin     | 1993-01-13 |
| Programmer               |            60 | Valli Pataballa  | 1993-01-13 |
| Programmer               |            60 | Diana Lorentz    | 1993-01-13 |
| Marketing Representative |            20 | Pat Fay          | 1996-02-27 |
+--------------------------+---------------+------------------+------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 14.) Write a query in SQL to display job title, full name (first and last name ) of employee, and the difference between maximum salary
--      for the job and salary of the employee.

SELECT j.job_title, CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", ABS(e.salary - j.max_salary) AS "Salary Difference"
	FROM jobs AS j JOIN employees AS e ON j.job_id = e.job_id
		ORDER BY j.job_title;

-- o/p:

/*
+---------------------------------+-------------------+-------------------+
| job_title                       | Full Name         | Salary Difference |
+---------------------------------+-------------------+-------------------+
| Accountant                      | Daniel Faviet     |              0.00 |
| Accountant                      | John Chen         |            800.00 |
| Accountant                      | Ismael Sciarra    |           1300.00 |
| Accountant                      | Jose Manuel Urman |           1200.00 |
| Accountant                      | Luis Popp         |           2100.00 |
| Accounting Manager              | Shelley Higgins   |           4000.00 |
| Administration Assistant        | Jennifer Whalen   |           1600.00 |
| Administration Vice President   | Neena Kochhar     |          13000.00 |
| Administration Vice President   | Lex De Haan       |          13000.00 |
| Finance Manager                 | Nancy Greenberg   |           4000.00 |
| Human Resources Representative  | Susan Mavris      |           2500.00 |
| Marketing Manager               | Michael Hartstein |           2000.00 |
| Marketing Representative        | Pat Fay           |           3000.00 |
| President                       | Steven King       |          16000.00 |
| Programmer                      | Alexander Hunold  |           1000.00 |
| Programmer                      | Bruce Ernst       |           4000.00 |
| Programmer                      | David Austin      |           5200.00 |
| Programmer                      | Valli Pataballa   |           5200.00 |
| Programmer                      | Diana Lorentz     |           5800.00 |
| Public Accountant               | William Gietz     |            700.00 |
| Public Relations Representative | Hermann Baer      |            500.00 |
| Purchasing Clerk                | Alexander Khoo    |           2400.00 |
| Purchasing Clerk                | Shelli Baida      |           2600.00 |
| Purchasing Clerk                | Sigal Tobias      |           2700.00 |
| Purchasing Clerk                | Guy Himuro        |           2900.00 |
| Purchasing Clerk                | Karen Colmenares  |           3000.00 |
| Purchasing Manager              | Den Raphaely      |           4000.00 |
| Sales Manager                   | John Russell      |           6000.00 |
| Sales Manager                   | Karen Partners    |           6500.00 |
| Sales Manager                   | Alberto Errazuriz |           8000.00 |
| Sales Manager                   | Gerald Cambrault  |           9000.00 |
| Sales Manager                   | Eleni Zlotkey     |           9500.00 |
| Sales Representative            | Peter Tucker      |           2000.00 |
| Sales Representative            | David Bernstein   |           2500.00 |
| Sales Representative            | Peter Hall        |           3000.00 |
| Sales Representative            | Christopher Olsen |           4000.00 |
| Sales Representative            | Nanette Cambrault |           4500.00 |
| Sales Representative            | Oliver Tuvault    |           5000.00 |
| Sales Representative            | Janette King      |           2000.00 |
| Sales Representative            | Patrick Sully     |           2500.00 |
| Sales Representative            | Allan McEwen      |           3000.00 |
| Sales Representative            | Lindsey Smith     |           4000.00 |
| Sales Representative            | Louise Doran      |           4500.00 |
| Sales Representative            | Sarath Sewall     |           5000.00 |
| Sales Representative            | Clara Vishney     |           1500.00 |
| Sales Representative            | Danielle Greene   |           2500.00 |
| Sales Representative            | Mattea Marvins    |           4800.00 |
| Sales Representative            | David Lee         |           5200.00 |
| Sales Representative            | Sundar Ande       |           5600.00 |
| Sales Representative            | Amit Banda        |           5800.00 |
| Sales Representative            | Lisa Ozer         |            500.00 |
| Sales Representative            | Harrison Bloom    |           2000.00 |
| Sales Representative            | Tayler Fox        |           2400.00 |
| Sales Representative            | William Smith     |           4600.00 |
| Sales Representative            | Elizabeth Bates   |           4700.00 |
| Sales Representative            | Sundita Kumar     |           5900.00 |
| Sales Representative            | Ellen Abel        |           1000.00 |
| Sales Representative            | Alyssa Hutton     |           3200.00 |
| Sales Representative            | Jonathon Taylor   |           3400.00 |
| Sales Representative            | Jack Livingston   |           3600.00 |
| Sales Representative            | Kimberely Grant   |           5000.00 |
| Sales Representative            | Charles Johnson   |           5800.00 |
| Shipping Clerk                  | Winston Taylor    |           2300.00 |
| Shipping Clerk                  | Jean Fleaur       |           2400.00 |
| Shipping Clerk                  | Martha Sullivan   |           3000.00 |
| Shipping Clerk                  | Girard Geoni      |           2700.00 |
| Shipping Clerk                  | Nandita Sarchand  |           1300.00 |
| Shipping Clerk                  | Alexis Bull       |           1400.00 |
| Shipping Clerk                  | Julia Dellinger   |           2100.00 |
| Shipping Clerk                  | Anthony Cabrio    |           2500.00 |
| Shipping Clerk                  | Kelly Chung       |           1700.00 |
| Shipping Clerk                  | Jennifer Dilly    |           1900.00 |
| Shipping Clerk                  | Timothy Gates     |           2600.00 |
| Shipping Clerk                  | Randall Perkins   |           3000.00 |
| Shipping Clerk                  | Sarah Bell        |           1500.00 |
| Shipping Clerk                  | Britney Everett   |           1600.00 |
| Shipping Clerk                  | Samuel McCain     |           2300.00 |
| Shipping Clerk                  | Vance Jones       |           2700.00 |
| Shipping Clerk                  | Alana Walsh       |           2400.00 |
| Shipping Clerk                  | Kevin Feeney      |           2500.00 |
| Shipping Clerk                  | Donald OConnell   |           2900.00 |
| Shipping Clerk                  | Douglas Grant     |           2900.00 |
| Stock Clerk                     | Julia Nayer       |           1800.00 |
| Stock Clerk                     | Irene Mikkilineni |           2300.00 |
| Stock Clerk                     | James Landry      |           2600.00 |
| Stock Clerk                     | Steven Markle     |           2800.00 |
| Stock Clerk                     | Laura Bissot      |           1700.00 |
| Stock Clerk                     | Mozhe Atkinson    |           2200.00 |
| Stock Clerk                     | James Marlow      |           2500.00 |
| Stock Clerk                     | TJ Olson          |           2900.00 |
| Stock Clerk                     | Jason Mallin      |           1700.00 |
| Stock Clerk                     | Michael Rogers    |           2100.00 |
| Stock Clerk                     | Ki Gee            |           2600.00 |
| Stock Clerk                     | Hazel Philtanker  |           2800.00 |
| Stock Clerk                     | Renske Ladwig     |           1400.00 |
| Stock Clerk                     | Stephen Stiles    |           1800.00 |
| Stock Clerk                     | John Seo          |           2300.00 |
| Stock Clerk                     | Joshua Patel      |           2500.00 |
| Stock Clerk                     | Trenna Rajs       |           1500.00 |
| Stock Clerk                     | Curtis Davies     |           1900.00 |
| Stock Clerk                     | Randall Matos     |           2400.00 |
| Stock Clerk                     | Peter Vargas      |           2500.00 |
| Stock Manager                   | Matthew Weiss     |            500.00 |
| Stock Manager                   | Adam Fripp        |            300.00 |
| Stock Manager                   | Payam Kaufling    |            600.00 |
| Stock Manager                   | Shanta Vollman    |           2000.00 |
| Stock Manager                   | Kevin Mourgos     |           2700.00 |
+---------------------------------+-------------------+-------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 15.) Write a query in SQL to display the name of the department, average salary and number of employees
--      working in that department who got commission.

SELECT d.department_name, AVG(e.salary), COUNT(e.commission_pct) AS "NumberOfEmployees"
	FROM employees AS e
		JOIN departments AS d
			ON e.department_id = d.department_id
				WHERE commission_pct IS NOT NULL
					GROUP BY d.department_name;

-- o/p:

-- +-----------------+---------------+-------------------+
-- | department_name | AVG(e.salary) | NumberOfEmployees |
-- +-----------------+---------------+-------------------+
-- | Sales           |   8955.882353 |                34 |
-- +-----------------+---------------+-------------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 16.) Write a query in SQL to display the full name (first and last name) of employees, job title and the salary differences to their own job
--      for those employees who is working in the department ID 80. 

SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", j.job_title, ABS(e.salary - dept.salary) AS "Salary Difference"
	FROM employees AS e JOIN jobs AS j ON e.job_id = j.job_id
		JOIN (SELECT department_id, AVG(salary) salary FROM employees 
				WHERE department_id = 80
					GROUP BY department_id) AS dept ON e.salary != dept.salary;
			
-- o/p:

/*
+-------------------+---------------------------------+-------------------+
| Full Name         | job_title                       | Salary Difference |
+-------------------+---------------------------------+-------------------+
| William Gietz     | Public Accountant               |        655.882353 |
| Shelley Higgins   | Accounting Manager              |       3044.117647 |
| Jennifer Whalen   | Administration Assistant        |       4555.882353 |
| Steven King       | President                       |      15044.117647 |
| Neena Kochhar     | Administration Vice President   |       8044.117647 |
| Lex De Haan       | Administration Vice President   |       8044.117647 |
| Daniel Faviet     | Accountant                      |         44.117647 |
| John Chen         | Accountant                      |        755.882353 |
| Ismael Sciarra    | Accountant                      |       1255.882353 |
| Jose Manuel Urman | Accountant                      |       1155.882353 |
| Luis Popp         | Accountant                      |       2055.882353 |
| Nancy Greenberg   | Finance Manager                 |       3044.117647 |
| Susan Mavris      | Human Resources Representative  |       2455.882353 |
| Alexander Hunold  | Programmer                      |         44.117647 |
| Bruce Ernst       | Programmer                      |       2955.882353 |
| David Austin      | Programmer                      |       4155.882353 |
| Valli Pataballa   | Programmer                      |       4155.882353 |
| Diana Lorentz     | Programmer                      |       4755.882353 |
| Michael Hartstein | Marketing Manager               |       4044.117647 |
| Pat Fay           | Marketing Representative        |       2955.882353 |
| Hermann Baer      | Public Relations Representative |       1044.117647 |
| Alexander Khoo    | Purchasing Clerk                |       5855.882353 |
| Shelli Baida      | Purchasing Clerk                |       6055.882353 |
| Sigal Tobias      | Purchasing Clerk                |       6155.882353 |
| Guy Himuro        | Purchasing Clerk                |       6355.882353 |
| Karen Colmenares  | Purchasing Clerk                |       6455.882353 |
| Den Raphaely      | Purchasing Manager              |       2044.117647 |
| John Russell      | Sales Manager                   |       5044.117647 |
| Karen Partners    | Sales Manager                   |       4544.117647 |
| Alberto Errazuriz | Sales Manager                   |       3044.117647 |
| Gerald Cambrault  | Sales Manager                   |       2044.117647 |
| Eleni Zlotkey     | Sales Manager                   |       1544.117647 |
| Peter Tucker      | Sales Representative            |       1044.117647 |
| David Bernstein   | Sales Representative            |        544.117647 |
| Peter Hall        | Sales Representative            |         44.117647 |
| Christopher Olsen | Sales Representative            |        955.882353 |
| Nanette Cambrault | Sales Representative            |       1455.882353 |
| Oliver Tuvault    | Sales Representative            |       1955.882353 |
| Janette King      | Sales Representative            |       1044.117647 |
| Patrick Sully     | Sales Representative            |        544.117647 |
| Allan McEwen      | Sales Representative            |         44.117647 |
| Lindsey Smith     | Sales Representative            |        955.882353 |
| Louise Doran      | Sales Representative            |       1455.882353 |
| Sarath Sewall     | Sales Representative            |       1955.882353 |
| Clara Vishney     | Sales Representative            |       1544.117647 |
| Danielle Greene   | Sales Representative            |        544.117647 |
| Mattea Marvins    | Sales Representative            |       1755.882353 |
| David Lee         | Sales Representative            |       2155.882353 |
| Sundar Ande       | Sales Representative            |       2555.882353 |
| Amit Banda        | Sales Representative            |       2755.882353 |
| Lisa Ozer         | Sales Representative            |       2544.117647 |
| Harrison Bloom    | Sales Representative            |       1044.117647 |
| Tayler Fox        | Sales Representative            |        644.117647 |
| William Smith     | Sales Representative            |       1555.882353 |
| Elizabeth Bates   | Sales Representative            |       1655.882353 |
| Sundita Kumar     | Sales Representative            |       2855.882353 |
| Ellen Abel        | Sales Representative            |       2044.117647 |
| Alyssa Hutton     | Sales Representative            |        155.882353 |
| Jonathon Taylor   | Sales Representative            |        355.882353 |
| Jack Livingston   | Sales Representative            |        555.882353 |
| Kimberely Grant   | Sales Representative            |       1955.882353 |
| Charles Johnson   | Sales Representative            |       2755.882353 |
| Winston Taylor    | Shipping Clerk                  |       5755.882353 |
| Jean Fleaur       | Shipping Clerk                  |       5855.882353 |
| Martha Sullivan   | Shipping Clerk                  |       6455.882353 |
| Girard Geoni      | Shipping Clerk                  |       6155.882353 |
| Nandita Sarchand  | Shipping Clerk                  |       4755.882353 |
| Alexis Bull       | Shipping Clerk                  |       4855.882353 |
| Julia Dellinger   | Shipping Clerk                  |       5555.882353 |
| Anthony Cabrio    | Shipping Clerk                  |       5955.882353 |
| Kelly Chung       | Shipping Clerk                  |       5155.882353 |
| Jennifer Dilly    | Shipping Clerk                  |       5355.882353 |
| Timothy Gates     | Shipping Clerk                  |       6055.882353 |
| Randall Perkins   | Shipping Clerk                  |       6455.882353 |
| Sarah Bell        | Shipping Clerk                  |       4955.882353 |
| Britney Everett   | Shipping Clerk                  |       5055.882353 |
| Samuel McCain     | Shipping Clerk                  |       5755.882353 |
| Vance Jones       | Shipping Clerk                  |       6155.882353 |
| Alana Walsh       | Shipping Clerk                  |       5855.882353 |
| Kevin Feeney      | Shipping Clerk                  |       5955.882353 |
| Donald OConnell   | Shipping Clerk                  |       6355.882353 |
| Douglas Grant     | Shipping Clerk                  |       6355.882353 |
| Julia Nayer       | Stock Clerk                     |       5755.882353 |
| Irene Mikkilineni | Stock Clerk                     |       6255.882353 |
| James Landry      | Stock Clerk                     |       6555.882353 |
| Steven Markle     | Stock Clerk                     |       6755.882353 |
| Laura Bissot      | Stock Clerk                     |       5655.882353 |
| Mozhe Atkinson    | Stock Clerk                     |       6155.882353 |
| James Marlow      | Stock Clerk                     |       6455.882353 |
| TJ Olson          | Stock Clerk                     |       6855.882353 |
| Jason Mallin      | Stock Clerk                     |       5655.882353 |
| Michael Rogers    | Stock Clerk                     |       6055.882353 |
| Ki Gee            | Stock Clerk                     |       6555.882353 |
| Hazel Philtanker  | Stock Clerk                     |       6755.882353 |
| Renske Ladwig     | Stock Clerk                     |       5355.882353 |
| Stephen Stiles    | Stock Clerk                     |       5755.882353 |
| John Seo          | Stock Clerk                     |       6255.882353 |
| Joshua Patel      | Stock Clerk                     |       6455.882353 |
| Trenna Rajs       | Stock Clerk                     |       5455.882353 |
| Curtis Davies     | Stock Clerk                     |       5855.882353 |
| Randall Matos     | Stock Clerk                     |       6355.882353 |
| Peter Vargas      | Stock Clerk                     |       6455.882353 |
| Matthew Weiss     | Stock Manager                   |        955.882353 |
| Adam Fripp        | Stock Manager                   |        755.882353 |
| Payam Kaufling    | Stock Manager                   |       1055.882353 |
| Shanta Vollman    | Stock Manager                   |       2455.882353 |
| Kevin Mourgos     | Stock Manager                   |       3155.882353 |
+-------------------+---------------------------------+-------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 17.) Write a query in SQL to display the name of the country, city, and the departments which are running there.

SELECT c.country_name, l.city, d.department_id
	FROM countries AS c JOIN locations AS l ON c.country_id = l.country_id
		JOIN departments AS d ON d.location_id = l.location_id;

-- o/p:

/*
+--------------------------+---------------------+---------------+
| country_name             | city                | department_id |
+--------------------------+---------------------+---------------+
| United States of America | Southlake           |            60 |
| United States of America | South San Francisco |            50 |
| United States of America | Seattle             |            10 |
| United States of America | Seattle             |            30 |
| United States of America | Seattle             |            90 |
| United States of America | Seattle             |           100 |
| United States of America | Seattle             |           110 |
| United States of America | Seattle             |           120 |
| United States of America | Seattle             |           130 |
| United States of America | Seattle             |           140 |
| United States of America | Seattle             |           150 |
| United States of America | Seattle             |           160 |
| United States of America | Seattle             |           170 |
| United States of America | Seattle             |           180 |
| United States of America | Seattle             |           190 |
| United States of America | Seattle             |           200 |
| United States of America | Seattle             |           210 |
| United States of America | Seattle             |           220 |
| United States of America | Seattle             |           230 |
| United States of America | Seattle             |           240 |
| United States of America | Seattle             |           250 |
| United States of America | Seattle             |           260 |
| United States of America | Seattle             |           270 |
| Canada                   | Toronto             |            20 |
| United Kingdom           | London              |            40 |
| United Kingdom           | Oxford              |            80 |
| Germany                  | Munich              |            70 |
+--------------------------+---------------------+---------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 18.) Write a query in SQL to display department name and the full name (first and last name) of the manager

SELECT DISTINCT d.department_name, CONCAT(m.first_name, ' ', m.last_name) AS "Full Name"
	FROM employees AS e
		JOIN employees AS m ON e.manager_id = m.employee_id
			JOIN departments AS d ON e.department_id = d.department_id;

-- o/p:

/*
+------------------+-------------------+
| department_name  | Full Name         |
+------------------+-------------------+
| Executive        | Steven King       |
| IT               | Lex De Haan       |
| IT               | Alexander Hunold  |
| Finance          | Neena Kochhar     |
| Finance          | Nancy Greenberg   |
| Purchasing       | Steven King       |
| Purchasing       | Den Raphaely      |
| Shipping         | Steven King       |
| Shipping         | Matthew Weiss     |
| Shipping         | Adam Fripp        |
| Shipping         | Payam Kaufling    |
| Shipping         | Shanta Vollman    |
| Shipping         | Kevin Mourgos     |
| Sales            | Steven King       |
| Sales            | John Russell      |
| Sales            | Karen Partners    |
| Sales            | Alberto Errazuriz |
| Sales            | Gerald Cambrault  |
| Sales            | Eleni Zlotkey     |
| Administration   | Neena Kochhar     |
| Marketing        | Steven King       |
| Marketing        | Michael Hartstein |
| Human Resources  | Neena Kochhar     |
| Public Relations | Neena Kochhar     |
| Accounting       | Neena Kochhar     |
| Accounting       | Shelley Higgins   |
+------------------+-------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 19.) Write a query in SQL to display job title and average salary of employees.

SELECT j.job_title, AVG(salary)
	FROM jobs AS j
		JOIN employees AS e
			ON j.job_id = e.job_id
				GROUP BY job_title;

-- o/p:

/*
+---------------------------------+--------------+
| job_title                       | AVG(salary)  |
+---------------------------------+--------------+
| Public Accountant               |  8300.000000 |
| Accounting Manager              | 12000.000000 |
| Administration Assistant        |  4400.000000 |
| President                       | 24000.000000 |
| Administration Vice President   | 17000.000000 |
| Accountant                      |  7920.000000 |
| Finance Manager                 | 12000.000000 |
| Human Resources Representative  |  6500.000000 |
| Programmer                      |  5760.000000 |
| Marketing Manager               | 13000.000000 |
| Marketing Representative        |  6000.000000 |
| Public Relations Representative | 10000.000000 |
| Purchasing Clerk                |  2780.000000 |
| Purchasing Manager              | 11000.000000 |
| Sales Manager                   | 12200.000000 |
| Sales Representative            |  8350.000000 |
| Shipping Clerk                  |  3215.000000 |
| Stock Clerk                     |  2785.000000 |
| Stock Manager                   |  7280.000000 |
+---------------------------------+--------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 20.) Write a query in SQL to display the details of jobs which was done by any of the employees
--      who is presently earning a salary on and above 12000.

SELECT DISTINCT j.*
	FROM jobs AS j
		JOIN employees AS e
			ON j.job_id = e.job_id
				WHERE e.salary >= 12000;


-- o/p:

/*
+---------+-------------------------------+------------+------------+
| job_id  | job_title                     | min_salary | max_salary |
+---------+-------------------------------+------------+------------+
| AD_PRES | President                     |      20000 |      40000 |
| AD_VP   | Administration Vice President |      15000 |      30000 |
| FI_MGR  | Finance Manager               |       8200 |      16000 |
| SA_MAN  | Sales Manager                 |      10000 |      20000 |
| MK_MAN  | Marketing Manager             |       9000 |      15000 |
| AC_MGR  | Accounting Manager            |       8200 |      16000 |
+---------+-------------------------------+------------+------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 21.) Write a query in SQL to display the country name, city, and number of those departments where at least 2 employees are working.

SELECT c.country_name, l.city, temp.department_name, temp.count_emp
	FROM countries c JOIN locations l ON c.country_id = l.country_id	
		JOIN (SELECT d.department_id, department_name, count(*) AS count_emp, location_id
				FROM employees e JOIN departments d ON e.department_id = d.department_id
					GROUP BY d.department_id) AS temp ON temp.location_id = l.location_id
						WHERE temp.count_emp >= 2;

-- o/p:

/*
+--------------------------+---------------------+-----------------+-----------+
| country_name             | city                | department_name | count_emp |
+--------------------------+---------------------+-----------------+-----------+
| Canada                   | Toronto             | Marketing       |         2 |
| United States of America | Seattle             | Purchasing      |         6 |
| United States of America | South San Francisco | Shipping        |        45 |
| United States of America | Southlake           | IT              |         5 |
| United Kingdom           | Oxford              | Sales           |        34 |
| United States of America | Seattle             | Executive       |         3 |
| United States of America | Seattle             | Finance         |         6 |
| United States of America | Seattle             | Accounting      |         2 |
+--------------------------+---------------------+-----------------+-----------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 22.) Write a query in SQL to display the department name, full name (first and last name) of manager, and their city.

SELECT DISTINCT d.department_name, CONCAT(m.first_name, ' ', m.last_name) AS "Full Name", l.city
	FROM employees AS e
		JOIN employees AS m ON e.manager_id = m.employee_id
			JOIN departments AS d ON e.department_id = d.department_id
				JOIN locations AS l ON d.location_id = l.location_id;

-- o/p:

/*
+------------------+-------------------+---------------------+
| department_name  | Full Name         | city                |
+------------------+-------------------+---------------------+
| Executive        | Steven King       | Seattle             |
| IT               | Lex De Haan       | Southlake           |
| IT               | Alexander Hunold  | Southlake           |
| Finance          | Neena Kochhar     | Seattle             |
| Finance          | Nancy Greenberg   | Seattle             |
| Purchasing       | Steven King       | Seattle             |
| Purchasing       | Den Raphaely      | Seattle             |
| Shipping         | Steven King       | South San Francisco |
| Shipping         | Matthew Weiss     | South San Francisco |
| Shipping         | Adam Fripp        | South San Francisco |
| Shipping         | Payam Kaufling    | South San Francisco |
| Shipping         | Shanta Vollman    | South San Francisco |
| Shipping         | Kevin Mourgos     | South San Francisco |
| Sales            | Steven King       | Oxford              |
| Sales            | John Russell      | Oxford              |
| Sales            | Karen Partners    | Oxford              |
| Sales            | Alberto Errazuriz | Oxford              |
| Sales            | Gerald Cambrault  | Oxford              |
| Sales            | Eleni Zlotkey     | Oxford              |
| Administration   | Neena Kochhar     | Seattle             |
| Marketing        | Steven King       | Toronto             |
| Marketing        | Michael Hartstein | Toronto             |
| Human Resources  | Neena Kochhar     | London              |
| Public Relations | Neena Kochhar     | Munich              |
| Accounting       | Neena Kochhar     | Seattle             |
| Accounting       | Shelley Higgins   | Seattle             |
+------------------+-------------------+---------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 23.) Write a query in SQL to display the employee ID, job name, number of days worked in for all those jobs in department 80.

SELECT e.employee_id, j.job_title, ABS(TO_DAYS(jh.end_date) - TO_DAYS(jh.start_date)) AS "DaysWorked"
	FROM employees AS e JOIN jobs AS j ON e.job_id = j.job_id
    	JOIN job_history AS jh ON jh.job_id = e.job_id
			WHERE e.department_id = 80;

-- o/p:
/*
+-------------+----------------------+------------+
| employee_id | job_title            | DaysWorked |
+-------------+----------------------+------------+
|         150 | Sales Representative |        282 |
|         151 | Sales Representative |        282 |
|         152 | Sales Representative |        282 |
|         153 | Sales Representative |        282 |
|         154 | Sales Representative |        282 |
|         155 | Sales Representative |        282 |
|         156 | Sales Representative |        282 |
|         157 | Sales Representative |        282 |
|         158 | Sales Representative |        282 |
|         159 | Sales Representative |        282 |
|         160 | Sales Representative |        282 |
|         161 | Sales Representative |        282 |
|         162 | Sales Representative |        282 |
|         163 | Sales Representative |        282 |
|         164 | Sales Representative |        282 |
|         165 | Sales Representative |        282 |
|         166 | Sales Representative |        282 |
|         167 | Sales Representative |        282 |
|         168 | Sales Representative |        282 |
|         169 | Sales Representative |        282 |
|         170 | Sales Representative |        282 |
|         171 | Sales Representative |        282 |
|         172 | Sales Representative |        282 |
|         173 | Sales Representative |        282 |
|         174 | Sales Representative |        282 |
|         175 | Sales Representative |        282 |
|         176 | Sales Representative |        282 |
|         177 | Sales Representative |        282 |
|         179 | Sales Representative |        282 |
|         145 | Sales Manager        |        364 |
|         146 | Sales Manager        |        364 |
|         147 | Sales Manager        |        364 |
|         148 | Sales Manager        |        364 |
|         149 | Sales Manager        |        364 |
+-------------+----------------------+------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 24.) Write a query in SQL to display the full name (first and last name), and salary of those employees
--      who working in any department located in London.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", salary
	FROM employees e JOIN departments AS d ON e.department_id = d.department_id
		JOIN locations AS l ON l.location_id = d.location_id
			WHERE l.city = 'London';

-- o/p:

-- +--------------+---------+
-- | Full Name    | salary  |
-- +--------------+---------+
-- | Susan Mavris | 6500.00 |
-- +--------------+---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 25.)  Write a query in SQL to display full name(first and last name), job title, starting and ending date of last jobs
--       for those employees who worked without a commission percentage.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", j.job_title, jh.start_date, jh.end_date
	FROM employees e JOIN jobs AS j ON e.job_id = j.job_id
		JOIN job_history AS jh ON jh.job_id = j.job_id
			WHERE e.commission_pct IS NULL;

-- o/p:

/*
+-------------------+--------------------------+------------+------------+
| Full Name         | job_title                | start_date | end_date   |
+-------------------+--------------------------+------------+------------+
| William Gietz     | Public Accountant        | 1989-09-21 | 1993-10-27 |
| Shelley Higgins   | Accounting Manager       | 1993-10-28 | 1997-03-15 |
| Alexander Hunold  | Programmer               | 1993-01-13 | 1998-07-24 |
| Bruce Ernst       | Programmer               | 1993-01-13 | 1998-07-24 |
| David Austin      | Programmer               | 1993-01-13 | 1998-07-24 |
| Valli Pataballa   | Programmer               | 1993-01-13 | 1998-07-24 |
| Diana Lorentz     | Programmer               | 1993-01-13 | 1998-07-24 |
| Julia Nayer       | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Irene Mikkilineni | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| James Landry      | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Steven Markle     | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Laura Bissot      | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Mozhe Atkinson    | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| James Marlow      | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| TJ Olson          | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Jason Mallin      | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Michael Rogers    | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Ki Gee            | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Hazel Philtanker  | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Renske Ladwig     | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Stephen Stiles    | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| John Seo          | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Joshua Patel      | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Trenna Rajs       | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Curtis Davies     | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Randall Matos     | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Peter Vargas      | Stock Clerk              | 1998-03-24 | 1999-12-31 |
| Julia Nayer       | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Irene Mikkilineni | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| James Landry      | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Steven Markle     | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Laura Bissot      | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Mozhe Atkinson    | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| James Marlow      | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| TJ Olson          | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Jason Mallin      | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Michael Rogers    | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Ki Gee            | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Hazel Philtanker  | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Renske Ladwig     | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Stephen Stiles    | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| John Seo          | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Joshua Patel      | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Trenna Rajs       | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Curtis Davies     | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Randall Matos     | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Peter Vargas      | Stock Clerk              | 1999-01-01 | 1999-12-31 |
| Jennifer Whalen   | Administration Assistant | 1987-09-17 | 1993-06-17 |
| William Gietz     | Public Accountant        | 1994-07-01 | 1998-12-31 |
| Pat Fay           | Marketing Representative | 1996-02-27 | 1999-12-19 |
+-------------------+--------------------------+------------+------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 26.) Write a query in SQL to display the department name and number of employees in each of the department.

SELECT d.department_name, COUNT(*)
	FROM departments AS d
		JOIN employees as e
			ON d.department_id = e.department_id
				GROUP BY department_name;

-- o/p:
 /*
+------------------+----------+
| department_name  | COUNT(*) |
+------------------+----------+
| Administration   |        1 |
| Marketing        |        2 |
| Purchasing       |        6 |
| Human Resources  |        1 |
| Shipping         |       45 |
| IT               |        5 |
| Public Relations |        1 |
| Sales            |       34 |
| Executive        |        3 |
| Finance          |        6 |
| Accounting       |        2 |
+------------------+----------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 27.) Write a query in SQL to display the full name (firt and last name ) of employee with ID and name of the country
--      presently where they are working in.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Full Name", e.employee_id, c.country_name
	FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id
		JOIN locations AS l ON l.location_id = d.location_id
			JOIN countries AS c ON c.country_id = l.country_id;

-- o/p:

/*
+-------------------+-------------+--------------------------+
| Full Name         | employee_id | country_name             |
+-------------------+-------------+--------------------------+
| Alexander Hunold  |         103 | United States of America |
| Bruce Ernst       |         104 | United States of America |
| David Austin      |         105 | United States of America |
| Valli Pataballa   |         106 | United States of America |
| Diana Lorentz     |         107 | United States of America |
| Matthew Weiss     |         120 | United States of America |
| Adam Fripp        |         121 | United States of America |
| Payam Kaufling    |         122 | United States of America |
| Shanta Vollman    |         123 | United States of America |
| Kevin Mourgos     |         124 | United States of America |
| Julia Nayer       |         125 | United States of America |
| Irene Mikkilineni |         126 | United States of America |
| James Landry      |         127 | United States of America |
| Steven Markle     |         128 | United States of America |
| Laura Bissot      |         129 | United States of America |
| Mozhe Atkinson    |         130 | United States of America |
| James Marlow      |         131 | United States of America |
| TJ Olson          |         132 | United States of America |
| Jason Mallin      |         133 | United States of America |
| Michael Rogers    |         134 | United States of America |
| Ki Gee            |         135 | United States of America |
| Hazel Philtanker  |         136 | United States of America |
| Renske Ladwig     |         137 | United States of America |
| Stephen Stiles    |         138 | United States of America |
| John Seo          |         139 | United States of America |
| Joshua Patel      |         140 | United States of America |
| Trenna Rajs       |         141 | United States of America |
| Curtis Davies     |         142 | United States of America |
| Randall Matos     |         143 | United States of America |
| Peter Vargas      |         144 | United States of America |
| Winston Taylor    |         180 | United States of America |
| Jean Fleaur       |         181 | United States of America |
| Martha Sullivan   |         182 | United States of America |
| Girard Geoni      |         183 | United States of America |
| Nandita Sarchand  |         184 | United States of America |
| Alexis Bull       |         185 | United States of America |
| Julia Dellinger   |         186 | United States of America |
| Anthony Cabrio    |         187 | United States of America |
| Kelly Chung       |         188 | United States of America |
| Jennifer Dilly    |         189 | United States of America |
| Timothy Gates     |         190 | United States of America |
| Randall Perkins   |         191 | United States of America |
| Sarah Bell        |         192 | United States of America |
| Britney Everett   |         193 | United States of America |
| Samuel McCain     |         194 | United States of America |
| Vance Jones       |         195 | United States of America |
| Alana Walsh       |         196 | United States of America |
| Kevin Feeney      |         197 | United States of America |
| Donald OConnell   |         198 | United States of America |
| Douglas Grant     |         199 | United States of America |
| Jennifer Whalen   |         200 | United States of America |
| Den Raphaely      |         114 | United States of America |
| Alexander Khoo    |         115 | United States of America |
| Shelli Baida      |         116 | United States of America |
| Sigal Tobias      |         117 | United States of America |
| Guy Himuro        |         118 | United States of America |
| Karen Colmenares  |         119 | United States of America |
| Steven King       |         100 | United States of America |
| Neena Kochhar     |         101 | United States of America |
| Lex De Haan       |         102 | United States of America |
| Nancy Greenberg   |         108 | United States of America |
| Daniel Faviet     |         109 | United States of America |
| John Chen         |         110 | United States of America |
| Ismael Sciarra    |         111 | United States of America |
| Jose Manuel Urman |         112 | United States of America |
| Luis Popp         |         113 | United States of America |
| Shelley Higgins   |         205 | United States of America |
| William Gietz     |         206 | United States of America |
| Michael Hartstein |         201 | Canada                   |
| Pat Fay           |         202 | Canada                   |
| Susan Mavris      |         203 | United Kingdom           |
| John Russell      |         145 | United Kingdom           |
| Karen Partners    |         146 | United Kingdom           |
| Alberto Errazuriz |         147 | United Kingdom           |
| Gerald Cambrault  |         148 | United Kingdom           |
| Eleni Zlotkey     |         149 | United Kingdom           |
| Peter Tucker      |         150 | United Kingdom           |
| David Bernstein   |         151 | United Kingdom           |
| Peter Hall        |         152 | United Kingdom           |
| Christopher Olsen |         153 | United Kingdom           |
| Nanette Cambrault |         154 | United Kingdom           |
| Oliver Tuvault    |         155 | United Kingdom           |
| Janette King      |         156 | United Kingdom           |
| Patrick Sully     |         157 | United Kingdom           |
| Allan McEwen      |         158 | United Kingdom           |
| Lindsey Smith     |         159 | United Kingdom           |
| Louise Doran      |         160 | United Kingdom           |
| Sarath Sewall     |         161 | United Kingdom           |
| Clara Vishney     |         162 | United Kingdom           |
| Danielle Greene   |         163 | United Kingdom           |
| Mattea Marvins    |         164 | United Kingdom           |
| David Lee         |         165 | United Kingdom           |
| Sundar Ande       |         166 | United Kingdom           |
| Amit Banda        |         167 | United Kingdom           |
| Lisa Ozer         |         168 | United Kingdom           |
| Harrison Bloom    |         169 | United Kingdom           |
| Tayler Fox        |         170 | United Kingdom           |
| William Smith     |         171 | United Kingdom           |
| Elizabeth Bates   |         172 | United Kingdom           |
| Sundita Kumar     |         173 | United Kingdom           |
| Ellen Abel        |         174 | United Kingdom           |
| Alyssa Hutton     |         175 | United Kingdom           |
| Jonathon Taylor   |         176 | United Kingdom           |
| Jack Livingston   |         177 | United Kingdom           |
| Charles Johnson   |         179 | United Kingdom           |
| Hermann Baer      |         204 | Germany                  |
+-------------------+-------------+--------------------------+
*/

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
