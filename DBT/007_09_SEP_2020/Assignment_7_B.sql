-- 1. Create a table emp8 with columns employee_id, last_name, dept_id without any constraints.
--    Use this table for next questions.

CREATE TABLE emp8
(
	employee_id INT UNSIGNED,
	last_name VARCHAR(20),
	dept_id INT UNSIGNED
);

DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int unsigned | YES  |     | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. Add a new column salary with data type int to table emp8

ALTER TABLE emp8
	ADD salary DECIMAL(10,2);
	
DESC emp8;

-- o/p:

-- +-------------+---------------+------+-----+---------+-------+
-- | Field       | Type          | Null | Key | Default | Extra |
-- +-------------+---------------+------+-----+---------+-------+
-- | employee_id | int unsigned  | YES  |     | NULL    |       |
-- | last_name   | varchar(20)   | YES  |     | NULL    |       |
-- | dept_id     | int unsigned  | YES  |     | NULL    |       |
-- | salary      | decimal(10,2) | YES  |     | NULL    |       |
-- +-------------+---------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. Change data type of column salary to float.

ALTER TABLE emp8
	MODIFY COLUMN salary FLOAT(10,2);

DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int unsigned | YES  |     | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  |     | NULL    |       |
-- | salary      | float(10,2)  | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. Remove column salary from table emp8.

ALTER TABLE emp8
	DROP COLUMN salary;

DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int unsigned | YES  |     | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+	

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 5. Add not null constraint to column employee_id.

ALTER TABLE emp8
	MODIFY COLUMN employee_id INT NOT NULL;
	
DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   |     | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 6. You added not null constaint to employee_id by mistake. Now change it to primary key constraint.

ALTER TABLE emp8
	ADD CONSTRAINT pk_employee_id PRIMARY KEY(employee_id);

DESC emp8;
	
-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   | PRI | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+
	
-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 7. Add foreign key constraint to column dept_id which references to dept_id column in departments table.

ALTER TABLE emp8
	ADD CONSTRAINT fk_dept_id FOREIGN KEY(dept_id) REFERENCES departments(department_id);

DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   | PRI | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 8. Add a new column phone which constraint unique. Now, rename it to contact.

ALTER TABLE emp8
	ADD COLUMN phone varchar(15) UNIQUE;
	
DESC emp8;

-- o/p:
	
-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   | PRI | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- | phone       | varchar(15)  | YES  | UNI | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

ALTER TABLE emp8
	RENAME COLUMN phone TO contact;
	
DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   | PRI | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- | contact     | varchar(15)  | YES  | UNI | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 9. Drop primary key constraint from table emp8.
--    Set a new composite primary key based on last_name and contact.

ALTER TABLE emp8
	DROP PRIMARY KEY;

DESC emp8;
	
-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   |     | NULL    |       |
-- | last_name   | varchar(20)  | YES  |     | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- | contact     | varchar(15)  | YES  | UNI | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

ALTER TABLE emp8
	ADD CONSTRAINT pk_lName_contact PRIMARY KEY(last_name, contact);
	
-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   |     | NULL    |       |
-- | last_name   | varchar(20)  | NO   | PRI | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- | contact     | varchar(15)  | NO   | PRI | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 10. Drop foreign key constraint on dept_id column from table emp8.

ALTER TABLE emp8
	DROP FOREIGN KEY fk_dept_id;
	
DESC emp8;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   |     | NULL    |       |
-- | last_name   | varchar(20)  | YES  | PRI | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- | contact     | varchar(15)  | YES  | PRI | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 11. Rename table emp8 to emp9.

ALTER TABLE emp8
	RENAME TO emp9;

DESC emp8;

-- o/p:

-- Table 'schemaName.emp8' doesn't exist

DESC emp9;

-- o/p:

-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | employee_id | int          | NO   |     | NULL    |       |
-- | last_name   | varchar(20)  | NO   | PRI | NULL    |       |
-- | dept_id     | int unsigned | YES  | MUL | NULL    |       |
-- | contact     | varchar(15)  | NO   | PRI | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 12. Delete table emp9 if it exists.

DROP TABLE IF EXISTS emp9;

DESC emp9;

-- o/p:

-- Table 'schemaName.emp9' doesn't exist

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------
