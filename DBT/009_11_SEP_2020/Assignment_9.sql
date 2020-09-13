-- 1. Create a view to fetch the employees data 
--    EmployeeId, EmployeeName, EmployeeSalary, EmployeeManager, EmployeeDepartment

CREATE OR REPLACE VIEW emp_data
	AS SELECT employee_id, first_name, salary, manager_id, department_id
		FROM employees;

SELECT * from emp_date;

-- o/p:

/*
+-------------+-------------+----------+------------+---------------+
| employee_id | first_name  | salary   | manager_id | department_id |
+-------------+-------------+----------+------------+---------------+
|         100 | Steven      | 24000.00 |       NULL |            90 |
|         101 | Neena       | 17000.00 |        100 |            90 |
|         102 | Lex         | 17000.00 |        100 |            90 |
|         103 | Alexander   |  9000.00 |        102 |            60 |
|         104 | Bruce       |  6000.00 |        103 |            60 |
|         105 | David       |  4800.00 |        103 |            60 |
|         106 | Valli       |  4800.00 |        103 |            60 |
|         107 | Diana       |  4200.00 |        103 |            60 |
|         108 | Nancy       | 12000.00 |        101 |           100 |
|         109 | Daniel      |  9000.00 |        108 |           100 |
|         110 | John        |  8200.00 |        108 |           100 |
|         111 | Ismael      |  7700.00 |        108 |           100 |
|         112 | Jose Manuel |  7800.00 |        108 |           100 |
|         113 | Luis        |  6900.00 |        108 |           100 |
|         114 | Den         | 11000.00 |        100 |            30 |
|         115 | Alexander   |  3100.00 |        114 |            30 |
|         116 | Shelli      |  2900.00 |        114 |            30 |
|         117 | Sigal       |  2800.00 |        114 |            30 |
|         118 | Guy         |  2600.00 |        114 |            30 |
|         119 | Karen       |  2500.00 |        114 |            30 |
|         120 | Matthew     |  8000.00 |        100 |            50 |
|         121 | Adam        |  8200.00 |        100 |            50 |
|         122 | Payam       |  7900.00 |        100 |            50 |
|         123 | Shanta      |  6500.00 |        100 |            50 |
|         124 | Kevin       |  5800.00 |        100 |            50 |
|         125 | Julia       |  3200.00 |        120 |            50 |
|         126 | Irene       |  2700.00 |        120 |            50 |
|         127 | James       |  2400.00 |        120 |            50 |
|         128 | Steven      |  2200.00 |        120 |            50 |
|         129 | Laura       |  3300.00 |        121 |            50 |
|         130 | Mozhe       |  2800.00 |        121 |            50 |
|         131 | James       |  2500.00 |        121 |            50 |
|         132 | TJ          |  2100.00 |        121 |            50 |
|         133 | Jason       |  3300.00 |        122 |            50 |
|         134 | Michael     |  2900.00 |        122 |            50 |
|         135 | Ki          |  2400.00 |        122 |            50 |
|         136 | Hazel       |  2200.00 |        122 |            50 |
|         137 | Renske      |  3600.00 |        123 |            50 |
|         138 | Stephen     |  3200.00 |        123 |            50 |
|         139 | John        |  2700.00 |        123 |            50 |
|         140 | Joshua      |  2500.00 |        123 |            50 |
|         141 | Trenna      |  3500.00 |        124 |            50 |
|         142 | Curtis      |  3100.00 |        124 |            50 |
|         143 | Randall     |  2600.00 |        124 |            50 |
|         144 | Peter       |  2500.00 |        124 |            50 |
|         145 | John        | 14000.00 |        100 |            80 |
|         146 | Karen       | 13500.00 |        100 |            80 |
|         147 | Alberto     | 12000.00 |        100 |            80 |
|         148 | Gerald      | 11000.00 |        100 |            80 |
|         149 | Eleni       | 10500.00 |        100 |            80 |
|         150 | Peter       | 10000.00 |        145 |            80 |
|         151 | David       |  9500.00 |        145 |            80 |
|         152 | Peter       |  9000.00 |        145 |            80 |
|         153 | Christopher |  8000.00 |        145 |            80 |
|         154 | Nanette     |  7500.00 |        145 |            80 |
|         155 | Oliver      |  7000.00 |        145 |            80 |
|         156 | Janette     | 10000.00 |        146 |            80 |
|         157 | Patrick     |  9500.00 |        146 |            80 |
|         158 | Allan       |  9000.00 |        146 |            80 |
|         159 | Lindsey     |  8000.00 |        146 |            80 |
|         160 | Louise      |  7500.00 |        146 |            80 |
|         161 | Sarath      |  7000.00 |        146 |            80 |
|         162 | Clara       | 10500.00 |        147 |            80 |
|         163 | Danielle    |  9500.00 |        147 |            80 |
|         164 | Mattea      |  7200.00 |        147 |            80 |
|         165 | David       |  6800.00 |        147 |            80 |
|         166 | Sundar      |  6400.00 |        147 |            80 |
|         167 | Amit        |  6200.00 |        147 |            80 |
|         168 | Lisa        | 11500.00 |        148 |            80 |
|         169 | Harrison    | 10000.00 |        148 |            80 |
|         170 | Tayler      |  9600.00 |        148 |            80 |
|         171 | William     |  7400.00 |        148 |            80 |
|         172 | Elizabeth   |  7300.00 |        148 |            80 |
|         173 | Sundita     |  6100.00 |        148 |            80 |
|         174 | Ellen       | 11000.00 |        149 |            80 |
|         175 | Alyssa      |  8800.00 |        149 |            80 |
|         176 | Jonathon    |  8600.00 |        149 |            80 |
|         177 | Jack        |  8400.00 |        149 |            80 |
|         178 | Kimberely   |  7000.00 |        149 |          NULL |
|         179 | Charles     |  6200.00 |        149 |            80 |
|         180 | Winston     |  3200.00 |        120 |            50 |
|         181 | Jean        |  3100.00 |        120 |            50 |
|         182 | Martha      |  2500.00 |        120 |            50 |
|         183 | Girard      |  2800.00 |        120 |            50 |
|         184 | Nandita     |  4200.00 |        121 |            50 |
|         185 | Alexis      |  4100.00 |        121 |            50 |
|         186 | Julia       |  3400.00 |        121 |            50 |
|         187 | Anthony     |  3000.00 |        121 |            50 |
|         188 | Kelly       |  3800.00 |        122 |            50 |
|         189 | Jennifer    |  3600.00 |        122 |            50 |
|         190 | Timothy     |  2900.00 |        122 |            50 |
|         191 | Randall     |  2500.00 |        122 |            50 |
|         192 | Sarah       |  4000.00 |        123 |            50 |
|         193 | Britney     |  3900.00 |        123 |            50 |
|         194 | Samuel      |  3200.00 |        123 |            50 |
|         195 | Vance       |  2800.00 |        123 |            50 |
|         196 | Alana       |  3100.00 |        124 |            50 |
|         197 | Kevin       |  3000.00 |        124 |            50 |
|         198 | Donald      |  2600.00 |        124 |            50 |
|         199 | Douglas     |  2600.00 |        124 |            50 |
|         200 | Jennifer    |  4400.00 |        101 |            10 |
|         201 | Michael     | 13000.00 |        100 |            20 |
|         202 | Pat         |  6000.00 |        201 |            20 |
|         203 | Susan       |  6500.00 |        101 |            40 |
|         204 | Hermann     | 10000.00 |        101 |            70 |
|         205 | Shelley     | 12000.00 |        101 |           110 |
|         206 | William     |  8300.00 |        205 |           110 |
+-------------+-------------+----------+------------+---------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. Create a view to fetch all the employees data working on jobs with 
--    minimum salary > 2000 and maximum salary < 5000;

CREATE OR REPLACE VIEW emp_salRange
	AS SELECT *
		FROM employees
			WHERE salary BETWEEN 2000 AND 5000;
				
SELECT * FROM emp_salRange;

-- o/p:

/*
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
| employee_id | first_name | last_name   | email    | phone_number | hire_date  | job_id   | salary  | commission_pct | manager_id | department_id |
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
|         105 | David      | Austin      | DAUSTIN  | 590.423.4569 | 1997-06-25 | IT_PROG  | 4800.00 |           NULL |        103 |            60 |
|         106 | Valli      | Pataballa   | VPATABAL | 590.423.4560 | 1998-02-05 | IT_PROG  | 4800.00 |           NULL |        103 |            60 |
|         107 | Diana      | Lorentz     | DLORENTZ | 590.423.5567 | 1999-02-07 | IT_PROG  | 4200.00 |           NULL |        103 |            60 |
|         115 | Alexander  | Khoo        | AKHOO    | 515.127.4562 | 1995-05-18 | PU_CLERK | 3100.00 |           NULL |        114 |            30 |
|         116 | Shelli     | Baida       | SBAIDA   | 515.127.4563 | 1997-12-24 | PU_CLERK | 2900.00 |           NULL |        114 |            30 |
|         117 | Sigal      | Tobias      | STOBIAS  | 515.127.4564 | 1997-07-24 | PU_CLERK | 2800.00 |           NULL |        114 |            30 |
|         118 | Guy        | Himuro      | GHIMURO  | 515.127.4565 | 1998-11-15 | PU_CLERK | 2600.00 |           NULL |        114 |            30 |
|         119 | Karen      | Colmenares  | KCOLMENA | 515.127.4566 | 1999-08-10 | PU_CLERK | 2500.00 |           NULL |        114 |            30 |
|         125 | Julia      | Nayer       | JNAYER   | 650.124.1214 | 1997-07-16 | ST_CLERK | 3200.00 |           NULL |        120 |            50 |
|         126 | Irene      | Mikkilineni | IMIKKILI | 650.124.1224 | 1998-09-28 | ST_CLERK | 2700.00 |           NULL |        120 |            50 |
|         127 | James      | Landry      | JLANDRY  | 650.124.1334 | 1999-01-14 | ST_CLERK | 2400.00 |           NULL |        120 |            50 |
|         128 | Steven     | Markle      | SMARKLE  | 650.124.1434 | 2000-03-08 | ST_CLERK | 2200.00 |           NULL |        120 |            50 |
|         129 | Laura      | Bissot      | LBISSOT  | 650.124.5234 | 1997-08-20 | ST_CLERK | 3300.00 |           NULL |        121 |            50 |
|         130 | Mozhe      | Atkinson    | MATKINSO | 650.124.6234 | 1997-10-30 | ST_CLERK | 2800.00 |           NULL |        121 |            50 |
|         131 | James      | Marlow      | JAMRLOW  | 650.124.7234 | 1997-02-16 | ST_CLERK | 2500.00 |           NULL |        121 |            50 |
|         132 | TJ         | Olson       | TJOLSON  | 650.124.8234 | 1999-04-10 | ST_CLERK | 2100.00 |           NULL |        121 |            50 |
|         133 | Jason      | Mallin      | JMALLIN  | 650.127.1934 | 1996-06-14 | ST_CLERK | 3300.00 |           NULL |        122 |            50 |
|         134 | Michael    | Rogers      | MROGERS  | 650.127.1834 | 1998-08-26 | ST_CLERK | 2900.00 |           NULL |        122 |            50 |
|         135 | Ki         | Gee         | KGEE     | 650.127.1734 | 1999-12-12 | ST_CLERK | 2400.00 |           NULL |        122 |            50 |
|         136 | Hazel      | Philtanker  | HPHILTAN | 650.127.1634 | 2000-02-06 | ST_CLERK | 2200.00 |           NULL |        122 |            50 |
|         137 | Renske     | Ladwig      | RLADWIG  | 650.121.1234 | 1995-07-14 | ST_CLERK | 3600.00 |           NULL |        123 |            50 |
|         138 | Stephen    | Stiles      | SSTILES  | 650.121.2034 | 1997-10-26 | ST_CLERK | 3200.00 |           NULL |        123 |            50 |
|         139 | John       | Seo         | JSEO     | 650.121.2019 | 1998-02-12 | ST_CLERK | 2700.00 |           NULL |        123 |            50 |
|         140 | Joshua     | Patel       | JPATEL   | 650.121.1834 | 1998-04-06 | ST_CLERK | 2500.00 |           NULL |        123 |            50 |
|         141 | Trenna     | Rajs        | TRAJS    | 650.121.8009 | 1995-10-17 | ST_CLERK | 3500.00 |           NULL |        124 |            50 |
|         142 | Curtis     | Davies      | CDAVIES  | 650.121.2994 | 1997-01-29 | ST_CLERK | 3100.00 |           NULL |        124 |            50 |
|         143 | Randall    | Matos       | RMATOS   | 650.121.2874 | 1998-03-15 | ST_CLERK | 2600.00 |           NULL |        124 |            50 |
|         144 | Peter      | Vargas      | PVARGAS  | 650.121.2004 | 1998-07-09 | ST_CLERK | 2500.00 |           NULL |        124 |            50 |
|         180 | Winston    | Taylor      | WTAYLOR  | 650.507.9876 | 1998-01-24 | SH_CLERK | 3200.00 |           NULL |        120 |            50 |
|         181 | Jean       | Fleaur      | JFLEAUR  | 650.507.9877 | 1998-02-23 | SH_CLERK | 3100.00 |           NULL |        120 |            50 |
|         182 | Martha     | Sullivan    | MSULLIVA | 650.507.9878 | 1999-06-21 | SH_CLERK | 2500.00 |           NULL |        120 |            50 |
|         183 | Girard     | Geoni       | GGEONI   | 650.507.9879 | 2000-02-03 | SH_CLERK | 2800.00 |           NULL |        120 |            50 |
|         184 | Nandita    | Sarchand    | NSARCHAN | 650.509.1876 | 1996-01-27 | SH_CLERK | 4200.00 |           NULL |        121 |            50 |
|         185 | Alexis     | Bull        | ABULL    | 650.509.2876 | 1997-02-20 | SH_CLERK | 4100.00 |           NULL |        121 |            50 |
|         186 | Julia      | Dellinger   | JDELLING | 650.509.3876 | 1998-06-24 | SH_CLERK | 3400.00 |           NULL |        121 |            50 |
|         187 | Anthony    | Cabrio      | ACABRIO  | 650.509.4876 | 1999-02-07 | SH_CLERK | 3000.00 |           NULL |        121 |            50 |
|         188 | Kelly      | Chung       | KCHUNG   | 650.505.1876 | 1997-06-14 | SH_CLERK | 3800.00 |           NULL |        122 |            50 |
|         189 | Jennifer   | Dilly       | JDILLY   | 650.505.2876 | 1997-08-13 | SH_CLERK | 3600.00 |           NULL |        122 |            50 |
|         190 | Timothy    | Gates       | TGATES   | 650.505.3876 | 1998-07-11 | SH_CLERK | 2900.00 |           NULL |        122 |            50 |
|         191 | Randall    | Perkins     | RPERKINS | 650.505.4876 | 1999-12-19 | SH_CLERK | 2500.00 |           NULL |        122 |            50 |
|         192 | Sarah      | Bell        | SBELL    | 650.501.1876 | 1996-02-04 | SH_CLERK | 4000.00 |           NULL |        123 |            50 |
|         193 | Britney    | Everett     | BEVERETT | 650.501.2876 | 1997-03-03 | SH_CLERK | 3900.00 |           NULL |        123 |            50 |
|         194 | Samuel     | McCain      | SMCCAIN  | 650.501.3876 | 1998-07-01 | SH_CLERK | 3200.00 |           NULL |        123 |            50 |
|         195 | Vance      | Jones       | VJONES   | 650.501.4876 | 1999-03-17 | SH_CLERK | 2800.00 |           NULL |        123 |            50 |
|         196 | Alana      | Walsh       | AWALSH   | 650.507.9811 | 1998-04-24 | SH_CLERK | 3100.00 |           NULL |        124 |            50 |
|         197 | Kevin      | Feeney      | KFEENEY  | 650.507.9822 | 1998-05-23 | SH_CLERK | 3000.00 |           NULL |        124 |            50 |
|         198 | Donald     | OConnell    | DOCONNEL | 650.507.9833 | 1999-06-21 | SH_CLERK | 2600.00 |           NULL |        124 |            50 |
|         199 | Douglas    | Grant       | DGRANT   | 650.507.9844 | 2000-01-13 | SH_CLERK | 2600.00 |           NULL |        124 |            50 |
|         200 | Jennifer   | Whalen      | JWHALEN  | 515.123.4444 | 1987-09-17 | AD_ASST  | 4400.00 |           NULL |        101 |            10 |
+-------------+------------+-------------+----------+--------------+------------+----------+---------+----------------+------------+---------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. Create a view to fetch employee data 
--    EMPLOYEEID,EMPLOYEENAME,EMPLOYEEDEPARTMENT,EMPLOYEESALARY,EMPLOYEECOUNTRY,EMPLOYEELOCATION, EMPLOYEEREGION.

CREATE OR REPLACE VIEW emp_locData
	AS SELECT e.employee_id, e.department_id, e.salary, l.city, c.country_name, r.region_name
		FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id
			JOIN locations AS l ON d.location_id = l.location_id
				JOIN countries AS c ON l.country_id = c.country_id
					JOIN regions AS r ON c.region_id = r.region_id;
	
SELECT * FROM emp_locData;
	
-- o/p:

/*
+-------------+---------------+----------+---------------------+--------------------------+-------------+
| employee_id | department_id | salary   | city                | country_name             | region_name |
+-------------+---------------+----------+---------------------+--------------------------+-------------+
|         103 |            60 |  9000.00 | Southlake           | United States of America | Americas    |
|         104 |            60 |  6000.00 | Southlake           | United States of America | Americas    |
|         105 |            60 |  4800.00 | Southlake           | United States of America | Americas    |
|         106 |            60 |  4800.00 | Southlake           | United States of America | Americas    |
|         107 |            60 |  4200.00 | Southlake           | United States of America | Americas    |
|         120 |            50 |  8000.00 | South San Francisco | United States of America | Americas    |
|         121 |            50 |  8200.00 | South San Francisco | United States of America | Americas    |
|         122 |            50 |  7900.00 | South San Francisco | United States of America | Americas    |
|         123 |            50 |  6500.00 | South San Francisco | United States of America | Americas    |
|         124 |            50 |  5800.00 | South San Francisco | United States of America | Americas    |
|         125 |            50 |  3200.00 | South San Francisco | United States of America | Americas    |
|         126 |            50 |  2700.00 | South San Francisco | United States of America | Americas    |
|         127 |            50 |  2400.00 | South San Francisco | United States of America | Americas    |
|         128 |            50 |  2200.00 | South San Francisco | United States of America | Americas    |
|         129 |            50 |  3300.00 | South San Francisco | United States of America | Americas    |
|         130 |            50 |  2800.00 | South San Francisco | United States of America | Americas    |
|         131 |            50 |  2500.00 | South San Francisco | United States of America | Americas    |
|         132 |            50 |  2100.00 | South San Francisco | United States of America | Americas    |
|         133 |            50 |  3300.00 | South San Francisco | United States of America | Americas    |
|         134 |            50 |  2900.00 | South San Francisco | United States of America | Americas    |
|         135 |            50 |  2400.00 | South San Francisco | United States of America | Americas    |
|         136 |            50 |  2200.00 | South San Francisco | United States of America | Americas    |
|         137 |            50 |  3600.00 | South San Francisco | United States of America | Americas    |
|         138 |            50 |  3200.00 | South San Francisco | United States of America | Americas    |
|         139 |            50 |  2700.00 | South San Francisco | United States of America | Americas    |
|         140 |            50 |  2500.00 | South San Francisco | United States of America | Americas    |
|         141 |            50 |  3500.00 | South San Francisco | United States of America | Americas    |
|         142 |            50 |  3100.00 | South San Francisco | United States of America | Americas    |
|         143 |            50 |  2600.00 | South San Francisco | United States of America | Americas    |
|         144 |            50 |  2500.00 | South San Francisco | United States of America | Americas    |
|         180 |            50 |  3200.00 | South San Francisco | United States of America | Americas    |
|         181 |            50 |  3100.00 | South San Francisco | United States of America | Americas    |
|         182 |            50 |  2500.00 | South San Francisco | United States of America | Americas    |
|         183 |            50 |  2800.00 | South San Francisco | United States of America | Americas    |
|         184 |            50 |  4200.00 | South San Francisco | United States of America | Americas    |
|         185 |            50 |  4100.00 | South San Francisco | United States of America | Americas    |
|         186 |            50 |  3400.00 | South San Francisco | United States of America | Americas    |
|         187 |            50 |  3000.00 | South San Francisco | United States of America | Americas    |
|         188 |            50 |  3800.00 | South San Francisco | United States of America | Americas    |
|         189 |            50 |  3600.00 | South San Francisco | United States of America | Americas    |
|         190 |            50 |  2900.00 | South San Francisco | United States of America | Americas    |
|         191 |            50 |  2500.00 | South San Francisco | United States of America | Americas    |
|         192 |            50 |  4000.00 | South San Francisco | United States of America | Americas    |
|         193 |            50 |  3900.00 | South San Francisco | United States of America | Americas    |
|         194 |            50 |  3200.00 | South San Francisco | United States of America | Americas    |
|         195 |            50 |  2800.00 | South San Francisco | United States of America | Americas    |
|         196 |            50 |  3100.00 | South San Francisco | United States of America | Americas    |
|         197 |            50 |  3000.00 | South San Francisco | United States of America | Americas    |
|         198 |            50 |  2600.00 | South San Francisco | United States of America | Americas    |
|         199 |            50 |  2600.00 | South San Francisco | United States of America | Americas    |
|         200 |            10 |  4400.00 | Seattle             | United States of America | Americas    |
|         114 |            30 | 11000.00 | Seattle             | United States of America | Americas    |
|         115 |            30 |  3100.00 | Seattle             | United States of America | Americas    |
|         116 |            30 |  2900.00 | Seattle             | United States of America | Americas    |
|         117 |            30 |  2800.00 | Seattle             | United States of America | Americas    |
|         118 |            30 |  2600.00 | Seattle             | United States of America | Americas    |
|         119 |            30 |  2500.00 | Seattle             | United States of America | Americas    |
|         100 |            90 | 24000.00 | Seattle             | United States of America | Americas    |
|         101 |            90 | 17000.00 | Seattle             | United States of America | Americas    |
|         102 |            90 | 17000.00 | Seattle             | United States of America | Americas    |
|         108 |           100 | 12000.00 | Seattle             | United States of America | Americas    |
|         109 |           100 |  9000.00 | Seattle             | United States of America | Americas    |
|         110 |           100 |  8200.00 | Seattle             | United States of America | Americas    |
|         111 |           100 |  7700.00 | Seattle             | United States of America | Americas    |
|         112 |           100 |  7800.00 | Seattle             | United States of America | Americas    |
|         113 |           100 |  6900.00 | Seattle             | United States of America | Americas    |
|         205 |           110 | 12000.00 | Seattle             | United States of America | Americas    |
|         206 |           110 |  8300.00 | Seattle             | United States of America | Americas    |
|         201 |            20 | 13000.00 | Toronto             | Canada                   | Americas    |
|         202 |            20 |  6000.00 | Toronto             | Canada                   | Americas    |
|         203 |            40 |  6500.00 | London              | United Kingdom           | Europe      |
|         145 |            80 | 14000.00 | Oxford              | United Kingdom           | Europe      |
|         146 |            80 | 13500.00 | Oxford              | United Kingdom           | Europe      |
|         147 |            80 | 12000.00 | Oxford              | United Kingdom           | Europe      |
|         148 |            80 | 11000.00 | Oxford              | United Kingdom           | Europe      |
|         149 |            80 | 10500.00 | Oxford              | United Kingdom           | Europe      |
|         150 |            80 | 10000.00 | Oxford              | United Kingdom           | Europe      |
|         151 |            80 |  9500.00 | Oxford              | United Kingdom           | Europe      |
|         152 |            80 |  9000.00 | Oxford              | United Kingdom           | Europe      |
|         153 |            80 |  8000.00 | Oxford              | United Kingdom           | Europe      |
|         154 |            80 |  7500.00 | Oxford              | United Kingdom           | Europe      |
|         155 |            80 |  7000.00 | Oxford              | United Kingdom           | Europe      |
|         156 |            80 | 10000.00 | Oxford              | United Kingdom           | Europe      |
|         157 |            80 |  9500.00 | Oxford              | United Kingdom           | Europe      |
|         158 |            80 |  9000.00 | Oxford              | United Kingdom           | Europe      |
|         159 |            80 |  8000.00 | Oxford              | United Kingdom           | Europe      |
|         160 |            80 |  7500.00 | Oxford              | United Kingdom           | Europe      |
|         161 |            80 |  7000.00 | Oxford              | United Kingdom           | Europe      |
|         162 |            80 | 10500.00 | Oxford              | United Kingdom           | Europe      |
|         163 |            80 |  9500.00 | Oxford              | United Kingdom           | Europe      |
|         164 |            80 |  7200.00 | Oxford              | United Kingdom           | Europe      |
|         165 |            80 |  6800.00 | Oxford              | United Kingdom           | Europe      |
|         166 |            80 |  6400.00 | Oxford              | United Kingdom           | Europe      |
|         167 |            80 |  6200.00 | Oxford              | United Kingdom           | Europe      |
|         168 |            80 | 11500.00 | Oxford              | United Kingdom           | Europe      |
|         169 |            80 | 10000.00 | Oxford              | United Kingdom           | Europe      |
|         170 |            80 |  9600.00 | Oxford              | United Kingdom           | Europe      |
|         171 |            80 |  7400.00 | Oxford              | United Kingdom           | Europe      |
|         172 |            80 |  7300.00 | Oxford              | United Kingdom           | Europe      |
|         173 |            80 |  6100.00 | Oxford              | United Kingdom           | Europe      |
|         174 |            80 | 11000.00 | Oxford              | United Kingdom           | Europe      |
|         175 |            80 |  8800.00 | Oxford              | United Kingdom           | Europe      |
|         176 |            80 |  8600.00 | Oxford              | United Kingdom           | Europe      |
|         177 |            80 |  8400.00 | Oxford              | United Kingdom           | Europe      |
|         179 |            80 |  6200.00 | Oxford              | United Kingdom           | Europe      |
|         204 |            70 | 10000.00 | Munich              | Germany                  | Europe      |
+-------------+---------------+----------+---------------------+--------------------------+-------------+
*/

