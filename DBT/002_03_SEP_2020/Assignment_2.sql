-- Assumption : We have created Scott schema (database) in MySQL and created following tables using attached script
-- EMP
-- DEPT
-- SALGRADE
-- BONUS

-- ---------------------------------
-- ---------------------------------
-- Questions on SELECT Clause-------
-- ---------------------------------
-- ---------------------------------

-- 1. Display all the records in emp table

SELECT * FROM emp;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 2. Display first two column from emp table

SELECT empno, ename FROM emp;

-- o/p:

-- +-------+--------+
-- | empno | ename  |
-- +-------+--------+
-- |  7369 | SMITH  |
-- |  7499 | ALLEN  |
-- |  7521 | WARD   |
-- |  7566 | JONES  |
-- |  7654 | MARTIN |
-- |  7698 | BLAKE  |
-- |  7782 | CLARK  |
-- |  7788 | SCOTT  |
-- |  7839 | KING   |
-- |  7844 | TURNER |
-- |  7876 | ADAMS  |
-- |  7900 | JAMES  |
-- |  7902 | FORD   |
-- |  7934 | MILLER |
-- +-------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. Display the structure of emp, dept and salgrade table

DESCRIBE emp;

-- o/p:

-- +----------+--------------+------+-----+---------+-------+
-- | Field    | Type         | Null | Key | Default | Extra |
-- +----------+--------------+------+-----+---------+-------+
-- | EMPNO    | int unsigned | NO   |     | NULL    |       |
-- | ENAME    | varchar(10)  | YES  |     | NULL    |       |
-- | JOB      | varchar(9)   | YES  |     | NULL    |       |
-- | MGR      | int unsigned | YES  |     | NULL    |       |
-- | HIREDATE | date         | YES  |     | NULL    |       |
-- | SAL      | float        | YES  |     | NULL    |       |
-- | COMM     | float        | YES  |     | NULL    |       |
-- | DEPTNO   | int unsigned | YES  |     | NULL    |       |
-- +----------+--------------+------+-----+---------+-------+

-- ---------------------------------
-- ---------------------------------

DESCRIBE dept;

-- o/p:

-- +--------+--------------+------+-----+---------+-------+
-- | Field  | Type         | Null | Key | Default | Extra |
-- +--------+--------------+------+-----+---------+-------+
-- | DEPTNO | int unsigned | YES  |     | NULL    |       |
-- | DNAME  | varchar(14)  | YES  |     | NULL    |       |
-- | LOC    | varchar(13)  | YES  |     | NULL    |       |
-- +--------+--------------+------+-----+---------+-------+

-- ---------------------------------
-- ---------------------------------

DESC salgrade;

-- o/p:

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | GRADE | int  | YES  |     | NULL    |       |
-- | LOSAL | int  | YES  |     | NULL    |       |
-- | HISAL | int  | YES  |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4. Display unique jobs from employee table

SELECT DISTINCT job FROM emp;

-- o/p:

-- +-----------+
-- | job       |
-- +-----------+
-- | CLERK     |
-- | SALESMAN  |
-- | MANAGER   |
-- | ANALYST   |
-- | PRESIDENT |
-- +-----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5. Display the output as follows 
        -- SCOTT is earning 800 dollars
        -- .......

SELECT ename, "is earning ", sal, " dollars" FROM emp;

-- o/p:

-- +--------+-------------+------+----------+
-- | ename  | is earning  | sal  | dollars  |
-- +--------+-------------+------+----------+
-- | SMITH  | is earning  |  800 |  dollars |
-- | ALLEN  | is earning  | 1600 |  dollars |
-- | WARD   | is earning  | 1250 |  dollars |
-- | JONES  | is earning  | 2975 |  dollars |
-- | MARTIN | is earning  | 1250 |  dollars |
-- | BLAKE  | is earning  | 2850 |  dollars |
-- | CLARK  | is earning  | 2450 |  dollars |
-- | SCOTT  | is earning  | 3000 |  dollars |
-- | KING   | is earning  | 5000 |  dollars |
-- | TURNER | is earning  | 1500 |  dollars |
-- | ADAMS  | is earning  | 1100 |  dollars |
-- | JAMES  | is earning  |  950 |  dollars |
-- | FORD   | is earning  | 3000 |  dollars |
-- | MILLER | is earning  | 1300 |  dollars |
-- +--------+-------------+------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6. Display the output from employee table in following format

