-- Exercise Statement
	-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `14_confirmation_rate_1` (
			`user_id` INT AUTO_INCREMENT,
			`time_stamp` DATETIME,
			PRIMARY KEY (`user_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `14_confirmation_rate_2` (
			`user_id` INT AUTO_INCREMENT,
			`time_stamp` DATETIME,
			`action` ENUM('confirmed','timeout'),
			PRIMARY KEY (`user_id`, `time_stamp`),
			KEY `user_id_fk` (`user_id`),
			CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `14_confirmation_rate_1` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `14_confirmation_rate_1` (`user_id`, `time_stamp`)
		VALUES
			(3, '2020-03-21 10:16:13'),
			(7, '2020-01-04 13:57:59'),
			(2, '2020-07-29 23:09:44'),
			(6, '2020-12-09 10:39:37');

		INSERT INTO `14_confirmation_rate_2` (`user_id`, `time_stamp`, `action`)
		VALUES
			(3, '2021-01-06 03:30:46', 'timeout'),
			(3, '2021-07-14 14:00:00', 'timeout'),
			(7, '2021-06-12 11:57:29', 'confirmed'),
			(7, '2021-06-13 12:58:28', 'confirmed'),
			(7, '2021-06-14 13:59:27', 'confirmed'),
			(2, '2021-01-22 00:00:00', 'confirmed'),
			(2, '2021-02-28 23:59:59', 'timeout');

	-- Exercise Answer
		SELECT t1.`user_id`, ROUND(IFNULL(AVG(t2.`action` = 'confirmed'), 0), 2) AS `confirmation_rate`
		FROM `14_confirmation_rate_1` t1
		LEFT JOIN `14_confirmation_rate_2` t2 ON t2.`user_id` = t1.`user_id`
		GROUP BY t1.`user_id`;

	-- Solution published 
		-- https://leetcode.com/problems/confirmation-rate/solutions/4735136/my-solution/
