-- 1) Display all the records in emp table?

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

-- 2) Display all the records in emp table where employee belongs to deptno 10?

SELECT *
	FROM emp
		WHERE deptno = 10;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3) Display all the records in emp table where employee does not belong to deptno 30?

SELECT *
	FROM emp
		WHERE deptno != 30;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4) Display total number of records in Emp table?

SELECT COUNT(*) AS "Total Records" FROM emp;

-- o/p:

-- +----------------+
-- | Total Records  |
-- +----------------+
-- |             14 |
-- +----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5) Display emp table with salary descending order?

SELECT *
	FROM emp
		ORDER BY sal;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6) Display all the records in emp table order by ascending deptno, descending salary?

SELECT *
	FROM emp
		ORDER BY deptno, sal DESC;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 7) Display all employees those who were joined in year 1981?

SELECT ename
	FROM emp
		WHERE hiredate >= '1981-01-01'
			AND hiredate <= '1981-12-31';
		
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

-- 8) Display COMM in emp table. Display zero in place of null.

SELECT IFNULL(comm, 0) AS "comm" FROM emp;

-- o/p:

-- +------+
-- | comm |
-- +------+
-- |    0 |
-- |  300 |
-- |  500 |
-- |    0 |
-- | 1400 |
-- |    0 |
-- |    0 |
-- |    0 |
-- |    0 |
-- |    0 |
-- |    0 |
-- |    0 |
-- |    0 |
-- |    0 |
-- +------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 9) Display the records in emp table where MGR in [7698, 7566] and sal should be greater then 1500

SELECT *
	FROM emp
		WHERE mgr 
			BETWEEN 7566 AND 7698
				AND sal > 1500;

-- o/p:

-- +-------+-------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7788 | SCOTT | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD  | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 10) Display all employees where employees hired before 01-JAN-1981

SELECT *
	FROM emp
		WHERE hiredate < '1981-01-01';

-- o/p:

-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 11) Display all employees with how many years they have been servicing in the company?

SELECT *, YEAR(NOW()) - YEAR(hiredate) AS "Service" FROM emp;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+---------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | Service |
-- +-------+--------+-----------+------+------------+------+------+--------+---------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |      40 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |      39 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |      39 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |      39 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |      39 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |      39 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |      39 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |      38 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |      39 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |      39 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |      37 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |      39 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |      39 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |      38 |
-- +-------+--------+-----------+------+------------+------+------+--------+---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 12) Display all employees those were not joined in 1981?

SELECT *
	FROM emp
		WHERE YEAR(hiredate) != '1981';

-- o/p:

-- +-------+--------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+---------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK   | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7788 | SCOTT  | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK   | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+---------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 13) Display all employees where their salary is less then Ford’s salary?

SELECT *
	FROM emp
		WHERE sal < (SELECT sal
				FROM emp
					WHERE ename = 'Ford');

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 14) Display all records in EMP table those were joined before SCOTT joined?

SELECT *
	FROM emp
		WHERE hiredate < (SELECT hiredate
					FROM emp 
						WHERE ename = 'Scott');

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
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 15) Display all employees those who were joined in third quarter of 1981?

SELECT *
	FROM emp
		WHERE hiredate
			BETWEEN '1981-07-01' AND '1981-09-30';

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 16) Write a query to display current date?

SELECT now() AS 'Current Date';

-- o/p:

-- +---------------------+
-- | Current Date        |
-- +---------------------+
-- | 2020-09-04 08:31:36 |
-- +---------------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 17) Display distinct job from emp table?

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

-- 18) Display all the records in emp table where employee hired after 28-SEP-81 and before 03-DEC-81?

SELECT * 
	FROM emp
		WHERE hiredate 
			BETWEEN '1981-09-28' AND '1981-12-03';

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 19) Write a query that displays the employee’s names,
-- 	   with the first letter capitalized and all other letters lowercase
-- 	   for all employees whose name starts with J, A, or M

SELECT CONCAT(UPPER(SUBSTRING(ename, 1, 1)), LOWER(SUBSTRING(ename, 2))) AS ename
	FROM emp 
		WHERE ename LIKE 'j%'
			OR ename LIKE 'a%'
				OR ename LIKE 'm%';

