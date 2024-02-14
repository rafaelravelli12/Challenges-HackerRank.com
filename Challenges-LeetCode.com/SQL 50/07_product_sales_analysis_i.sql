-- Exercise Statement
	-- https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation	
		CREATE TABLE `07_product_sales_analysis_i_one` (
			`sale_id` int NOT NULL,
			`product_id` int NOT NULL,
			`year` int DEFAULT NULL,
			`quantity` int DEFAULT NULL,
			`price` int DEFAULT NULL,
			PRIMARY KEY (`sale_id`,`product_id`),
			KEY `product_id_fk` (`product_id`),
			CONSTRAINT `product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `07_product_sales_analysis_i_two` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `07_product_sales_analysis_i_one` (`sale_id`,`product_id`, `year`, `quantity`, `price`)
		VALUES
			(1, 100, 2008, 10, 5000),
			(2, 100, 2009, 12, 5000),
			(7, 200, 2011, 15, 9000);

	-- Database Creation 	
		CREATE TABLE `07_product_sales_analysis_i_two` (
			`product_id` INT,
			`product_name` VARCHAR(255),
			PRIMARY KEY (`product_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `07_product_sales_analysis_i_two` (`product_id`,`product_name`)
		VALUES
			(100, 'Nokia'),
			(200, 'Apple'),
			(300, 'Samsung');

	-- Exercise Answer
		SELECT a2.`unique_id`, a1.`name`
		FROM `06_replace_employee_id_with_the_unique_identifier_one` a1
		LEFT JOIN `06_replace_employee_id_with_the_unique_identifier_two` a2 on a1.`id` = a2.`id`;
