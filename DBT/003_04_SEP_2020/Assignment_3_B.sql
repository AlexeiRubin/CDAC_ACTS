-- ---------------------------------
-- ---------------------------------
-- Questions on WHERE Clause--------
-- ---------------------------------
-- ---------------------------------

-- 1. Display the Supplier table in the descending order of CITY. 

SELECT * FROM suppliers ORDER BY city DESC;

-- o/p:

-- +------+-------+--------+--------+
-- | SNUM | SNAME | STATUS | CITY   |
-- +------+-------+--------+--------+
-- |    2 | Jones |     10 | Paris  |
-- |    3 | Blake |     30 | Paris  |
-- |    1 | Smith |     20 | London |
-- |    4 | Clark |     20 | London |
-- |    5 | Adams |     30 | Athens |
-- +------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 2. Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names. 

SELECT * FROM parts ORDER BY city, pname;

-- o/p:

-- +------+-------+-------+--------+--------+
-- | PNUM | PNAME | COLOR | WEIGHT | CITY   |
-- +------+-------+-------+--------+--------+
-- |    6 | Cog   | Red   |   19.0 | London |
-- |    1 | Nut   | Red   |   12.0 | London |
-- |    4 | Screw | Red   |   14.0 | London |
-- |    3 | Screw | Blue  |   17.0 | Oslo   |
-- |    2 | Bolt  | Green |   17.0 | Paris  |
-- |    5 | Cam   | Blue  |   12.0 | Paris  |
-- +------+-------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. Display all the Suppliers with a status between 10 and 20. 

SELECT *
	FROM suppliers
		WHERE status
			BETWEEN 10 AND 20;

-- o/p:

-- +------+-------+--------+--------+
-- | SNUM | SNAME | STATUS | CITY   |
-- +------+-------+--------+--------+
-- |    1 | Smith |     20 | London |
-- |    2 | Jones |     10 | Paris  |
-- |    4 | Clark |     20 | London |
-- +------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4. Display all the Parts and their Weight, which are not in the range of 10 and 15. 

SELECT pname, weight
	FROM parts
		WHERE weight
			NOT BETWEEN 10 AND 15;

-- o/p:

-- +-------+--------+
-- | pname | weight |
-- +-------+--------+
-- | Bolt  |   17.0 |
-- | Screw |   17.0 |
-- | Cog   |   19.0 |
-- +-------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 5. Display all the Part names starting with the letter ‘S’. 

SELECT *
	FROM parts
		WHERE pname
			LIKE 'S%';

-- o/p:

-- +------+-------+-------+--------+--------+
-- | PNUM | PNAME | COLOR | WEIGHT | CITY   |
-- +------+-------+-------+--------+--------+
-- |    3 | Screw | Blue  |   17.0 | Oslo   |
-- |    4 | Screw | Red   |   14.0 | London |
-- +------+-------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6. Display all the Suppliers, belonging to cities starting with the letter ‘L’. 

SELECT *
	FROM suppliers
		WHERE city
			LIKE 'L%';

-- o/p:

-- +------+-------+--------+--------+
-- | SNUM | SNAME | STATUS | CITY   |
-- +------+-------+--------+--------+
-- |    1 | Smith |     20 | London |
-- |    4 | Clark |     20 | London |
-- +------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------


-- ---------------------------------
-- ---------------------------------
-- Questions on GROUP FUNCTIONS-----
-- ---------------------------------
-- ---------------------------------


-- 1. Display the minimum Status in the Supplier table. 

SELECT MIN(status) FROM suppliers;

-- o/p:

-- +-------------+
-- | MIN(status) |
-- +-------------+
-- |          10 |
-- +-------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 2. Display the maximum Weight in the Parts table. 

SELECT MAX(weight) FROM parts;

-- o/p:

-- +-------------+
-- | MAX(weight) |
-- +-------------+
-- |        19.0 |
-- +-------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 3. Display the average Weight of the Parts. 

SELECT AVG(weight) FROM parts;

-- o/p:

-- +-------------+
-- | AVG(weight) |
-- +-------------+
-- |    15.16667 |
-- +-------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 4. Display the total Quantity sold for part ‘P1’. 

SELECT SUM(qty) AS "Total Quantity"
	FROM orders
		WHERE pnum = 1;

-- o/p:

-- +----------------+
-- | Total Quantity |
-- +----------------+
-- |            600 |
-- +----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 5. Display the total Quantity sold for each part. 

SELECT pnum, SUM(qty) AS "Total Quantity"
	FROM orders
		GROUP BY pnum;

-- o/p:

-- +------+----------------+
-- | pnum | Total Quantity |
-- +------+----------------+
-- |    1 |            600 |
-- |    2 |           1000 |
-- |    3 |            400 |
-- |    4 |            500 |
-- |    5 |            500 |
-- |    6 |            100 |
-- +------+----------------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 6. Display the average Quantity sold for each part. 

SELECT pnum, AVG(qty) AS "Average"
	FROM orders
		GROUP BY pnum;

-- o/p:

-- +------+----------+
-- | pnum | Average  |
-- +------+----------+
-- |    1 | 300.0000 |
-- |    2 | 250.0000 |
-- |    3 | 400.0000 |
-- |    4 | 250.0000 |
-- |    5 | 250.0000 |
-- |    6 | 100.0000 |
-- +------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 7. Display the maximum Quantity sold for each part, provided the maximum Quantity is greater than 800. 

SELECT pnum, MAX(qty) AS "TotalQuantity" FROM orders GROUP BY pnum HAVING TotalQuantity > 800;

-- o/p:

-- Empty set

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 8. Display the Status and the count of Suppliers with that Status. 

SELECT status, COUNT(*) FROM suppliers GROUP BY status;

-- o/p:

-- +--------+----------+
-- | status | COUNT(*) |
-- +--------+----------+
-- |     20 |        2 |
-- |     10 |        1 |
-- |     30 |        2 |
-- +--------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 9. What is the difference between COUNT(Status) and COUNT(*) ? 

-- COUNT(status) yeilds the count of records preserved in the status column.

-- COUNT(*) yeilds the count of the total records preserved in the suppliers table;

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 10. Display the Status and the Count of Suppliers with that Status in the following format as shown below:- 

--  Status	    Count 
-- 	 Ten	      1 
-- 	 Twenty	      2 
-- 	 Thirty	      2

SELECT REPLACE(
		REPLACE(
			REPLACE(status, 10, 'Ten'), 20, 'Twenty'), 30, 'Thirty') AS "Status ", COUNT(*)
				FROM suppliers
					GROUP BY status
						ORDER BY status;

-- o/p:

-- +---------+----------+
-- | Status  | COUNT(*) |
-- +---------+----------+
-- | Ten     |        1 |
-- | Twenty  |        2 |
-- | Thirty  |        2 |
-- +---------+----------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------


-- ---------------------------------
-- ---------------------------------
-- Questions on SUB QUERIES & JOINS-
-- ---------------------------------
-- ---------------------------------


-- 1. Display all the Suppliers with the same Status as the supplier, ‘CLARK’. 

SELECT *
	FROM suppliers
		WHERE status = (SELECT status
					FROM suppliers
						WHERE sname = 'Clark');

-- or

SELECT s.*
	FROM suppliers s
		JOIN suppliers c
			ON s.status = c.status
				WHERE c.sname = 'Clark';

-- o/p:

-- +------+-------+--------+--------+
-- | SNUM | SNAME | STATUS | CITY   |
-- +------+-------+--------+--------+
-- |    1 | Smith |     20 | London |
-- |    4 | Clark |     20 | London |
-- +------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 2. Display all the Parts which have more Weight than all the Red parts. 

SELECT *
	FROM parts
		WHERE weight > ALL (SELECT weight
					FROM parts
						WHERE color = 'Red');

-- or 

SELECT p.*
	FROM parts AS p
		JOIN parts AS r
			ON p.weight > r.weight
				WHERE r.color = 'Red'
					GROUP BY p.color;

-- o/p:

-- +------+-------+-------+--------+--------+
-- | PNUM | PNAME | COLOR | WEIGHT | CITY   |
-- +------+-------+-------+--------+--------+
-- |    2 | Bolt  | Green |   17.0 | Paris  |
-- |    3 | Screw | Blue  |   17.0 | Oslo   |
-- |    4 | Screw | Red   |   14.0 | London |
-- +------+-------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
 
-- 3. Display all the Parts with Weight less than all the Green parts. 

SELECT *
	FROM parts
		WHERE weight < ALL (SELECT weight
					FROM parts
						WHERE color = 'Green');

-- or

SELECT p.*
	FROM parts AS p
		JOIN parts AS g
			ON p.weight < g.weight
				WHERE g.color = 'Green';

-- o/p:

-- +------+-------+-------+--------+--------+
-- | PNUM | PNAME | COLOR | WEIGHT | CITY   |
-- +------+-------+-------+--------+--------+
-- |    1 | Nut   | Red   |   12.0 | London |
-- |    4 | Screw | Red   |   14.0 | London |
-- |    5 | Cam   | Blue  |   12.0 | Paris  |
-- +------+-------+-------+--------+--------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 4. Display the name of the Supplier who has sold the maximum Quantity (in one sale). 

SELECT sname
	FROM suppliers
		WHERE snum
			IN (SELECT snum
					FROM orders
						GROUP BY snum
							HAVING MAX(qty) = (SELECT MAX(maxQuantity)
										FROM (SELECT snum, MAX(qty) AS maxQuantity
											FROM orders
												GROUP BY snum) AS temp));

-- o/p:

-- +-------+
-- | sname |
-- +-------+
-- | Clark |
-- | Jones |
-- | Smith |
-- +-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- 5. Display the name of the Supplier who has sold the maximum overall Quantity (sum of Sales). 

SELECT sname
	FROM suppliers
		WHERE snum
			IN (SELECT snum
					FROM orders
						GROUP BY snum
							HAVING SUM(qty) = (SELECT MAX(sumQuantity)
										FROM (SELECT snum, SUM(qty) sumQuantity
											FROM orders
												GROUP BY snum) AS temp));

-- o/p:

-- +-------+
-- | sname |
-- +-------+
-- | Smith |
-- +-------+

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