-- o/p:

-- +----------+
-- | ename |
-- +----------+
-- | Allen    |
-- | Jones    |
-- | Martin   |
-- | Adams    |
-- | James    |
-- | Miller   |
-- +----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 20) Display the empno, ename, sal, and salary increased by 15%.

SELECT empno, ename, (sal + sal*0.15) AS 'sal' FROM emp;

-- o/p:

-- +-------+--------+---------+
-- | empno | ename  | sal     |
-- +-------+--------+---------+
-- |  7369 | SMITH  |     920 |
-- |  7499 | ALLEN  |    1840 |
-- |  7521 | WARD   |  1437.5 |
-- |  7566 | JONES  | 3421.25 |
-- |  7654 | MARTIN |  1437.5 |
-- |  7698 | BLAKE  |  3277.5 |
-- |  7782 | CLARK  |  2817.5 |
-- |  7788 | SCOTT  |    3450 |
-- |  7839 | KING   |    5750 |
-- |  7844 | TURNER |    1725 |
-- |  7876 | ADAMS  |    1265 |
-- |  7900 | JAMES  |  1092.5 |
-- |  7902 | FORD   |    3450 |
-- |  7934 | MILLER |    1495 |
-- +-------+--------+---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 21) Display all employees where ename start with J and ends with S

SELECT *
	FROM emp
		WHERE ename LIKE 'j%s';

-- o/p:

-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 22) Display all employees where employee does not belong to 10,20,40

SELECT *
	FROM emp
		WHERE deptno NOT IN (10, 20, 40);

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 23) Display all employees where jobs does not belong to PRESIDENT and MANAGER?

 SELECT *
	FROM emp
		WHERE job NOT IN ('President', 'Manager');

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 24) Display the maximum salary in the emp table

SELECT MAX(sal) FROM emp;

-- o/p:

-- +----------+
-- | MAX(sal) |
-- +----------+
-- |     5000 |
-- +----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 25) Display average salary for job SALESMAN

SELECT AVG(sal)
	FROM emp
		WHERE job = 'Salesman';

-- o/p:

-- +----------+
-- | AVG(sal) |
-- +----------+
-- |     1400 |
-- +----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 26) Display all three figures salary in emp table

SELECT sal
	FROM emp
		WHERE sal >= 100;

-- o/p:

-- +------+
-- | sal  |
-- +------+
-- |  800 |
-- | 1600 |
-- | 1250 |
-- | 2975 |
-- | 1250 |
-- | 2850 |
-- | 2450 |
-- | 3000 |
-- | 5000 |
-- | 1500 |
-- | 1100 |
-- |  950 |
-- | 3000 |
-- | 1300 |
-- +------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 27) Display all records in emp table for employee who does not receive any commission

SELECT *
	FROM emp
		WHERE comm IS NULL
			OR comm = 0;

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
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

-- 28) Display all ename where first character could be anything, but second character should be L?

 SELECT ename
	FROM emp
		WHERE ename LIKE '_l%';

-- o/p:

-- +-------+
-- | ename |
-- +-------+
-- | ALLEN |
-- | BLAKE |
-- | CLARK |
-- +-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 29) Display sum of salary for each department.

SELECT deptno, SUM(sal) AS "Total Salary"
	FROM emp
		GROUP BY deptno
			ORDER BY deptno;

-- o/p:

-- +--------+--------------+
-- | deptno | Total Salary |
-- +--------+--------------+
-- |     10 |         8750 |
-- |     20 |        10875 |
-- |     30 |         9400 |
-- +--------+--------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 30) Display all department with Minimum salary and maximum salary?

SELECT deptno, MAX(sal), MIN(sal)
	FROM emp
		GROUP BY deptno
			ORDER BY deptno;

-- o/p:

-- +--------+----------+----------+
-- | DEPTNO | MAX(sal) | MIN(sal) |
-- +--------+----------+----------+
-- |     10 |     5000 |     1300 |
-- |     20 |     3000 |      800 |
-- |     30 |     2850 |      950 |
-- +--------+----------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 31) Display all the departments where department does not have any employees