-- Employee Name            Designation 
-- ---------------   	  ---------------
-- SMITH                    CLERK
-- ALLEN                    SALESMAN
-- ...

SELECT ename AS "Employee Name", job AS Designation FROM emp;

-- o/p:

-- +---------------+-------------+
-- | Employee Name | Designation |
-- +---------------+-------------+
-- | SMITH         | CLERK       |
-- | ALLEN         | SALESMAN    |
-- | WARD          | SALESMAN    |
-- | JONES         | MANAGER     |
-- | MARTIN        | SALESMAN    |
-- | BLAKE         | MANAGER     |
-- | CLARK         | MANAGER     |
-- | SCOTT         | ANALYST     |
-- | KING          | PRESIDENT   |
-- | TURNER        | SALESMAN    |
-- | ADAMS         | CLERK       |
-- | JAMES         | CLERK       |
-- | FORD          | ANALYST     |
-- | MILLER        | CLERK       |
-- +---------------+-------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 7. Display the name of employee and annual salary of each employee.
-- 	  Annual sal must be calculated by considering sal, comm and bonus of 1000$ for each employee

SELECT ename, (sal*12 + IFNULL(comm, 0) + 1000) AS "Annual Salary" FROM emp; 

-- o/p:

-- +--------+---------------+
-- | ename  | Annual Salary |
-- +--------+---------------+
-- | SMITH  |         10600 |
-- | ALLEN  |         20500 |
-- | WARD   |         16500 |
-- | JONES  |         36700 |
-- | MARTIN |         17400 |
-- | BLAKE  |         35200 |
-- | CLARK  |         30400 |
-- | SCOTT  |         37000 |
-- | KING   |         61000 |
-- | TURNER |         19000 |
-- | ADAMS  |         14200 |
-- | JAMES  |         12400 |
-- | FORD   |         37000 |
-- | MILLER |         16600 |
-- +--------+---------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 8. Display the list of manager's employee number in following format.
--    Ensure that same manager number must not be repeated.
--    Also ensure that NULL must not be displayed in the result (display NA in place of null)

-- Manager Number
-- ---------------
-- 7902
-- 7698
-- 7839
-- 7566

SELECT DISTINCT IFNULL(mgr, "NA") AS "Manager Number" FROM emp;

-- o/p:

-- +----------------+
-- | Manager Number |
-- +----------------+
-- | 7902           |
-- | 7698           |
-- | 7839           |
-- | 7566           |
-- | NA             |
-- | 7788           |
-- | 7782           |
-- +----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 9. Display the employee name, salary and commission.
--    Ensure that we consider the commission as 1500 for employees where commission is not paid.

SELECT ename, sal, IFNULL(comm, 1500) AS "comm" FROM emp;

-- o/p:

-- +--------+------+------+
-- | ename  | sal  | comm |
-- +--------+------+------+
-- | SMITH  |  800 | 1500 |
-- | ALLEN  | 1600 |  300 |
-- | WARD   | 1250 |  500 |
-- | JONES  | 2975 | 1500 |
-- | MARTIN | 1250 | 1400 |
-- | BLAKE  | 2850 | 1500 |
-- | CLARK  | 2450 | 1500 |
-- | SCOTT  | 3000 | 1500 |
-- | KING   | 5000 | 1500 |
-- | TURNER | 1500 |    0 |
-- | ADAMS  | 1100 | 1500 |
-- | JAMES  |  950 | 1500 |
-- | FORD   | 3000 | 1500 |
-- | MILLER | 1300 | 1500 |
-- +--------+------+------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- ---------------------------------
-- ---------------------------------
-- Questions on WHERE Clause--------
-- ---------------------------------
-- ---------------------------------

-- 1. List the names of employees who are working in department 10

SELECT ename
	FROM emp
		WHERE deptno = 10;

-- o/p:

-- +--------+
-- | ename  |
-- +--------+
-- | CLARK  |
-- | KING   |
-- | MILLER |
-- +--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 2. List the name and salary of employees who are working as CLERK and SALESMAN

SELECT ename, sal
	FROM emp
		WHERE job = "CLERK"
			OR job = "SALESMAN";

