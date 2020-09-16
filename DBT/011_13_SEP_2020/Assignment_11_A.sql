-- Cursors

-- 1. Prepare a program to display the comma separated list of employee names in following format

--    Deptno    Employees
--    -------   ------------
--    10        CLARK, KING, .......
--    20        SMITH, JONES, .......
--    30        ALLEN, .......

DELIMITER $$
CREATE PROCEDURE empNameDept()
BEGIN
	DECLARE p_deptno INT;
	DECLARE p_ename VARCHAR(50);
	DECLARE recNotFound BOOLEAN;
	DECLARE c_empDeptRec CURSOR FOR SELECT deptno, group_concat(ename separator ', ') FROM emp GROUP BY deptno;
	DECLARE CONTINUE handler FOR NOT FOUND SET recNotFound = TRUE;
	OPEN c_empDeptRec;
	cursor_Loop : LOOP
		FETCH c_empDeptRec INTO p_deptno, p_ename;
		IF recNotFound THEN
			LEAVE cursor_Loop;
		END IF;
	SELECT p_deptno, p_ename;
	END LOOP cursor_Loop;
	CLOSE c_empDeptRec;
END$$
DELIMITER ;

CALL empNameDept();

-- o/p:

-- +----------+---------------------+
-- | p_deptno | p_ename             |
-- +----------+---------------------+
-- |       10 | CLARK, KING, MILLER |
-- +----------+---------------------+

-- +----------+----------------------------------+
-- | p_deptno | p_ename                          |
-- +----------+----------------------------------+
-- |       20 | SMITH, JONES, SCOTT, ADAMS, FORD |
-- +----------+----------------------------------+

-- +----------+-------------------------------------------+
-- | p_deptno | p_ename                                   |
-- +----------+-------------------------------------------+
-- |       30 | ALLEN, WARD, MARTIN, BLAKE, JAMES, TURNER |
-- +----------+-------------------------------------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. Prepare a program to show the details in following format

--    Deptno   Dname      Employees
-- 	  -------  -------    -------------
-- 	  10        SALES     CLARK, KING, .......
--	  .
--	  .
--	  .

DELIMITER $$
CREATE PROCEDURE empDeptName()
BEGIN
	DECLARE p_deptno INT;
	DECLARE p_dname, p_ename VARCHAR(50);
	DECLARE recNotFound BOOLEAN;
	DECLARE c_empDeptRec CURSOR FOR SELECT e.deptno, d.dname, group_concat(e.ename separator ', ') FROM emp AS e JOIN dept AS d ON e.deptno = d.deptno GROUP BY e.deptno;
	DECLARE CONTINUE handler FOR NOT FOUND SET recNotFound = TRUE;
	OPEN c_empDeptRec;
	cursor_Loop : LOOP
		FETCH c_empDeptRec INTO p_deptno, p_dname, p_ename;
		IF recNotFound THEN
			LEAVE cursor_Loop;
		END IF;
	SELECT p_deptno, p_dname, p_ename;
	END LOOP cursor_Loop;
	CLOSE c_empDeptRec;
END$$
DELIMITER ;

CALL empDeptName();

-- o/p:

-- +----------+------------+---------------------+
-- | p_deptno | p_dname    | p_ename             |
-- +----------+------------+---------------------+
-- |       10 | ACCOUNTING | CLARK, KING, MILLER |
-- +----------+------------+---------------------+

-- +----------+----------+----------------------------------+
-- | p_deptno | p_dname  | p_ename                          |
-- +----------+----------+----------------------------------+
-- |       20 | RESEARCH | SMITH, JONES, SCOTT, ADAMS, FORD |
-- +----------+----------+----------------------------------+

-- +----------+---------+-------------------------------------------+
-- | p_deptno | p_dname | p_ename                                   |
-- +----------+---------+-------------------------------------------+
-- |       30 | SALES   | ALLEN, WARD, MARTIN, BLAKE, JAMES, TURNER |
-- +----------+---------+-------------------------------------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
	
-- 3. For performance testing we are trying to increase number of records by 10 times for each department.
--    For eg: If there are 3 employees in dept 10 then we should be able to increase the employee count to 30 using same / random values 

-- eg:

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |


-- should become


-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7783 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7784 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7785 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7786 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7787 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- ...........
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7840 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7841 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7842 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7843 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- ...........
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
	
DELIMITER $$
CREATE PROCEDURE perfTestDupData()
BEGIN
	DECLARE p_ename, p_job VARCHAR(10);
	DECLARE p_empno, p_mgr, p_deptno INT;
	DECLARE p_sal, p_comm FLOAT;
	DECLARE p_hiredate DATE;
	DECLARE recNotFound BOOLEAN;
	DECLARE itr INT;
	DECLARE c_recData CURSOR FOR SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp;
	DECLARE CONTINUE handler FOR NOT FOUND SET recNotFound = TRUE;
	CREATE TABLE IF NOT EXISTS emp1 LIKE emp;
	OPEN c_recData;
	cursor_Loop : LOOP
		SET itr = 0;
		FETCH c_recData INTO p_empno, p_ename, p_job, p_mgr, p_hiredate, p_sal, p_comm, p_deptno;
		IF recNotFound THEN
			LEAVE cursor_Loop;
		END IF;
		WHILE itr < 10 DO
			INSERT INTO emp1 VALUES(p_empno, p_ename, p_job, p_mgr, p_hiredate, p_sal, p_comm, p_deptno);
			SET itr = itr + 1;
		END WHILE;
	END LOOP cursor_Loop;
	CLOSE c_recData;
END$$
DELIMITER ;

CALL perfTestDupData();

SELECT * FROM emp1 ORDER BY deptno, ename;

-- o/p:

/*
+-------+--------+-----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+-----------+------+------------+------+------+--------+
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3016 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 3016 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 2275 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 2275 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1666 | NULL |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1666 | 1400 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1666 |    0 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1666 |  500 |     30 |
+-------+--------+-----------+------+------------+------+------+--------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
	
-- 4. Prepare a program to create clone of all tables in given schema

DELIMITER $$
CREATE PROCEDURE cloneTables(p_schemaName VARCHAR(20))
BEGIN
	DECLARE p_tableName, p_tableNameClone VARCHAR(20);
	DECLARE recNotFound BOOLEAN DEFAULT FALSE;
	DECLARE c_tableRecords CURSOR FOR SELECT table_name FROM information_schema.tables WHERE table_schema = p_schemaName;
	DECLARE CONTINUE handler FOR NOT FOUND SET recNotFound = TRUE;
	OPEN c_tableRecords;
	cursor_Loop : LOOP
		FETCH c_tableRecords INTO p_tableName;
		IF recNotFound THEN
			LEAVE cursor_Loop;
		END IF;
		SET p_tableNameClone = CONCAT(p_tableName, 'Clone');
		SET @tableNameStmt = CONCAT('CREATE TABLE ', p_tableNameClone, ' AS (SELECT * FROM ', p_tableName, ')');
		PREPARE stmt FROM @tableNameStmt;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
	END LOOP cursor_Loop;
	CLOSE c_tableRecords;
END$$
DELIMITER ;

CALL cloneTables('scottschema');

SHOW tables;

-- o/p:

-- +-----------------------+
-- | Tables_in_scottschema |
-- +-----------------------+
-- | bonus                 |
-- | bonusclone            |
-- | dept                  |
-- | deptclone             |
-- | dummy                 |
-- | dummyclone            |
-- | emp                   |
-- | empclone              |
-- | salgrade              |
-- | salgradeclone         |
-- +-----------------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------