SELECT dname
	FROM dept
		WHERE deptno
			NOT IN (SELECT deptno FROM emp);

-- o/p:

-- +------------+
-- | DNAME      |
-- +------------+
-- | OPERATIONS |
-- +------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 32) Display all the departments where department does have atleast one employee

SELECT dname
	FROM dept
		WHERE deptno IN (SELECT deptno FROM emp);

-- o/p:

-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- | RESEARCH   |
-- | SALES      |
-- +------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 33) Display all employees those who are not managers?

SELECT *
	FROM emp
		WHERE job <> 'Manager';

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
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

-- 34) Display all the records for deptno which belongs to employee name JAMES?

SELECT *
	FROM emp
		WHERE deptno IN (SELECT deptno
					FROM emp
						WHERE ename = 'James');

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 35) Display all the records in emp table where salary should be less then or equal to ADAMS salary?

SELECT *
	FROM emp
		WHERE sal <= (SELECT sal
				FROM emp
					WHERE ename = 'Adams');

-- o/p:

-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES | CLERK | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 36) Display all employees those were joined before employee WARD joined?

SELECT *
	FROM emp
		WHERE hiredate < (SELECT hiredate
					FROM emp
						WHERE ename = 'Ward');

-- o/p:

-- +-------+-------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- +-------+-------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 37) Display all subordinate those who are working under BLAKE?

SELECT *
	FROM emp
		WHERE mgr IN (SELECT empno
				FROM emp
					WHERE ename = "Blake");

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 38) Display all subordinate(all levels) for employee BLAKE?

 SELECT DISTINCT job
	FROM emp
		WHERE mgr IN (SELECT empno
				FROM emp
					WHERE ename = 'Blake');

-- o/p:

-- +----------+
-- | job      |
-- +----------+
-- | SALESMAN |
-- | CLERK    |
-- +----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 39) Display all record in emp table for deptno which belongs to KING's Job?

SELECT *
	FROM emp
		WHERE deptno = (SELECT deptno
					FROM emp
						WHERE job = (SELECT job
								FROM emp
									WHERE ename = 'King'));

-- o/p:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 40) Display the employees from emp which belongs to job PRESIDENT?

SELECT *
	FROM emp
		WHERE job = 'President';

-- o/p:

-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 41) Display list of ename those who have joined in Year 81 as MANAGER?

SELECT ename
	FROM emp
		WHERE YEAR(hiredate) = '1981'
			AND job = 'Manager';

-- o/p:

-- +-------+
-- | ename |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- +-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 42) Display who is making highest commission?

SELECT *
	FROM emp 
		WHERE comm
			IN (SELECT MAX(comm) FROM emp);

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 43) Display who is senior most employee? How many years has been working?

SELECT ename, (YEAR(NOW()) - YEAR(hiredate)) AS "Service" 
	FROM emp
		WHERE hiredate = (SELECT MIN(hiredate) FROM emp);

-- o/p:

-- +-------+---------+
-- | ename | Service |
-- +-------+---------+
-- | SMITH |      40 |
-- +-------+---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 44) Display who is most experienced and least experienced employee?

SELECT ename, (YEAR(NOW()) - YEAR(hiredate)) AS "Service" 
	FROM emp
		WHERE hiredate = (SELECT MIN(hiredate) FROM emp)
			OR hiredate = (SELECT MAX(hiredate) FROM emp);

-- o/p:

-- +-------+---------+
-- | ename | Service |
-- +-------+---------+
-- | SMITH |      40 |
-- | ADAMS |      37 |
-- +-------+---------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 45) Display all employee whose location is DALLAS?

SELECT *
	FROM emp
		WHERE deptno = (SELECT deptno
					FROM dept
						WHERE loc = 'Dallas');

-- o/p:

-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 46) List ename, job, sal and department of all employees whose salary is not within the salary grade?

SELECT ename, job, sal, deptno
	FROM emp
		WHERE sal NOT BETWEEN (SELECT MIN(losal) FROM salgrade)
							AND (SELECT MAX(hisal) FROM salgrade);

-- o/p:

-- Empty set

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------