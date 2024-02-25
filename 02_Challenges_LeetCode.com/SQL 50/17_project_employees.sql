-- Exercise Statement
	-- https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `17_project_employees_1` (
			`project_id` INT,
			`employee_id` INT,
			PRIMARY KEY (`project_id`, `employee_id`),
			KEY `employee_id_fk` (`employee_id`),
			CONSTRAINT `employee_id_fk` FOREIGN KEY (`employee_id`) REFERENCES `17_project_employees_2` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `17_project_employees_2` (
			`employee_id` INT,
			`name` VARCHAR(255),
    		`experience_years` INT NOT NULL DEFAULT 1,
			PRIMARY KEY (`employee_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `17_project_employees_1` (`project_id`, `employee_id`)
		VALUES
			(1, 1),
			(1, 2),
			(1, 3),
			(2, 1),
			(2, 4);

		INSERT INTO `17_project_employees_2` (`employee_id`, `name`, `experience_years`)
		VALUES
			(1, 'Khaled', 3),
			(2, 'Ali', 2),
			(3, 'John', 1),
			(4, 'Doe', 2);

	-- Exercise Answer
		SELECT
			t1.`project_id`,
			ROUND(SUM(t2.`experience_years`) / COUNT(t1.`project_id`), 2) AS `average_years`
		FROM `17_project_employees_1` t1
		INNER JOIN `17_project_employees_2` t2 ON t1.`employee_id` = t2.`employee_id`
		WHERE t2.`experience_years` IS NOT NULL
		GROUP BY t1.`project_id`;

	-- Solution published 
		-- https://leetcode.com/problems/project-employees-i/solutions/4781043/a-simple-solution/
