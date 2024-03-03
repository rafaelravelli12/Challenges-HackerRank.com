-- Exercise Statement
	-- https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `20_monthly_transactions_1` (
			`id` INT,
			`country` VARCHAR(255),
			`state`  ENUM('approved', 'declined'),
    		`amount` INT,
			`trans_date` DATE,
			PRIMARY KEY (`id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate
		INSERT INTO `20_monthly_transactions_1` (`id`, `country`, `state`, `amount`, `trans_date`)
		VALUES
		(121, 'US', 'approved', 1000, '2018-12-18'),
		(122, 'US', 'declined', 2000, '2018-12-19'),
		(123, 'US', 'approved', 2000, '2019-01-01'),
		(124, 'DE', 'approved', 2000, '2019-01-07');

	-- Exercise Answer
		SELECT
			DATE_FORMAT(`trans_date`, '%Y-%m') AS `month`,
			`country`,
			COUNT(*) AS `trans_count`,
			SUM(CASE WHEN `state` = 'approved' THEN 1 ELSE 0 END) AS `approved_count`,
			SUM(`amount`) AS `trans_total_amount`,
			SUM(CASE WHEN `state` = 'approved' THEN `amount` ELSE 0 END) AS `approved_total_amount`
		FROM `20_monthly_transactions_1`
		GROUP BY `month`, `country`;

	-- Solution published 
		-- https://leetcode.com/problems/monthly-transactions-i/solutions/4813338/a-simple-solution/
