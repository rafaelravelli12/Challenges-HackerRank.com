-- Exercise Statement
	-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
	
-- Solved with MYQSL
	-- Database Creation 	
		CREATE TABLE `09_rising_temperature` (
			`id` INT,
			`recordDate` DATE,
			`temperature` INT,
			PRIMARY KEY (`id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `09_rising_temperature` (`id`, `recordDate`, `temperature`)
		VALUES
			(1, '2015-01-01', 10),
			(2, '2015-01-02', 25),
			(3, '2015-01-03', 20),
			(4, '2015-01-04', 30);

	-- Exercise Answer
		SELECT  t1.`id` FROM `09_rising_temperature` t1
		LEFT JOIN `09_rising_temperature` t2 ON (t2.`recordDate` + INTERVAL 1 DAY) = t1.`recordDate`
		WHERE t1.`temperature` > t2.`temperature`;

	-- Solution published 
		-- https://leetcode.com/problems/rising-temperature/solutions/4723948/solution-with-inner-join/
