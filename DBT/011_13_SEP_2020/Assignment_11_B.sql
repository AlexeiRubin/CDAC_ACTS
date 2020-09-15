-- Functions

-- 1. Write a program to take the input as empno and return the experience of employee in terms of number of years.

DELIMITER $$
CREATE FUNCTION getExperience(p_empno INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE p_hiredate DATE;
	SELECT hiredate FROM emp WHERE empno = p_empno INTO p_hiredate;
	RETURN (YEAR(NOW()) - YEAR(p_hiredate));
END $$
DELIMITER ;

-- o/p:

SELECT getExperience(7369);

-- +---------------------+
-- | getExperience(7369) |
-- +---------------------+
-- |                  40 |
-- +---------------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. Write a program to take the input as deptno and return the comma separated list of employee names

DELIMITER $$
CREATE FUNCTION getEmp(p_deptno INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE p_empList VARCHAR(50);
	SELECT group_concat(ename separator ', ') FROM emp WHERE deptno = p_deptno INTO p_empList;
	RETURN (p_empList);
END $$
DELIMITER ;

SELECT getEmp(10);

-- o/p:

-- +---------------------+
-- | getEmp(10)          |
-- +---------------------+
-- | CLARK, KING, MILLER |
-- +---------------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. Add a new column incentive to emp table.
--    Write a program to calculate and update the incentive using following logic.
--    If employees salary is more then avg salary of dept then incentive is 0
-- 	  If employees salary is less then avg salary of dept then incentive is 10% of salary

ALTER TABLE emp ADD COLUMN incentive INT;

DELIMITER $$
CREATE PROCEDURE incentiveCalcUpdate()
BEGIN
	DECLARE p_empno, p_deptno, p_sal, p_incentive INT;
	DECLARE recNotFound BOOLEAN;
	DECLARE c_empRec CURSOR FOR SELECT empno, deptno, sal FROM emp;
	DECLARE CONTINUE handler FOR NOT FOUND SET recNotFound = TRUE;
	OPEN c_empRec;
	cursor_Loop : LOOP
		FETCH c_empRec INTO p_empno, p_deptno, p_sal;
		IF recNotFound THEN
			LEAVE cursor_Loop;
		END IF;
		SELECT incentiveCalc(p_deptno, p_sal) INTO p_incentive;
		UPDATE emp SET incentive = p_incentive WHERE empno = p_empno;
	END LOOP cursor_Loop;
	CLOSE c_empRec;
END$$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION incentiveCalc(p_deptno INT, p_sal INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE p_incentive, p_avgSal INT;
	SELECT FLOOR(AVG(sal)) FROM emp WHERE deptno = p_deptno INTO p_avgSal;
	IF p_sal > p_avgSal THEN
		SET p_incentive = 0;
	ELSE 
		SET p_incentive = p_sal*0.1;
	END IF;
	RETURN (p_incentive);
END $$
DELIMITER ;
 
CALL incentiveCalcUpdate();

-- o/p:

/*
+-------+--------+-----------+------+------------+------+------+--------+-----------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | incentive |
+-------+--------+-----------+------+------------+------+------+--------+-----------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |        80 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |         0 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |       125 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |         0 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       125 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |         0 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |       245 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |         0 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |         0 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |       150 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |       110 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |        95 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |         0 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |       130 |
+-------+--------+-----------+------+------------+------+------+--------+-----------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. Write a program to get the count of employees working in provided deptno

DELIMITER $$
CREATE FUNCTION getEmpCount(p_deptno INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE p_empCount INT;
	SELECT COUNT(*) FROM emp WHERE deptno = p_deptno INTO p_empCount;
	RETURN (p_empCount);
END $$
DELIMITER ;

SELECT getEmpCount(10);

-- o/p:

-- +-----------------+
-- | getEmpCount(10) |
-- +-----------------+
-- |               3 |
-- +-----------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------