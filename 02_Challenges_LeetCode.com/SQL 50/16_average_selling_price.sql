-- Exercise Statement
	-- https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `16_average_selling_price_1` (
			`product_id` INT AUTO_INCREMENT,
			`start_date` DATE,
			`end_date` DATE,
			`price` INT,
			PRIMARY KEY (`product_id`, `start_date`, `end_date`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `16_average_selling_price_2` (
			`product_id` INT,
			`purchase_date` DATE,
			`units` INT
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `16_average_selling_price_1` (`product_id`, `start_date`, `end_date`, `price`)
		VALUES
			(1, '2019-02-17', '2019-02-28', 5),
			(1, '2019-03-01', '2019-03-22', 20),
			(2, '2019-02-01', '2019-02-20', 14),
			(2, '2019-02-21', '2019-03-31', 30);

		INSERT INTO `16_average_selling_price_2` (`product_id`, `purchase_date`, `units`)
		VALUES
			(1, '2019-02-25', 100),
			(1, '2019-03-01', 15),
			(2, '2019-02-10', 200),
			(2, '2019-03-22', 30);

	-- Exercise Answer
		SELECT
			t1.`product_id`,
			COALESCE(ROUND(SUM(t1.`price` * t2.`units`) / NULLIF(SUM(t2.`units`), 0), 2), 0) AS `average_price`
		FROM `16_average_selling_price_1` AS t1
		LEFT JOIN `16_average_selling_price_2` AS t2 ON t1.`product_id` = t2.`product_id`
		WHERE t2.`purchase_date` BETWEEN t1.`start_date` AND t1.`end_date` OR t2.`purchase_date` IS NULL
		GROUP BY t1.`product_id`;

	-- Solution published 
		-- https://leetcode.com/problems/average-selling-price/solutions/4759802/a-simple-solution/
