-- Procedure

-- 1. Prepare a program which can perform following operation
--    Lookout for tables which has missing constraints.
--    Display list of those tables.

DELIMITER $$
CREATE PROCEDURE missingConstraints()
BEGIN
	SELECT DISTINCT table_name
		FROM information_schema.tables
			WHERE table_schema = 'scottschema'
				AND table_name NOT IN (SELECT table_name
										FROM information_schema.table_constraints
											WHERE constraint_schema = 'scottschema');
END$$
DELIMITER ;

call missingConstraints();

-- o/p:

-- +------------+
-- | TABLE_NAME |
-- +------------+
-- | bonus      |
-- | dept       |
-- | dummy      |
-- | emp        |
-- | salgrade   |
-- +------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
	
-- 2. Prepare a program to delete the data from emp.
--    It will receive two inputs employee number and employee name.
--    If employee number is passed as null then delete the data based on employee name.
--    Backup the deleted data to employee_backup table.

DELIMITER $$
CREATE PROCEDURE deleteEmployeeData(p_empno INT, p_ename VARCHAR(10))
BEGIN
	IF p_empno IS NULL THEN
		CREATE TABLE IF NOT EXISTS employee_backup LIKE emp;
		INSERT INTO employee_backup SELECT * FROM emp WHERE ename LIKE p_ename;
		DELETE FROM emp WHERE ename LIKE p_ename;
	ELSE
		SELECT p_empno,  p_ename;
	END IF;
END$$
DELIMITER ;

CALL deleteEmployeeData(7844, 'TURNER');

-- o/p:

-- +---------+---------+
-- | p_empno | p_ename |
-- +---------+---------+
-- |    7844 | TURNER  |
-- +---------+---------+

 -- FOR RECOVERY INSERT INTO emp VALUES(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);

CALL deleteEmployeeData(NULL, 'TURNER');

SELECT * FROM employee_backup WHERE ename LIKE 'Turner';

-- o/p:

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

SELECT * FROM emp WHERE ename LIKE 'Turner';

-- o/p:

-- Empty set

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. Prepare a program to insert new record in employee table.
--    It will take the input of employee data.
--    If salary is provided as null then consider the salary as highest salary earned by any employee in same department.
--    If comm is not provided then assume it as 200$.

DELIMITER $$
CREATE PROCEDURE insertNewEmployee
(
	p_empno INT,
	p_ename VARCHAR(10),
	p_job VARCHAR(9),
	p_mgr INT,
	p_hiredate DATE,
	p_sal FLOAT,
	p_comm FLOAT,
	p_deptno INT
)
BEGIN
	IF p_sal IS NULL THEN
		SELECT MAX(sal) FROM emp WHERE deptno = p_deptno INTO p_sal; 
	END IF;
	IF p_comm IS NULL THEN
		SET p_comm = 200.00;
	END IF;
	INSERT INTO emp VALUES(p_empno, p_ename, p_job, p_mgr, p_hiredate, p_sal, p_comm, p_deptno);
END$$
DELIMITER ;

CALL insertNewEmployee(7, 'BOND', 'ANALYST', 7839, '1982-06-22', 77, 7, 20);

SELECT * FROM emp WHERE empno = 7;

-- o/p:

-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |     7 | BOND  | ANALYST | 7839 | 1982-06-22 |   77 |    7 |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

CALL insertNewEmployee(70, 'BONDER', 'ANALYST', 7839, '1982-07-23', NULL, 77, 20);

SELECT * FROM emp WHERE empno = 8;

-- o/p:

-- +-------+--------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+---------+------+------------+------+------+--------+
-- |    70 | BONDER | ANALYST | 7839 | 1982-07-23 | 3000 |   77 |     20 |
-- +-------+--------+---------+------+------------+------+------+--------+

CALL insertNewEmployee(700, 'BONDEST', 'ANALYST', 7839, '1982-08-21', 700, NULL, 20);

SELECT * FROM emp WHERE empno = 9;

-- o/p:

-- +-------+---------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME   | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+---------+---------+------+------------+------+------+--------+
-- |   700 | BONDEST | ANALYST | 7839 | 1982-08-21 |  700 |  200 |     20 |
-- +-------+---------+---------+------+------------+------+------+--------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. Prepare a program to receive the input as table name and column name.
--    Add primary key constraint on provided table's column.

DELIMITER $$
CREATE PROCEDURE addPrimaryKey(p_tableName VARCHAR(10), p_columnName VARCHAR(10))
BEGIN
	SET @tableNameScenario = CONCAT('ALTER TABLE ', p_tableName, ' ADD PRIMARY KEY(', p_columnName, ')');
	PREPARE stmt FROM @tableNameScenario;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;

