-- Exercise Statement
	-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation 	
		CREATE TABLE `06_replace_employee_id_with_the_unique_identifier_one` (
			`id` INT AUTO_INCREMENT,
			`name` VARCHAR(255),
			PRIMARY KEY (`id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `06_replace_employee_id_with_the_unique_identifier_one` (`id`,`name`)
		VALUES
			(1, 'Alice'),
			(7, 'Bob'),
			(11, 'Meir'),
			(90, 'Winston'),
			(3, 'Jonathan');

	-- Database Creation 	
		CREATE TABLE `06_replace_employee_id_with_the_unique_identifier_two` (
			`id` INT,
			`unique_id` INT,
			PRIMARY KEY (`id`, `unique_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `06_replace_employee_id_with_the_unique_identifier_two` (`id`,`unique_id`)
		VALUES
			(3, 1),
			(11, 2),
			(90, 3);

	-- Exercise Answer
		SELECT a2.`unique_id`, a1.`name`
		FROM `06_replace_employee_id_with_the_unique_identifier_one` a1
		LEFT JOIN `06_replace_employee_id_with_the_unique_identifier_two` a2 on a1.`id` = a2.`id`;
