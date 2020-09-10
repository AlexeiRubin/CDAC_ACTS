-- 1) Display all records in EMP table those were joined before SCOTT joined?

SELECT e.*
	FROM emp AS e
		JOIN emp AS s
			ON e.hiredate < s.hiredate
				WHERE s.ename = 'Scott';
 
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

-- 2) Display details of department where department has 3 employees?

SELECT dept.*, COUNT(*) AS "WorkForce"
	FROM dept
		JOIN emp
			ON dept.deptno = emp.deptno
				GROUP BY DEPT.deptno
					HAVING COUNT(*) = 3;

-- o/p:

-- +--------+------------+----------+-----------+
-- | DEPTNO | DNAME      | LOC      | WorkForce |
-- +--------+------------+----------+-----------+
-- |     10 | ACCOUNTING | NEW YORK |         3 |
-- +--------+------------+----------+-----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3) Display details of department with Minimum salary and maximum salary?

SELECT dept.*
	FROM dept
		JOIN emp
			ON dept.deptno = emp.deptno
				WHERE emp.sal = (SELECT MAX(sal) FROM emp)
					OR emp.sal = (SELECT MIN(sal) FROM emp);

-- o/p:

-- +--------+------------+----------+
-- | DEPTNO | DNAME      | LOC      |
-- +--------+------------+----------+
-- |     10 | ACCOUNTING | NEW YORK |
-- |     20 | RESEARCH   | DALLAS   |
-- +--------+------------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4) Display all ename, sal, deptno,dname from emp, dept table,
--	  where all department which has employees as well as department does not have any employees.
--	  This query should include non matching rows.

SELECT emp.ename, emp.sal, dept.deptno, dept.dname
	FROM emp
		RIGHT OUTER JOIN dept
			ON emp.deptno = dept.deptno;

-- o/p:

-- +--------+------+--------+------------+
-- | ename  | sal  | deptno | dname      |
-- +--------+------+--------+------------+
-- | CLARK  | 2450 |     10 | ACCOUNTING |
-- | KING   | 5000 |     10 | ACCOUNTING |
-- | MILLER | 1300 |     10 | ACCOUNTING |
-- | SMITH  |  800 |     20 | RESEARCH   |
-- | JONES  | 2975 |     20 | RESEARCH   |
-- | SCOTT  | 3000 |     20 | RESEARCH   |
-- | ADAMS  | 1100 |     20 | RESEARCH   |
-- | FORD   | 3000 |     20 | RESEARCH   |
-- | ALLEN  | 1600 |     30 | SALES      |
-- | WARD   | 1250 |     30 | SALES      |
-- | MARTIN | 1250 |     30 | SALES      |
-- | BLAKE  | 2850 |     30 | SALES      |
-- | TURNER | 1500 |     30 | SALES      |
-- | JAMES  |  950 |     30 | SALES      |
-- | NULL   | NULL |   NULL | OPERATIONS |
-- +--------+------+--------+------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5) Display all ename, sal, deptno from emp, dept table,
--	  where all employees which has matching department as well as employee does not have any departments.
--	  This query should include non matching rows.

SELECT emp.ename, emp.sal, emp.deptno, dept.dname
	FROM emp
		LEFT OUTER JOIN dept
			ON emp.deptno = dept.deptno;

-- o/p:

-- +--------+------+--------+------------+
-- | ename  | sal  | deptno | dname      |
-- +--------+------+--------+------------+
-- | SMITH  |  800 |     20 | RESEARCH   |
-- | ALLEN  | 1600 |     30 | SALES      |
-- | WARD   | 1250 |     30 | SALES      |
-- | JONES  | 2975 |     20 | RESEARCH   |
-- | MARTIN | 1250 |     30 | SALES      |
-- | BLAKE  | 2850 |     30 | SALES      |
-- | CLARK  | 2450 |     10 | ACCOUNTING |
-- | SCOTT  | 3000 |     20 | RESEARCH   |
-- | KING   | 5000 |     10 | ACCOUNTING |
-- | TURNER | 1500 |     30 | SALES      |
-- | ADAMS  | 1100 |     20 | RESEARCH   |
-- | JAMES  |  950 |     30 | SALES      |
-- | FORD   | 3000 |     20 | RESEARCH   |
-- | MILLER | 1300 |     10 | ACCOUNTING |
-- +--------+------+--------+------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6) Display all ename, sal, dname.
--	  Result must include all employees as well as all departments.
--	  This query should include non matching rows on both the tables.

SELECT emp.ename, emp.sal, emp.deptno, dept.dname
	FROM emp
		LEFT OUTER JOIN dept
			ON emp.deptno = dept.deptno
				GROUP BY emp.deptno
	UNION ALL
		SELECT emp.ename, emp.sal, dept.deptno, dept.dname
			FROM emp
				RIGHT OUTER JOIN dept
					ON emp.deptno = dept.deptno;

-- o/p:

