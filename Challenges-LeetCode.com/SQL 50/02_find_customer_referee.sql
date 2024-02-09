-- Exercise Statement
	-- https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
-- Solved with MYQSL
-- Database Creation 	
	CREATE TABLE `02_find_customer_referee` (
		`id` INT AUTO_INCREMENT,
		`name` VARCHAR(255),
		`referee_id` INT,
		PRIMARY KEY (`id`)
	) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Database Populate 
	INSERT INTO `02_find_customer_referee` (`name`, `referee_id`)
	VALUES
		('Will', null),
		('Jane', null),
		('Alex', 2),
		('Bill', null),
		('Zack', 1),
		('Mark', 2);

-- Exercise Answer
	SELECT `name`
	FROM `02_find_customer_referee`
	WHERE `referee_id` != 2 or `referee_id` IS NULL;
