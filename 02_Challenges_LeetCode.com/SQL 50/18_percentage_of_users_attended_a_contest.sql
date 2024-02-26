-- Exercise Statement
	-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `18_percentage_of_users_attended_a_contest_1` (
			`user_id` INT,
			`user_name` VARCHAR(255),
			PRIMARY KEY (`user_id`, `user_name`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `18_percentage_of_users_attended_a_contest_2` (
			`contest_id` INT,
			`user_id` INT,
			PRIMARY KEY (`contest_id`, `user_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `18_percentage_of_users_attended_a_contest_1` (`user_id`, `user_name`)
		VALUES
			(6, 'Alice'),
			(2, 'Bob'),
			(7, 'Alex');

		INSERT INTO `18_percentage_of_users_attended_a_contest_2` (`contest_id`, `user_id`)
		VALUES
			(215, 6),
			(209, 2),
			(208, 2),
			(210, 6),
			(208, 6),
			(209, 7),
			(209, 6),
			(215, 7),
			(208, 7),
			(210, 2),
			(207, 2),
			(210, 7);

	-- Exercise Answer
		SELECT
    		t2.`contest_id`,
    		ROUND(100 * COUNT(t2.1user_id1) / (SELECT COUNT(*) FROM `18_percentage_of_users_attended_a_contest_1` t1), 2) AS percentage
		FROM `18_percentage_of_users_attended_a_contest_1` t1
		INNER JOIN `18_percentage_of_users_attended_a_contest_2` t2 ON t1.`user_id` = t2.`user_id`
		GROUP BY t2.`contest_id`
		ORDER BY percentage DESC, t2.`contest_id` ASC;

	-- Solution published 
		-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/solutions/4787207/a-simple-solution/?envType=study-plan-v2&envId=top-sql-50
