-- Procedure

-- 1. Write a store procedure to get the level based on the employee's id. (IF ELSE)
/*
            Level Definition:-

                    Salary >  20000  - Consider them 'MANAGER'

                    Salary between 15000 and 20000 - Consider them 'LEADS'

                    Salary between 8000 and 15000 - Consider then 'SENIOR DEVELOPER'

                    Salary < 8000 - Consider them 'FRESHERS'

            Conditions:- 

                    Use at least one IN variable and one OUT variable
*/

DELIMITER $$
CREATE PROCEDURE getLevel(p_sal INT, OUT p_level VARCHAR(20))
BEGIN
	IF p_sal > 20000 THEN
		SET p_level = 'MANAGER';
	ELSEIF p_sal > 15000 AND p_sal <= 20000 THEN
		SET p_level = 'LEADS';
	ELSEIF p_sal > 8000 AND p_sal <= 15000 THEN
		SET p_level = 'SENIOR DEVELOPER';
	ELSE
		SET p_level = 'FRESHERS';
	END IF;
END$$
DELIMITER ;

CALL getLevel(15000, @retValue);
SELECT @retValue;

-- o/p:

-- +------------------+
-- | @retValue        |
-- +------------------+
-- | SENIOR DEVELOPER |
-- +------------------+

CALL getLevel(20000, @retValue);
SELECT @retValue;

-- o/p:

-- +-----------+
-- | @retValue |
-- +-----------+
-- | LEADS     |
-- +-----------+

CALL getLevel(8000, @retValue);
SELECT @retValue;

-- o/p:

-- +-----------+
-- | @retValue |
-- +-----------+
-- | FRESHERS  |
-- +-----------+

CALL getLevel(25000, @retValue);
SELECT @retValue;

-- o/p:

-- +-----------+
-- | @retValue |
-- +-----------+
-- | MANAGER   |
-- +-----------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 2. Write a store procedure to get the numbers from 1 to 10 in words.
/* 
            Like: 

                        1    --    ONE

                        2    --    TWO

                        3    --    THREE...

            Conditions:- 

                    Use CASE operator with IN parameter
*/

DELIMITER $$
CREATE PROCEDURE getNumInWords(p_num INT)
BEGIN
	CASE
	WHEN p_num = 1 THEN SELECT 'ONE';
	WHEN p_num = 2 THEN SELECT 'TWO';
	WHEN p_num = 3 THEN SELECT 'THREE';
	WHEN p_num = 4 THEN SELECT 'FOUR';
	WHEN p_num = 5 THEN SELECT 'FIVE';
	WHEN p_num = 6 THEN SELECT 'SIX';
	WHEN p_num = 7 THEN SELECT 'SEVEN';
	WHEN p_num = 8 THEN SELECT 'EIGHT';
	WHEN p_num = 9 THEN SELECT 'NINE';
	WHEN p_num = 10 THEN SELECT 'TEN';
	ELSE SELECT 'OUT OF RANGE';
	END CASE;
END$$
DELIMITER ;

CALL getNumInWords(1);

-- o/p:

-- +-----+
-- | ONE |
-- +-----+
-- | ONE |
-- +-----+

CALL getNumInWords(7);

-- o/p:

-- +-------+
-- | SEVEN |
-- +-------+
-- | SEVEN |
-- +-------+

CALL getNumInWords(5);

-- o/p:

-- +------+
-- | FIVE |
-- +------+
-- | FIVE |
-- +------+

CALL getNumInWords(3);

-- o/p:

-- +-------+
-- | THREE |
-- +-------+
-- | THREE |
-- +-------+

CALL getNumInWords(14);

-- o/p:

-- +--------------+
-- | OUT OF RANGE |
-- +--------------+
-- | OUT OF RANGE |
-- +--------------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 3. Write a stored procedure to spell year in words.
/*
            Like:

                        2020    --    TWO THOUSAND TWENTY

                        1978    --    NINETEEN HUNDRED SEVENTY EIGHT
*/

DELIMITER $$
CREATE PROCEDURE spellYear(p_year INT)
BEGIN
	DECLARE thousandsValue, hundredsValue, tensValueMod, tensValue, onesValueMod INT;
	DECLARE hundredStr, tenStr, oneStr VARCHAR(20);
	SET thousandsValue = FLOOR(p_year/1000);
	SET hundredsValue = FLOOR(p_year/100);
	SET tensValueMod = p_year%100;
	SET tensValue = FLOOR(tensValueMod/10); 
	SET onesValueMod = p_year%10;
	SET hundredStr = '';
	SET tenStr = '';
	SET oneStr = '';
	CASE 
		WHEN thousandsValue = 1 THEN 
		IF hundredsValue = 19 THEN
			SET hundredStr = 'NINETEEN';
		END IF;
		IF tensValue = 7 THEN
			SET tenStr = 'SEVENTY';
		END IF;
		IF onesValueMod = 8 THEN
			SET oneStr = 'EIGHT';
		END IF;
		SELECT hundredStr, tenStr, oneStr;
		WHEN thousandsValue = 2 THEN
		IF hundredsValue = 20 THEN
			SET hundredStr = 'TWO THOUSAND';
		END IF;
		IF tensValue = 2 THEN
			SET tenStr = 'TWENTY';
		END IF;
		SELECT hundredStr, tenStr;
	END CASE;