--    -----------------------------------
--    -----------------------------------

--    3.1 CREATE A VIEW FOR Q3 AND DISPLAY ONLY THOSE EMPLOYEES WHOSE DEPARTMENTID = 30 AND SALARY < 5000;

--        (NOT A GOOD PRACTICE, PERFORMANCE WISE TO NEST VIEWS)

          CREATE OR REPLACE VIEW emp_locData_dept
			AS SELECT *
				FROM emp_locData
					WHERE department_id = 30
						AND salary < 5000;
								
	  SELECT * FROM emp_locData_dept;
		  
--        o/p:
		  
--        +-------------+---------------+---------+---------+--------------------------+-------------+
--        | employee_id | department_id | salary  | city    | country_name             | region_name |
--        +-------------+---------------+---------+---------+--------------------------+-------------+
--        |         115 |            30 | 3100.00 | Seattle | United States of America | Americas    |
--        |         116 |            30 | 2900.00 | Seattle | United States of America | Americas    |
--        |         117 |            30 | 2800.00 | Seattle | United States of America | Americas    |
--        |         118 |            30 | 2600.00 | Seattle | United States of America | Americas    |
--        |         119 |            30 | 2500.00 | Seattle | United States of America | Americas    |
--        +-------------+---------------+---------+---------+--------------------------+-------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. CREATE A VIEW TO FETCH ALL EMPLOYEES DATA WITH THEIR APPRAISED SALARY FOR THE CURRENT YEAR.

