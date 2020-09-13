-- DML

-- Create an employee table with colums employee_id, last_name, hire_date, salary, dept_id.
-- Hire date column allows null values.
-- Use appropriate dtypes and constraints.

CREATE TABLE employee
(
	employee_id INT UNSIGNED NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	hire_date DATE,
	salary DECIMAL(7,2) UNSIGNED NOT NULL,
	dept_id INT UNSIGNED NOT NULL,
	PRIMARY KEY(employee_id)
);

DESC employee;

-- o/p:

-- +-------------+-----------------------+------+-----+---------+-------+
-- | Field       | Type                  | Null | Key | Default | Extra |
-- +-------------+-----------------------+------+-----+---------+-------+
-- | employee_id | int unsigned          | NO   | PRI | NULL    |       |
-- | last_name   | varchar(20)           | NO   |     | NULL    |       |
-- | hire_date   | date                  | YES  |     | NULL    |       |
-- | salary      | decimal(7,2) unsigned | NO   |     | NULL    |       |
-- | dept_id     | int unsigned          | NO   |     | NULL    |       |
-- +-------------+-----------------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 1. Insert follwing value to table: 100, King, 2010-01-01, 20000, 1

INSERT INTO employee
	VALUES(100, 'King', '2010-01-01', 20000, 1);

SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. Insert following value to table. Values are not in order: 2012-02-02, 101, Stark, 2, 10000

INSERT INTO employee(hire_date, employee_id, last_name, dept_id, salary)
	VALUES('2012-02-02', 101, 'Stark', 2, 10000);

SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. Insert following value to table. Hire date is not available: 102, Ernst, 15000,2

INSERT INTO employee(employee_id, last_name, salary, dept_id)
	VALUES(102, 'Ernst', 15000, 2);

SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. Insert multiple values to table in single query:

--    103, John, 2013-01-01, 10000, 1

--    104, Bond, 2013-04-01, 12000, 2

--    105, James, 2013-05-01, 18000, 1

INSERT INTO employee
	VALUES(103, 'John', '2013-01-01', 10000, 1),
              (104, 'Bond', '2013-04-01', 12000, 2),
              (105, 'James', '2013-05-01', 18000, 1);

SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- |         103 | John      | 2013-01-01 | 10000.00 |       1 |
-- |         104 | Bond      | 2013-04-01 | 12000.00 |       2 |
-- |         105 | James     | 2013-05-01 | 18000.00 |       1 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 5. Date format of input data is different. Insert this value to table.

--    106, Austin, 31-07-19, 20000, 2

INSERT INTO employee
	VALUES(106, 'Austin', STR_TO_DATE('31-07-19', '%d-%m-%y'), 20000, 2);
	
SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- |         103 | John      | 2013-01-01 | 10000.00 |       1 |
-- |         104 | Bond      | 2013-04-01 | 12000.00 |       2 |
-- |         105 | James     | 2013-05-01 | 18000.00 |       3 |
-- |         106 | Austin    | 2019-07-31 | 20000.00 |       2 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 6. Change department id of employee with id 105 to 3.

UPDATE employee
	SET dept_id = 3
		WHERE employee_id = 105;
		
SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- |         103 | John      | 2013-01-01 | 10000.00 |       1 |
-- |         104 | Bond      | 2013-04-01 | 12000.00 |       2 |
-- |         105 | James     | 2013-05-01 | 18000.00 |       3 |
-- |         106 | Austin    | 2019-07-31 | 20000.00 |       2 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 7. For employee with id 106, update dpeartment id to 3 and hire date to 2015-07-31

UPDATE employee
	SET dept_id = 3,
		hire_date = '2015-07-31'
			WHERE employee_id = 106;
			
SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 20000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- |         103 | John      | 2013-01-01 | 10000.00 |       1 |
-- |         104 | Bond      | 2013-04-01 | 12000.00 |       2 |
-- |         105 | James     | 2013-05-01 | 18000.00 |       3 |
-- |         106 | Austin    | 2015-07-31 | 20000.00 |       3 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 8. Increment salary of employees working in department 1 by 10%

UPDATE employee
	SET salary = salary + salary*0.1
		WHERE dept_id = 1;

SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 22000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- |         103 | John      | 2013-01-01 | 11000.00 |       1 |
-- |         104 | Bond      | 2013-04-01 | 12000.00 |       2 |
-- |         105 | James     | 2013-05-01 | 18000.00 |       3 |
-- |         106 | Austin    | 2015-07-31 | 20000.00 |       3 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 9. Delete records from table having department_id = 3

DELETE FROM employee
	WHERE dept_id = 3;
	
SELECT * FROM employee;

-- o/p:

-- +-------------+-----------+------------+----------+---------+
-- | employee_id | last_name | hire_date  | salary   | dept_id |
-- +-------------+-----------+------------+----------+---------+
-- |         100 | King      | 2010-01-01 | 22000.00 |       1 |
-- |         101 | Stark     | 2012-02-02 | 10000.00 |       2 |
-- |         102 | Ernst     | NULL       | 15000.00 |       2 |
-- |         103 | John      | 2013-01-01 | 11000.00 |       1 |
-- |         104 | Bond      | 2013-04-01 | 12000.00 |       2 |
-- +-------------+-----------+------------+----------+---------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------