-- 1. Create a report to display the manager number and the salary of the lowest-paid employee for that manager.
--    Exclude anyone whose manager is not known.
--    Exclude any groups where the minimum salary is $6,000 or less.
--    Sort the output in descending order of salary.

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

-- 2. Create a query to display the last name and salary for all employees.
--    Format the salary to be 15 characters long, left-padded with the # symbol.
--    Label the column as SALARY ?

SELECT last_name, LPAD(salary, 15, '#') AS "Salary"
	FROM employees
		ORDER BY salary;

-- o/p:

/*
+-------------+-----------------+
| last_name   | Salary          |
+-------------+-----------------+
| Olson       | ########2100.00 |
| Markle      | ########2200.00 |
| Philtanker  | ########2200.00 |
| Landry      | ########2400.00 |
| Gee         | ########2400.00 |
| Colmenares  | ########2500.00 |
| Marlow      | ########2500.00 |
| Patel       | ########2500.00 |
| Vargas      | ########2500.00 |
| Sullivan    | ########2500.00 |
| Perkins     | ########2500.00 |
| Himuro      | ########2600.00 |
| Matos       | ########2600.00 |
| OConnell    | ########2600.00 |
| Grant       | ########2600.00 |
| Mikkilineni | ########2700.00 |
| Seo         | ########2700.00 |
| Tobias      | ########2800.00 |
| Atkinson    | ########2800.00 |
| Geoni       | ########2800.00 |
| Jones       | ########2800.00 |
| Baida       | ########2900.00 |
| Rogers      | ########2900.00 |
| Gates       | ########2900.00 |
| Cabrio      | ########3000.00 |
| Feeney      | ########3000.00 |
| Khoo        | ########3100.00 |
| Davies      | ########3100.00 |
| Fleaur      | ########3100.00 |
| Walsh       | ########3100.00 |
| Nayer       | ########3200.00 |
| Stiles      | ########3200.00 |
| Taylor      | ########3200.00 |
| McCain      | ########3200.00 |
| Bissot      | ########3300.00 |
| Mallin      | ########3300.00 |
| Dellinger   | ########3400.00 |
| Rajs        | ########3500.00 |
| Ladwig      | ########3600.00 |
| Dilly       | ########3600.00 |
| Chung       | ########3800.00 |
| Everett     | ########3900.00 |
| Bell        | ########4000.00 |
| Bull        | ########4100.00 |
| Lorentz     | ########4200.00 |
| Sarchand    | ########4200.00 |
| Whalen      | ########4400.00 |
| Austin      | ########4800.00 |
| Pataballa   | ########4800.00 |
| Mourgos     | ########5800.00 |
| Ernst       | ########6000.00 |
| Fay         | ########6000.00 |
| Kumar       | ########6100.00 |
| Banda       | ########6200.00 |
| Johnson     | ########6200.00 |
| Ande        | ########6400.00 |
| Vollman     | ########6500.00 |
| Mavris      | ########6500.00 |
| Lee         | ########6800.00 |
| Popp        | ########6900.00 |
| Tuvault     | ########7000.00 |
| Sewall      | ########7000.00 |
| Grant       | ########7000.00 |
| Marvins     | ########7200.00 |
| Bates       | ########7300.00 |
| Smith       | ########7400.00 |
| Cambrault   | ########7500.00 |
| Doran       | ########7500.00 |
| Sciarra     | ########7700.00 |
| Urman       | ########7800.00 |
| Kaufling    | ########7900.00 |
| Weiss       | ########8000.00 |
| Olsen       | ########8000.00 |
| Smith       | ########8000.00 |
| Chen        | ########8200.00 |
| Fripp       | ########8200.00 |
| Gietz       | ########8300.00 |
| Livingston  | ########8400.00 |
| Taylor      | ########8600.00 |
| Hutton      | ########8800.00 |
| Hunold      | ########9000.00 |
| Faviet      | ########9000.00 |
| Hall        | ########9000.00 |
| McEwen      | ########9000.00 |
| Bernstein   | ########9500.00 |
| Sully       | ########9500.00 |
| Greene      | ########9500.00 |
| Fox         | ########9600.00 |
| Tucker      | #######10000.00 |
| King        | #######10000.00 |
| Bloom       | #######10000.00 |
| Baer        | #######10000.00 |
| Zlotkey     | #######10500.00 |
| Vishney     | #######10500.00 |
| Raphaely    | #######11000.00 |
| Cambrault   | #######11000.00 |
| Abel        | #######11000.00 |
| Ozer        | #######11500.00 |
| Greenberg   | #######12000.00 |
| Errazuriz   | #######12000.00 |
| Higgins     | #######12000.00 |
| Hartstein   | #######13000.00 |
| Partners    | #######13500.00 |
| Russell     | #######14000.00 |
| Kochhar     | #######17000.00 |
| De Haan     | #######17000.00 |
| King        | #######24000.00 |
+-------------+-----------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
/*
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(255) NOT NULL
);

INSERT INTO contacts (first_name,last_name,email) 
VALUES ('Carine ','Schmitt','carine.schmitt@verizon.net'),
       ('Jean','King','jean.king@me.com'),
       ('Peter','Ferguson','peter.ferguson@google.com'),
       ('Janine ','Labrune','janine.labrune@aol.com'),
       ('Jonas ','Bergulfsen','jonas.bergulfsen@mac.com'),
       ('Janine ','Labrune','janine.labrune@aol.com'),
       ('Susan','Nelson','susan.nelson@comcast.net'),
       ('Zbyszek ','Piestrzeniewicz','zbyszek.piestrzeniewicz@att.net'),
       ('Roland','Keitel','roland.keitel@yahoo.com'),
       ('Julie','Murphy','julie.murphy@yahoo.com'),
       ('Kwai','Lee','kwai.lee@google.com'),
       ('Jean','King','jean.king@me.com'),
       ('Susan','Nelson','susan.nelson@comcast.net'),
       ('Roland','Keitel','roland.keitel@yahoo.com');

+----+------------+-----------------+---------------------------------+
| id | first_name | last_name       | email                           |
+----+------------+-----------------+---------------------------------+
|  1 | Carine     | Schmitt         | carine.schmitt@verizon.net      |
|  2 | Jean       | King            | jean.king@me.com                |
|  3 | Peter      | Ferguson        | peter.ferguson@google.com       |
|  4 | Janine     | Labrune         | janine.labrune@aol.com          |
|  5 | Jonas      | Bergulfsen      | jonas.bergulfsen@mac.com        |
|  6 | Janine     | Labrune         | janine.labrune@aol.com          |
|  7 | Susan      | Nelson          | susan.nelson@comcast.net        |
|  8 | Zbyszek    | Piestrzeniewicz | zbyszek.piestrzeniewicz@att.net |
|  9 | Roland     | Keitel          | roland.keitel@yahoo.com         |
| 10 | Julie      | Murphy          | julie.murphy@yahoo.com          |
| 11 | Kwai       | Lee             | kwai.lee@google.com             |
| 12 | Jean       | King            | jean.king@me.com                |
| 13 | Susan      | Nelson          | susan.nelson@comcast.net        |
| 14 | Roland     | Keitel          | roland.keitel@yahoo.com         |
+----+------------+-----------------+---------------------------------+
*/
 
