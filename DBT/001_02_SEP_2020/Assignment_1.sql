-- 1. login to MySQL

	-- mysql -u "userName" -P "portNumber" -p "schemaName"
	-- Enter password: "enterPassword"

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 2. list different database in MySQL

SHOW databases;

-- o/p:

-- +--------------------+
-- | Database           |
-- +--------------------+
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | sys                |
-- +--------------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. How to connect to specific database

	-- USE "databaseName";

	-- o/p:

	-- Database changed

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4. List all the tables available in given database

	-- USE "databaseName";

	SHOW tables;

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5. Switch from one database to other

	-- USE "otherDatabaseName";

	-- o/p:

	-- Database changed

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6. Run the script "SampleScott_Schema.sql" in your database

	-- mysql "FQ_PATH_OF_THE_SCRIPT" SampleScott_Schema.sql;

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 7. List the tables that you have in the database now

USE scottschema;

SHOW tables;

-- o/p:

-- +-----------------------+
-- | Tables_in_scottschema |
-- +-----------------------+
-- | bonus                 |
-- | dept                  |
-- | dummy                 |
-- | emp                   |
-- | salgrade              |
-- +-----------------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 8. Describe the structure of each table in MySQL

DESCRIBE bonus;

-- o/p:

-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | ENAME | varchar(10)  | YES  |     | NULL    |       |
-- | JOB   | varchar(9)   | YES  |     | NULL    |       |
-- | SAL   | int unsigned | YES  |     | NULL    |       |
-- | COMM  | int unsigned | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+

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

DESC dummy;

-- o/p:

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | DUMMY | int  | YES  |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+

-- ---------------------------------
-- ---------------------------------

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

-- 9. Export the table data in external file in MySQL

	-- 1. From the Server menu, choose Data Export
	-- 2. On the left side, choose the database to export.
	-- 3. Choose ""Dump structure only"" as the dump method.
	-- 4. Uncheck the options: Dump Stored Procedures and Functions, Dump Events, Dump Triggers
	-- 5. Under Export Options, choose Export to Self-Contained File
	-- 6. Click Start Export

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 10. Show the data from each table in MySQL

SELECT * FROM bonus;

-- o/p:

-- Empty set

-----------------------------------
-----------------------------------

SELECT * FROM dept;

-- o/p:

-- +--------+------------+----------+
-- | DEPTNO | DNAME      | LOC      |
-- +--------+------------+----------+
-- |     10 | ACCOUNTING | NEW YORK |
-- |     20 | RESEARCH   | DALLAS   |
-- |     30 | SALES      | CHICAGO  |
-- |     40 | OPERATIONS | BOSTON   |
-- +--------+------------+----------+

-- ---------------------------------
-- ---------------------------------

SELECT * FROM dummy;

-- o/p:

-- +-------+
-- | DUMMY |
-- +-------+
-- |     0 |
-- +-------+

-- ---------------------------------
-- ---------------------------------

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

-- ---------------------------------
-- ---------------------------------

SELECT * FROM salgrade;

-- o/p:

-- +-------+-------+-------+
-- | GRADE | LOSAL | HISAL |
-- +-------+-------+-------+
-- |     1 |   700 |  1200 |
-- |     2 |  1201 |  1400 |
-- |     3 |  1401 |  2000 |
-- |     4 |  2001 |  3000 |
-- |     5 |  3001 |  9999 |
-- +-------+-------+-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 11. Clear the MySQL command prompt

	-- cls

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 12. Fire command to check current user in database

SELECT user();

-- o/p:

-- +----------------+
-- | user()         |
-- +----------------+
-- | root@localhost |
-- +----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 13. Fire command to see current date and time of server

SELECT now();

-- o/p:

-- +---------------------+
-- | now()               |
-- +---------------------+
-- | 2020-09-02 09:12:57 |
-- +---------------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 14. Fire command to assign the output to select command to variable in MySQL

SELECT job
	FROM emp
		WHERE empno=7788 into @lol;

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 15. Print the value stored in variable on the screen

SELECT @lol;

-- o/p:

-- +---------+
-- | @lol    |
-- +---------+
-- | ANALYST |
-- +---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 16. Observe the output of command "select DATE(current_date() +2),current_date();"

SELECT DATE(current_date() + 2), current_date();

-- o/p:

-- +-------------------------+----------------+
-- | DATE(current_date() +2) | current_date() |
-- +-------------------------+----------------+
-- | 2020-09-04              | 2020-09-02     |
-- +-------------------------+----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 17. Observe the command "select null;"
--	  Identify what is null

SELECT null;

-- o/p:

-- +------+
-- | NULL |
-- +------+
-- | NULL |
-- +------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
