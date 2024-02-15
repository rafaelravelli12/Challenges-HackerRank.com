-- Exercise Statement
	-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
	
-- Solved with MYQSL
	-- Database Creation 	
		CREATE TABLE `10_average_time_of_process_per_machine` (
			`machine_id` INT,
			`process_id` INT,
			`activity_type` ENUM('start', 'end'),
			`timestamp` FLOAT,
			PRIMARY KEY (`machine_id`, `process_id`, `activity_type`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `10_average_time_of_process_per_machine` (`machine_id`, `process_id`, `activity_type`, `timestamp`)
		VALUES
			(0, 0, 'start', 0.712),
			(0, 0, 'end', 1.520),
			(0, 1, 'start', 3.140),
			(0, 1, 'end', 4.120),
			(1, 0, 'start', 0.550),
			(1, 0, 'end', 1.550),
			(1, 1, 'start', 0.430),
			(1, 1, 'end', 1.420),
			(2, 0, 'start', 4.100),
			(2, 0, 'end', 4.512),
			(2, 1, 'start', 2.500),
			(2, 1, 'end', 5.000);

	-- Exercise Answer
		SELECT t1.`machine_id`, ROUND(AVG(t1.`timestamp` - t2.`timestamp`), 3) AS `processing_time` 
		FROM `10_average_time_of_process_per_machine` t1
		INNER JOIN `10_average_time_of_process_per_machine` t2
		ON t1.`machine_id` = t2.`machine_id` AND t1.`process_id` = t2.`process_id` AND t1.`activity_type` != t2.`activity_type`
		WHERE t1.`activity_type` = 'end'
		GROUP BY t1.`machine_id`;

	-- Solution published 
		-- https://leetcode.com/problems/average-time-of-process-per-machine/solutions/4728567/solution-using-inner-join/