-- +--------+------+--------+------------+
-- | ename  | sal  | deptno | dname      |
-- +--------+------+--------+------------+
-- | CLARK  | 2450 |     10 | ACCOUNTING |
-- | KING   | 5000 |     10 | ACCOUNTING |
-- | MILLER | 1300 |     10 | ACCOUNTING |
-- | SMITH  |  800 |     20 | RESEARCH   |
-- | JONES  | 2975 |     20 | RESEARCH   |
-- | SCOTT  | 3000 |     20 | RESEARCH   |
-- | ADAMS  | 1100 |     20 | RESEARCH   |
-- | FORD   | 3000 |     20 | RESEARCH   |
-- | ALLEN  | 1600 |     30 | SALES      |
-- | WARD   | 1250 |     30 | SALES      |
-- | MARTIN | 1250 |     30 | SALES      |
-- | BLAKE  | 2850 |     30 | SALES      |
-- | TURNER | 1500 |     30 | SALES      |
-- | JAMES  |  950 |     30 | SALES      |
-- | NULL   | NULL |     40 | OPERATIONS |
-- +--------+------+--------+------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 7) Display all ename, empno, dname from emp, dept table without joining two tables

SELECT ename, sal, dname
	FROM emp, dept
		WHERE emp.deptno = dept.deptno;

-- o/p:

-- +--------+------+------------+
-- | ename  | sal  | dname      |
-- +--------+------+------------+
-- | SMITH  |  800 | RESEARCH   |
-- | ALLEN  | 1600 | SALES      |
-- | WARD   | 1250 | SALES      |
-- | JONES  | 2975 | RESEARCH   |
-- | MARTIN | 1250 | SALES      |
-- | BLAKE  | 2850 | SALES      |
-- | CLARK  | 2450 | ACCOUNTING |
-- | SCOTT  | 3000 | RESEARCH   |
-- | KING   | 5000 | ACCOUNTING |
-- | TURNER | 1500 | SALES      |
-- | ADAMS  | 1100 | RESEARCH   |
-- | JAMES  |  950 | SALES      |
-- | FORD   | 3000 | RESEARCH   |
-- | MILLER | 1300 | ACCOUNTING |
-- +--------+------+------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 8) Display all the departments where department does not have any employees

SELECT dept.dname
	FROM dept
		LEFT OUTER JOIN emp
			ON dept.deptno = emp.deptno
				WHERE emp.deptno IS NULL;

-- o/p:

-- +------------+
-- | dname      |
-- +------------+
-- | OPERATIONS |
-- +------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 9) Display all the departments where department does have atleast one employee

SELECT dept.dname
	FROM dept
		LEFT OUTER JOIN emp
			ON dept.deptno = emp.deptno
				WHERE emp.deptno IS NOT NULL
					GROUP BY dept.dname;

-- o/p:

-- +------------+
-- | dname      |
-- +------------+
-- | RESEARCH   |
-- | SALES      |
-- | ACCOUNTING |
-- +------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 10) Display all employees those who are not managers?

SELECT e.*
	FROM emp AS e
		LEFT OUTER JOIN emp AS m
			ON e.empno = m.mgr
				WHERE m.mgr IS NULL;

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 11) Display all the records for deptno which belongs to employee name JAMES?

SELECT ed.*
	FROM emp as e
		JOIN emp as ed
		ON e.deptno = ed.deptno
			JOIN dept
				ON ed.deptno = dept.deptno
					WHERE e.ename = 'James';

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

-- 12) Display all the records in emp table where salary should be less then or equal to ADAMS salary?

SELECT e.*
	FROM emp AS e
		JOIN emp AS a
			ON e.sal <= a.sal
				WHERE a.ename = 'Adams';

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

-- 13) Display ename, sal, grade, dname, loc for each employee.

SELECT emp.ename, emp.sal, salgrade.grade, dept.dname
	FROM emp
		LEFT OUTER JOIN dept
			ON emp.deptno = dept.deptno
		JOIN salgrade
			ON emp.sal BETWEEN salgrade.losal AND salgrade.hisal
				ORDER BY emp.ename;

-- o/p:

-- +--------+------+-------+------------+
-- | ename  | sal  | grade | dname      |
-- +--------+------+-------+------------+
-- | ADAMS  | 1100 |     1 | RESEARCH   |
-- | ALLEN  | 1600 |     3 | SALES      |
-- | BLAKE  | 2850 |     4 | SALES      |
-- | CLARK  | 2450 |     4 | ACCOUNTING |
-- | FORD   | 3000 |     4 | RESEARCH   |
-- | JAMES  |  950 |     1 | SALES      |
-- | JONES  | 2975 |     4 | RESEARCH   |
-- | KING   | 5000 |     5 | ACCOUNTING |
-- | MARTIN | 1250 |     2 | SALES      |
-- | MILLER | 1300 |     2 | ACCOUNTING |
-- | SCOTT  | 3000 |     4 | RESEARCH   |
-- | SMITH  |  800 |     1 | RESEARCH   |
-- | TURNER | 1500 |     3 | SALES      |
-- | WARD   | 1250 |     2 | SALES      |
-- +--------+------+-------+------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 14) Display all employee whose location is DALLAS?

SELECT emp.*
	FROM emp
		JOIN dept
			ON emp.deptno = dept.deptno
				WHERE dept.loc = 'Dallas';

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