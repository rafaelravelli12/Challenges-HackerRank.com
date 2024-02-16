-- Exercise Statement
	-- https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation 	
		CREATE TABLE `01_recyclable_and_low_fat_products` (
			`product_id` INT AUTO_INCREMENT,
			`low_fats` ENUM('Y','N'),
			`recyclable` ENUM('Y','N'),
			PRIMARY KEY (`product_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `01_recyclable_and_low_fat_products` (`low_fats`, `recyclable`)
		VALUES
			('Y', 'N'),
			('Y', 'Y'),
			('N', 'Y'),
			('Y', 'Y'),
			('N', 'N');

	-- Exercise Answer
		SELECT `product_id`
		FROM `01_recyclable_and_low_fat_products`
		WHERE `low_fats` = "Y" AND `recyclable` = "Y";

	-- Solution published 
		-- https://leetcode.com/problems/recyclable-and-low-fat-products/solutions/4735174/my-simple-solution/
