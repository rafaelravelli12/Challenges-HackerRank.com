-- Exercise Statement
	-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
	
-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `13_managers_with_at_least_5_direct_reports` (
		`id` INT AUTO_INCREMENT,
		`name` VARCHAR(255),
		`department` VARCHAR(255),
		`managerId` INT,
		PRIMARY KEY (`id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `13_managers_with_at_least_5_direct_reports` (`id`, `name`, `department`, `managerId`)
		VALUES
			(101, 'John', 'A', NULL),
			(102, 'Dan', 'A', 101),
			(103, 'James', 'A', 101),
			(104, 'Amy', 'A', 101),
			(105, 'Anne', 'A', 101),
			(106, 'Ron', 'B', 101);

	-- Exercise Answer
		SELECT t2.`name` FROM `13_managers_with_at_least_5_direct_reports` t1
		INNEER JOIN `13_managers_with_at_least_5_direct_reports` t2 ON t1.`managerId` = t2.`id`
		GROUP BY t1.`managerId` 
		HAVING COUNT(t1.`managerId`) >= 5

	-- Solution published 
		-- https://leetcode.com/problems/students-and-examinations/solutions/4729549/solution-with-cross-and-left-joins/