-- Q1 : Delete duplicate rows using DELETE JOIN statement

DELETE cd
	FROM contacts AS cd
		JOIN contacts AS c
			WHERE c.id > cd.id
				AND c.email = cd.email;

-- o/p:

/*
+----+------------+-----------------+---------------------------------+
| id | first_name | last_name       | email                           |
+----+------------+-----------------+---------------------------------+
|  1 | Carine     | Schmitt         | carine.schmitt@verizon.net      |
|  3 | Peter      | Ferguson        | peter.ferguson@google.com       |
|  5 | Jonas      | Bergulfsen      | jonas.bergulfsen@mac.com        |
|  6 | Janine     | Labrune         | janine.labrune@aol.com          |
|  8 | Zbyszek    | Piestrzeniewicz | zbyszek.piestrzeniewicz@att.net |
| 10 | Julie      | Murphy          | julie.murphy@yahoo.com          |
| 11 | Kwai       | Lee             | kwai.lee@google.com             |
| 12 | Jean       | King            | jean.king@me.com                |
| 13 | Susan      | Nelson          | susan.nelson@comcast.net        |
| 14 | Roland     | Keitel          | roland.keitel@yahoo.com         |
+----+------------+-----------------+---------------------------------+
*/

-- -----------------------------------
-- -----------------------------------

-- Q2 : Delete duplicate rows using an intermediate table

CREATE TABLE contacts_copy LIKE contacts;

INSERT INTO contacts_copy SELECT * FROM contacts GROUP BY email;

DROP TABLE contacts;

ALTER TABLE contacts_copy RENAME TO contacts;

-- o/p:

/*
+----+------------+-----------------+---------------------------------+
| id | first_name | last_name       | email                           |
+----+------------+-----------------+---------------------------------+
|  1 | Carine     | Schmitt         | carine.schmitt@verizon.net      |
|  2 | Jean       | King            | jean.king@me.com                |
|  3 | Peter      | Ferguson        | peter.ferguson@google.com       |
|  4 | Janine     | Labrune         | janine.labrune@aol.com          |
|  5 | Jonas      | Bergulfsen      | jonas.bergulfsen@mac.com        |
|  7 | Susan      | Nelson          | susan.nelson@comcast.net        |
|  8 | Zbyszek    | Piestrzeniewicz | zbyszek.piestrzeniewicz@att.net |
|  9 | Roland     | Keitel          | roland.keitel@yahoo.com         |
| 10 | Julie      | Murphy          | julie.murphy@yahoo.com          |
| 11 | Kwai       | Lee             | kwai.lee@google.com             |
+----+------------+-----------------+---------------------------------+
*/

-- -----------------------------------
-- -----------------------------------

-- Q3 : Delete duplicate rows using the ROW_NUMBER() function
		
DELETE FROM contacts
	WHERE id IN (SELECT id
					FROM (SELECT id,
							ROW_NUMBER() OVER (PARTITION BY email ORDER BY email) AS "row_num"
								FROM contacts) AS temp
						WHERE row_num > 1);

-- o/p:

/*
+----+------------+-----------------+---------------------------------+
| id | first_name | last_name       | email                           |
+----+------------+-----------------+---------------------------------+
|  1 | Carine     | Schmitt         | carine.schmitt@verizon.net      |
|  2 | Jean       | King            | jean.king@me.com                |
|  3 | Peter      | Ferguson        | peter.ferguson@google.com       |
|  4 | Janine     | Labrune         | janine.labrune@aol.com          |
|  5 | Jonas      | Bergulfsen      | jonas.bergulfsen@mac.com        |
|  7 | Susan      | Nelson          | susan.nelson@comcast.net        |
|  8 | Zbyszek    | Piestrzeniewicz | zbyszek.piestrzeniewicz@att.net |
|  9 | Roland     | Keitel          | roland.keitel@yahoo.com         |
| 10 | Julie      | Murphy          | julie.murphy@yahoo.com          |
| 11 | Kwai       | Lee             | kwai.lee@google.com             |
+----+------------+-----------------+---------------------------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------