--    EG :
--    CURRENT SALARY = 3000
--    COMM : 300
--    APPRAISED SALARY RULE : 
--                            PEOPLE GETTING SALARY 2000 - 10000 :: 10%
--                            PEOPLE GETTING SALARY 10001 -15000 :: 8%
--                            PEOPLE GETTING SALARY 15001 - 20000 :: 6%
--                            PEOPLE GETTING SALARY > 20001 :: 5%
		
      CREATE OR REPLACE VIEW emp_salAppraise
		AS SELECT employee_id, first_name, salary, CASE
				WHEN salary > 2000 AND salary <= 10000 THEN salary * 1.10
				WHEN salary > 10001 AND salary <= 15000 THEN salary * 1.08
				WHEN salary > 15001 AND salary <= 20000 THEN salary * 1.06
				WHEN salary > 20001 THEN salary * 1.05
				ELSE salary
			END AS AppraisedSalary
				FROM employees;
					
      SELECT * FROM emp_salAppraise;
	
--    o/p:
/*
+-------------+-------------+----------+-----------------+
| employee_id | first_name  | salary   | AppraisedSalary |
+-------------+-------------+----------+-----------------+
|         100 | Steven      | 24000.00 |      25200.0000 |
|         101 | Neena       | 17000.00 |      18020.0000 |
|         102 | Lex         | 17000.00 |      18020.0000 |
|         103 | Alexander   |  9000.00 |       9900.0000 |
|         104 | Bruce       |  6000.00 |       6600.0000 |
|         105 | David       |  1111.00 |         1111.00 |
|         107 | Diana       |  4200.00 |       4620.0000 |
|         108 | Nancy       | 12000.00 |      12960.0000 |
|         109 | Daniel      |  9000.00 |       9900.0000 |
|         110 | John        |  8200.00 |       9020.0000 |
|         111 | Ismael      |  7700.00 |       8470.0000 |
|         112 | Jose Manuel |  7800.00 |       8580.0000 |
|         113 | Luis        |  6900.00 |       7590.0000 |
|         114 | Den         | 11000.00 |      11880.0000 |
|         115 | Alexander   |  3100.00 |       3410.0000 |
|         116 | Shelli      |  2900.00 |       3190.0000 |
|         117 | Sigal       |  2800.00 |       3080.0000 |
|         118 | Guy         |  2600.00 |       2860.0000 |
|         119 | Karen       |  2500.00 |       2750.0000 |
|         120 | Matthew     |  8000.00 |       8800.0000 |
|         121 | Adam        |  8200.00 |       9020.0000 |
|         122 | Payam       |  7900.00 |       8690.0000 |
|         123 | Shanta      |  6500.00 |       7150.0000 |
|         124 | Kevin       |  5800.00 |       6380.0000 |
|         125 | Julia       |  3200.00 |       3520.0000 |
|         126 | Irene       |  2700.00 |       2970.0000 |
|         127 | James       |  2400.00 |       2640.0000 |
|         128 | Steven      |  2200.00 |       2420.0000 |
|         129 | Laura       |  3300.00 |       3630.0000 |
|         130 | Mozhe       |  2800.00 |       3080.0000 |
|         131 | James       |  2500.00 |       2750.0000 |
|         132 | TJ          |  2100.00 |       2310.0000 |
|         133 | Jason       |  3300.00 |       3630.0000 |
|         134 | Michael     |  2900.00 |       3190.0000 |
|         135 | Ki          |  2400.00 |       2640.0000 |
|         136 | Hazel       |  2200.00 |       2420.0000 |
|         137 | Renske      |  3600.00 |       3960.0000 |
|         138 | Stephen     |  3200.00 |       3520.0000 |
|         139 | John        |  2700.00 |       2970.0000 |
|         140 | Joshua      |  2500.00 |       2750.0000 |
|         141 | Trenna      |  3500.00 |       3850.0000 |
|         142 | Curtis      |  3100.00 |       3410.0000 |
|         143 | Randall     |  2600.00 |       2860.0000 |
|         144 | Peter       |  2500.00 |       2750.0000 |
|         145 | John        | 14000.00 |      15120.0000 |
|         146 | Karen       | 13500.00 |      14580.0000 |
|         147 | Alberto     | 12000.00 |      12960.0000 |
|         148 | Gerald      | 11000.00 |      11880.0000 |
|         149 | Eleni       | 10500.00 |      11340.0000 |
|         150 | Peter       | 10000.00 |      11000.0000 |
|         151 | David       |  9500.00 |      10450.0000 |
|         152 | Peter       |  9000.00 |       9900.0000 |
|         153 | Christopher |  8000.00 |       8800.0000 |
|         154 | Nanette     |  7500.00 |       8250.0000 |
|         155 | Oliver      |  7000.00 |       7700.0000 |
|         156 | Janette     | 10000.00 |      11000.0000 |
|         157 | Patrick     |  9500.00 |      10450.0000 |
|         158 | Allan       |  9000.00 |       9900.0000 |
|         159 | Lindsey     |  8000.00 |       8800.0000 |
|         160 | Louise      |  7500.00 |       8250.0000 |
|         161 | Sarath      |  7000.00 |       7700.0000 |
|         162 | Clara       | 10500.00 |      11340.0000 |
|         163 | Danielle    |  9500.00 |      10450.0000 |
|         164 | Mattea      |  7200.00 |       7920.0000 |
|         165 | David       |  6800.00 |       7480.0000 |
|         166 | Sundar      |  6400.00 |       7040.0000 |
|         167 | Amit        |  6200.00 |       6820.0000 |
|         168 | Lisa        | 11500.00 |      12420.0000 |
|         169 | Harrison    | 10000.00 |      11000.0000 |
|         170 | Tayler      |  9600.00 |      10560.0000 |
|         171 | William     |  7400.00 |       8140.0000 |
|         172 | Elizabeth   |  7300.00 |       8030.0000 |
|         173 | Sundita     |  6100.00 |       6710.0000 |
|         174 | Ellen       | 11000.00 |      11880.0000 |
|         175 | Alyssa      |  8800.00 |       9680.0000 |
|         176 | Jonathon    |  8600.00 |       9460.0000 |
|         177 | Jack        |  8400.00 |       9240.0000 |
|         178 | Kimberely   |  7000.00 |       7700.0000 |
|         179 | Charles     |  6200.00 |       6820.0000 |
|         180 | Winston     |  3200.00 |       3520.0000 |
|         181 | Jean        |  3100.00 |       3410.0000 |
|         182 | Martha      |  2500.00 |       2750.0000 |
|         183 | Girard      |  2800.00 |       3080.0000 |
|         184 | Nandita     |  4200.00 |       4620.0000 |
|         185 | Alexis      |  4100.00 |       4510.0000 |
|         186 | Julia       |  3400.00 |       3740.0000 |
|         187 | Anthony     |  3000.00 |       3300.0000 |
|         188 | Kelly       |  3800.00 |       4180.0000 |
|         189 | Jennifer    |  3600.00 |       3960.0000 |
|         190 | Timothy     |  2900.00 |       3190.0000 |
|         191 | Randall     |  2500.00 |       2750.0000 |
|         192 | Sarah       |  4000.00 |       4400.0000 |
|         193 | Britney     |  3900.00 |       4290.0000 |
|         194 | Samuel      |  3200.00 |       3520.0000 |
|         195 | Vance       |  2800.00 |       3080.0000 |
|         196 | Alana       |  3100.00 |       3410.0000 |
|         197 | Kevin       |  3000.00 |       3300.0000 |
|         198 | Donald      |  2600.00 |       2860.0000 |
|         199 | Douglas     |  2600.00 |       2860.0000 |
|         200 | Jennifer    |  4400.00 |       4840.0000 |
|         201 | Michael     | 13000.00 |      14040.0000 |
|         202 | Pat         |  6000.00 |       6600.0000 |
|         203 | Susan       |  6500.00 |       7150.0000 |
|         204 | Hermann     | 10000.00 |      11000.0000 |
|         205 | Shelley     | 12000.00 |      12960.0000 |
|         206 | William     |  8300.00 |       9130.0000 |
+-------------+-------------+----------+-----------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
		
-- 5. CREATE A VIEW ON THE EMPLOYEES TABLE WITH EMPNO , EMPNAME, EMPSALARY

CREATE OR REPLACE VIEW emp_data_update
	AS SELECT employee_id, first_name, salary
		FROM employees;
	
--    (ALL DML CHANGES WILL BE MADE TO THE BASE TABLE FROM WHICH THE VIEW HAS BEEN DERIVED)

--    5.1 UPDATE THE SALARY OF EMPLOYEE ID = 105;

          UPDATE emp_data_update
			SET salary = 7777
				WHERE employee_id = 105;
		  
	  SELECT *
		FROM emp_data_update
			WHERE employee_id = 105;
		   
--    	  o/p:
		  
--    	  +-------------+------------+---------+
--    	  | employee_id | first_name | salary  |
--    	  +-------------+------------+---------+
--    	  |         105 | David      | 7777.00 |
--    	  +-------------+------------+---------+

--    -----------------------------------
--    -----------------------------------
	
--    5.2 DELETE THE ROW OF THE EMPLOYEE ID = 106;

	  DELETE FROM emp_data_update
		WHERE employee_id = 106;
	
	  SELECT *
		FROM emp_data_update
			WHERE employee_id = 106;
				
--    	  o/p:
		  
--        Empty set

--    -----------------------------------
--    -----------------------------------

--    5.3 UPDATE THE EMPLOYEE DEPARTMET ID OF THE EMPLOYEEID = 108
--        OBSERVE THE PARENT TABLE EMPLOYEES

	  UPDATE emp_data_update
		SET department_id = 90
			WHERE employee_id = 108;

--    	  o/p:
		  
--        Unknown column 'department_id' in 'field list'

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
	
-- 6. CREATE A VIEW ON EMPLOYEES AND DEPARTMENT WITH DEPARTMENTID COMPARISON

CREATE OR REPLACE VIEW emp_dept
	AS SELECT e.employee_id, e.first_name, e.salary, e.department_id
		FROM employees AS e JOIN departments AS d
			ON e.department_id = d.department_id;
		
--    6.1 TRY TO DO UPDATE

          UPDATE emp_dept
		SET salary = 1111
			WHERE employee_id = 105;
		
	  SELECT *
		FROM emp_dept
			WHERE employee_id = 105;
				
-- 	  o/p:

--	  +-------------+------------+---------+---------------+
--	  | employee_id | first_name | salary  | department_id |
--	  +-------------+------------+---------+---------------+
--	  |         105 | David      | 1111.00 |            60 |
--        +-------------+------------+---------+---------------+

          UPDATE emp_dept
		SET department_id = 50
			WHERE employee_id = 105;
				
          SELECT *
		FROM emp_dept
			WHERE employee_id = 105;

--	  o/p:

--	  +-------------+------------+---------+---------------+
--	  | employee_id | first_name | salary  | department_id |
--	  +-------------+------------+---------+---------------+
--	  |         105 | David      | 1111.00 |            50 |
--	  +-------------+------------+---------+---------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
