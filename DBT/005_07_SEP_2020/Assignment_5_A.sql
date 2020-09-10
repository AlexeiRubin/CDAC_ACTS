-- 1. List department details in which no employee is working.

SELECT *
	FROM dept AS d
		WHERE NOT EXISTS (SELECT *
					FROM emp AS e
						WHERE d.deptno = e.deptno);

-- o/p:

-- +--------+------------+--------+
-- | DEPTNO | DNAME      | LOC    |
-- +--------+------------+--------+
-- |     40 | OPERATIONS | BOSTON |
-- +--------+------------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 2. Find list of employees which are earning less then avg salary of there department

SELECT ename
	FROM emp AS e
		WHERE EXISTS (SELECT s.deptno, avg(s.sal) AS AvgSal 
						FROM emp AS s
							WHERE e.deptno = s.deptno 
								GROUP BY s.deptno 
									HAVING e.sal < AvgSal);

-- o/p:

-- +--------+
-- | ename  |
-- +--------+
-- | SMITH  |
-- | WARD   |
-- | MARTIN |
-- | CLARK  |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | MILLER |
-- +--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. Display list of employees which are earning more than the corresponding manager.

SELECT ename
	FROM emp AS e
		WHERE EXISTS (SELECT *
				FROM emp AS s 
					WHERE e.mgr = s.empno
						AND e.sal > s.sal);

-- o/p:

-- +-------+
-- | ename |
-- +-------+
-- | SCOTT |
-- | FORD  |
-- +-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4. Display list of employees which are not managed by anyone

SELECT ename
	FROM emp AS e
		WHERE EXISTS (SELECT *
				FROM emp AS m 
					WHERE mgr IS NULL
						AND e.empno = m.empno);


-- o/p:

-- +-------+
-- | ename |
-- +-------+
-- | KING  |
-- +-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5. Display department details where avg salary is more then 1000

SELECT *
	FROM dept AS d
		WHERE EXISTS (SELECT e.deptno, AVG(sal) AvgSal
						FROM emp AS e
							WHERE d.deptno = e.deptno
								GROUP BY e.deptno
									HAVING AvgSal > 1000);

-- o/p:

-- +--------+------------+----------+
-- | DEPTNO | DNAME      | LOC      |
-- +--------+------------+----------+
-- |     10 | ACCOUNTING | NEW YORK |
-- |     20 | RESEARCH   | DALLAS   |
-- |     30 | SALES      | CHICAGO  |
-- +--------+------------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