-- o/p:

-- +--------+------+
-- | ename  | sal  |
-- +--------+------+
-- | SMITH  |  800 |
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | MARTIN | 1250 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | MILLER | 1300 |
-- +--------+------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. List the name of employees who have joined the company after year 1981

SELECT ename
	FROM emp
		WHERE hiredate > "1981-12-31";

-- o/p:

-- +--------+
-- | ename  |
-- +--------+
-- | SCOTT  |
-- | ADAMS  |
-- | MILLER |
-- +--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4. List the name of employees who have joined the company in year 1981

SELECT ename
	FROM emp
		WHERE hiredate >= "1981-01-01"
			AND hiredate <= "1981-12-31";
		
-- o/p:

-- +--------+
-- | ename  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | KING   |
-- | TURNER |
-- | JAMES  |
-- | FORD   |
-- +--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5. List the details of employees who are working as CLERK and earning more then 1000$

SELECT *
	FROM emp
		WHERE job = "CLERK"
			AND sal > 1000;

-- o/p:

-- +-------+--------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+------+------+--------+
-- |  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6. List the details of employees who are not managed by any manager

SELECT *
	FROM emp
		WHERE mgr IS NULL;

-- o/p:

-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 7. List the name of employees who are not earning any commission

SELECT ename
	FROM emp
		WHERE comm IS NULL
			OR comm = 0;

-- o/p:

-- +--------+
-- | ename  |
-- +--------+
-- | SMITH  |
-- | JONES  |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | FORD   |
-- | MILLER |
-- +--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 8. List the details of employees whose total salary (sal and commission) is more then $2000.

SELECT *
	FROM emp
		WHERE (sal + IFNULL(comm, 0)) > 2000;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 9. List the details of employees which are working as SALESMAN in department 10 and 30.

SELECT *
	FROM emp
		WHERE job = "SALESMAN"
			AND (deptno = 10 OR deptno = 30);

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 10. List details of employees who are working as SALESMAN in department 30 and earning some commission

SELECT *
	FROM emp
		WHERE job = "SALESMAN"
			AND deptno = 30
				AND comm IS NOT NULL
					AND comm != 0;
-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- ---------------------------------
-- ---------------------------------
-- Questions on Information schema--
-- ---------------------------------
-- ---------------------------------

-- 1. Identify and query the data dictionaries which can provide following details
		
		--  List of tables in scott schema
			
			SELECT table_name
				FROM information_schema.tables
					WHERE table_schema = 'scottschema';
	  
			-- o/p:
			-- +------------+
			-- | TABLE_NAME |
			-- +------------+
			-- | bonus      |
			-- | dept       |
			-- | emp        |
			-- | salgrade   |
			-- +------------+
		
		--  List of columns and correspondings data types of all the tables in scott schema
		
			SELECT table_name, column_name, data_type
				FROM information_schema.columns
					WHERE table_schema = 'scottschema';
			
			-- o/p:
			
			-- +------------+-------------+-----------+
			-- | TABLE_NAME | COLUMN_NAME | DATA_TYPE |
			-- +------------+-------------+-----------+
			-- | bonus      | COMM        | int       |
			-- | bonus      | ENAME       | varchar   |
			-- | bonus      | JOB         | varchar   |
			-- | bonus      | SAL         | int       |
			-- | dept       | DEPTNO      | int       |
			-- | dept       | DNAME       | varchar   |
			-- | dept       | LOC         | varchar   |
			-- | emp        | COMM        | float     |
			-- | emp        | DEPTNO      | int       |
			-- | emp        | EMPNO       | int       |
			-- | emp        | ENAME       | varchar   |
			-- | emp        | HIREDATE    | date      |
			-- | emp        | JOB         | varchar   |
			-- | emp        | MGR         | int       |
			-- | emp        | SAL         | float     |
			-- | salgrade   | GRADE       | int       |
			-- | salgrade   | HISAL       | int       |
			-- | salgrade   | LOSAL       | int       |
			-- +------------+-------------+-----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
				    
-- 2. Fetch list of all data dictionary in information schema and observe there naming convention

SHOW tables;

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. List all data dictionary whose name have 'col' keyword in it.

SHOW tables LIKE "%col%";

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
