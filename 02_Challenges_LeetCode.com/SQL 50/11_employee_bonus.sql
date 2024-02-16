-- Exercise Statement
	-- https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
	
-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `11_employee_bonus_one` (
			`empId` INT,
			`name` VARCHAR(255),
			`supervisor` INT,
			`salary` INT,
			PRIMARY KEY (`empId`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `11_employee_bonus_two` (
			`empId` INT,
			`bonus` INT,
			PRIMARY KEY (`empId`),
			KEY `empId_fk` (`empId`),
			CONSTRAINT `empId_fk` FOREIGN KEY (`empId`) REFERENCES `11_employee_bonus_one` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `11_employee_bonus_one` (`empId`, `name`, `supervisor`, `salary`)
		VALUES
			(3, 'Brad', NULL, 4000),
			(1, 'John', 3, 1000),
			(2, 'Dan', 3, 2000),
			(4, 'Thomas', 3, 4000);

		INSERT INTO `11_employee_bonus_two` (`empId`, `bonus`)
		VALUES
			(2, 500),
			(4, 2000);

	-- Exercise Answer
		SELECT t1.`name`, t2.`bonus` FROM `11_employee_bonus_one` t1
		LEFT JOIN `11_employee_bonus_two` t2 ON t1.`empId` = t2.`empId`
		WHERE t2.`bonus` < 1000 OR t2.`bonus` IS NULL;

	-- Solution published 
		-- https://leetcode.com/problems/employee-bonus/solutions/4728847/solution-with-inner-join/
