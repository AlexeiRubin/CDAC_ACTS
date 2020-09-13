-- USE HR schema for following

-- 1. Create unique index on email in employees table.

CREATE UNIQUE INDEX indx_email ON employees(email);

SHOW INDEX FROM employees;

-- o/p:

/*
+-----------+------------+---------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table     | Non_unique | Key_name      | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+-----------+------------+---------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| employees |          0 | PRIMARY       |            1 | employee_id   | A         |         107 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| employees |          0 | indx_email    |            1 | email         | A         |         107 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| employees |          1 | job_id        |            1 | job_id        | A         |          19 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| employees |          1 | department_id |            1 | department_id | A         |          12 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| employees |          1 | manager_id    |            1 | manager_id    | A         |          19 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+-----------+------------+---------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. create index on job_id and job_title in jobs table.

-- (CANNOT create a clustered index since only ONE Clustered Index can exist in a table made on PK)

CREATE INDEX indx_jId_jTitle ON jobs(job_id, job_title);

SHOW INDEX FROM jobs;

-- o/p:

/*
+-------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table | Non_unique | Key_name        | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+-------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| jobs  |          0 | PRIMARY         |            1 | job_id      | A         |          19 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| jobs  |          1 | indx_jId_jTitle |            1 | job_id      | A         |          19 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| jobs  |          1 | indx_jId_jTitle |            2 | job_title   | A         |          19 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+-------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. create index on month values of hire_date column in employees table.

CREATE INDEX indx_month ON employees((MONTH(hire_date)));

SHOW INDEX FROM employees;

-- o/p:

/*
+-----------+------------+---------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+--------------------+
| Table     | Non_unique | Key_name      | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression         |
+-----------+------------+---------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+--------------------+
| employees |          0 | PRIMARY       |            1 | employee_id   | A         |         107 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL               |
| employees |          0 | indx_email    |            1 | email         | A         |         107 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL               |
| employees |          1 | job_id        |            1 | job_id        | A         |          19 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL               |
| employees |          1 | department_id |            1 | department_id | A         |          12 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL               |
| employees |          1 | manager_id    |            1 | manager_id    | A         |          19 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL               |
| employees |          1 | indx_month    |            1 | NULL          | A         |          12 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | month(`hire_date`) |
+-----------+------------+---------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+--------------------+
*/

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------



-- Perform the following in sequence

-- 1. set auto commit off

SET autocommit = 0;

SELECT @@autocommit;

-- o/p:

-- +--------------+
-- | @@autocommit |
-- +--------------+
-- |            0 |
-- +--------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. insert one row in employees table.

INSERT INTO
employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES(7, 'lol', 'lmao', 'lolLmao', '007007', '1990-09-02', 'AD_PRES', 70070.00, 0.07, null, 90);

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. display the new inserted row.

SELECT LAST_INSERT_ID();

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. execute commit command.

COMMIT;

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 5. display the new inserted row.

SELECT LAST_INSERT_ID();

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 6. create a savepoint.

SAVEPOINT insertSave;

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 7. delete the new inserted row.

DELETE FROM employees WHERE employee_id = LAST_INSERT_ID();

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 8. rollback to the previous created savepoint.

ROLLBACK TO SAVEPOINT insertSave;

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------