CREATE TABLE lol(lmao INT);

DESC lol;

-- o/p:

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | lmao  | int  | YES  |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+

CALL addPrimaryKey('lol', 'lmao');

DESC lol;

-- o/p:

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | lmao  | int  | NO   | PRI | NULL    |       |
-- +-------+------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 5. Prepare a program to list those employee who are earning less then avg of their deparment.
--    This program may take input as (p_salary_fix BOOLEAN).
--    If the input is given as true then these employees salary must be set to AVG Salary + 100$.



DELIMITER $$
CREATE PROCEDURE salaryLessThanAverage(p_salary_fix BOOLEAN)
BEGIN
	DECLARE p_empno, p_empSal, p_empDeptno INT;
	DECLARE p_avgDeptSal10, p_avgDeptSal20, p_avgDeptSal30 INT;
	DECLARE recNotFound BOOLEAN;
	DECLARE c_record CURSOR FOR SELECT e.empno, e.sal, e.deptno FROM emp AS e WHERE e.sal < (SELECT FLOOR(AVG(sal)) FROM emp AS s WHERE s.deptno = e.deptno) ORDER BY e.deptno;
	DECLARE CONTINUE handler FOR NOT FOUND SET recNotFound = TRUE;
	SELECT FLOOR(AVG(sal)) FROM emp WHERE deptno = 10 INTO p_avgDeptSal10;
	SELECT FLOOR(AVG(sal)) FROM emp WHERE deptno = 20 INTO p_avgDeptSal20;
	SELECT FLOOR(AVG(sal)) FROM emp WHERE deptno = 30 INTO p_avgDeptSal30;
	IF p_salary_fix THEN
		OPEN c_record;
		cursor_Loop1 : LOOP
			FETCH c_record INTO p_empno, p_empSal, p_empDeptno;
			IF recNotFound THEN
				LEAVE cursor_Loop1;
			END IF;
			IF p_empDeptno = 10 THEN
				SET p_empSal = p_avgDeptSal10 + 100;
			ELSEIF p_empDeptno = 20 THEN
				SET p_empSal = p_avgDeptSal20 + 100;
			ELSE
				SET p_empSal = p_avgDeptSal30 + 100;
			END IF;
			UPDATE emp SET sal = p_empSal WHERE empno = p_empno;
		END LOOP cursor_Loop1;
		CLOSE c_record;
	END IF;
END$$
DELIMITER ;

CALL salaryLessThanAverage(FALSE);

SELECT ename, sal, deptno FROM emp ORDER BY deptno, sal;

-- o/p:
/*
+--------+------+--------+
| ename  | sal  | deptno |
+--------+------+--------+
| MILLER | 1300 |     10 |
| CLARK  | 2450 |     10 |
| KING   | 5000 |     10 |
| SMITH  |  800 |     20 |
| ADAMS  | 1100 |     20 |
| JONES  | 2975 |     20 |
| SCOTT  | 3000 |     20 |
| FORD   | 3000 |     20 |
| JAMES  |  950 |     30 |
| WARD   | 1250 |     30 |
| MARTIN | 1250 |     30 |
| TURNER | 1500 |     30 |
| ALLEN  | 1600 |     30 |
| BLAKE  | 2850 |     30 |
+--------+------+--------+
*/

CALL salaryLessThanAverage(TRUE);

SELECT FLOOR(AVG(sal)) AS "AvgSal", deptno FROM emp GROUP BY deptno ORDER by deptno;

-- o/p:

-- +--------+--------+
-- | AvgSal | deptno |
-- +--------+--------+
-- |   2916 |     10 |
-- |   2175 |     20 |
-- |   1566 |     30 |
-- +--------+--------+

SELECT ename, sal, deptno FROM emp ORDER BY deptno, sal;

-- o/p:

-- +--------+------+--------+
-- | ename  | sal  | deptno |
-- +--------+------+--------+
-- | CLARK  | 3016 |     10 |
-- | MILLER | 3016 |     10 |
-- | KING   | 5000 |     10 |
-- | SMITH  | 2275 |     20 |
-- | ADAMS  | 2275 |     20 |
-- | JONES  | 2975 |     20 |
-- | SCOTT  | 3000 |     20 |
-- | FORD   | 3000 |     20 |
-- | ALLEN  | 1600 |     30 |
-- | WARD   | 1666 |     30 |
-- | MARTIN | 1666 |     30 |
-- | TURNER | 1666 |     30 |
-- | JAMES  | 1666 |     30 |
-- | BLAKE  | 2850 |     30 |
-- +--------+------+--------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------