END$$
DELIMITER ;

CALL spellYear(2020);

-- o/p:

-- +--------------+--------+
-- | hundredStr   | tenStr |
-- +--------------+--------+
-- | TWO THOUSAND | TWENTY |
-- +--------------+--------+

CALL spellYear(1978);

-- o/p:

-- +------------+---------+--------+
-- | hundredStr | tenStr  | oneStr |
-- +------------+---------+--------+
-- | NINETEEN   | SEVENTY | EIGHT  |
-- +------------+---------+--------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 4. Write a Fibonacci Series by passing the length of the series required
/*
            Like:

                        4    --    0    1    1    2

                        8    --    0    1    1    2    3    5    8    13

            Conditions:- 

                    Use WHILE EXPRESSSION - DO
*/

DELIMITER $$
CREATE PROCEDURE fibonacciSeries(p_length INT)
BEGIN
	DECLARE i, a, b, res INT;
	SET i = 0;
	SET a = 0;
	SET b = 1;
	SET res = 0;
	WHILE i != p_length DO
		IF i = 0 THEN
			SELECT res;
		ELSEIF i = 1 THEN
			SET res = b;
			SELECT res;
		ELSE
			SET res = a + b;
			SET a = b;
			SET b = res;
			SELECT res;
		END IF;
	SET i = i + 1;
	END WHILE;
	
END$$
DELIMITER ;

CALL fibonacciSeries(1);

-- o/p:

-- +------+
-- | res  |
-- +------+
-- |    0 |
-- +------+

CALL fibonacciSeries(2);

-- o/p:

-- +------+
-- | res  |
-- +------+
-- |    0 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

CALL fibonacciSeries(3);

-- o/p:

-- +------+
-- | res  |
-- +------+
-- |    0 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

CALL fibonacciSeries(4);

-- o/p:

-- +------+
-- | res  |
-- +------+
-- |    0 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    2 |
-- +------+

CALL fibonacciSeries(8);

-- o/p:

-- +------+
-- | res  |
-- +------+
-- |    0 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    1 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    2 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    3 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    5 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |    8 |
-- +------+

-- +------+
-- | res  |
-- +------+
-- |   13 |
-- +------+

-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------

-- 5.   Write the Factorial program to display the 
/*
            Factorial String and Value

            Like: Factorial of 5 is 120

                    Factorial String:   1*2*3*4*5

                    Factorial Value:    120

            Conditions:- 

                    Use Repeat --> Until
*/

DELIMITER $$
CREATE PROCEDURE factorialValue(p_num INT)
BEGIN
	DECLARE factStr VARCHAR(20);
	DECLARE prevStr VARCHAR(20);
	DECLARE factValue INT;
	DECLARE itr INT;
	SET factValue = 1;
	SET itr = 1;
	SET prevStr = '';
	REPEAT 
		SET factStr = CONCAT(prevStr, itr, '*');
		SET factValue = factValue * itr;
		SET itr = itr + 1;
		SET prevStr = factStr;
	UNTIL itr > p_num
	END REPEAT;
	SELECT factStr, factValue;
END$$
DELIMITER ;

CALL factorialValue(2);

-- o/p:

-- +---------+-----------+
-- | factStr | factValue |
-- +---------+-----------+
-- | 1*2*    |         2 |
-- +---------+-----------+

CALL factorialValue(4);

-- o/p:

-- +----------+-----------+
-- | factStr  | factValue |
-- +----------+-----------+
-- | 1*2*3*4* |        24 |
-- +----------+-----------+

CALL factorialValue(6);

-- o/p:

-- +--------------+-----------+
-- | factStr      | factValue |
-- +--------------+-----------+
-- | 1*2*3*4*5*6* |       720 |
-- +--------------+-----------+

CALL factorialValue(8);

-- o/p:

-- +------------------+-----------+
-- | factStr          | factValue |
-- +------------------+-----------+
-- | 1*2*3*4*5*6*7*8* |     40320 |
-- +------------------+-----------+

CALL factorialValue(3);

-- o/p:

-- +---------+-----------+
-- | factStr | factValue |
-- +---------+-----------+
-- | 1*2*3*  |         6 |
-- +---------+-----------+
-- ----------------------------------------------------------------------
-- ----------------------------------------------------------------------