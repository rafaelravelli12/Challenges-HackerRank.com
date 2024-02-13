-- Exercise Statement
	-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
-- Solved with MYQSL
-- Database Creation 	
	CREATE TABLE `08_customer_who_visited_but_did_not_make_any_transactions_one` (
		`visit_id` INT,
		`customer_id` INT,
		PRIMARY KEY (`visit_id`)
	) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Database Populate 
	INSERT INTO `08_customer_who_visited_but_did_not_make_any_transactions_one` (`visit_id`,`customer_id`)
	VALUES
		(1, 23),
		(2, 9),
		(4, 30),
		(5, 54),
		(6, 96),
		(7, 54),
		(8, 54);

-- Database Creation 	
	CREATE TABLE `08_customer_who_visited_but_did_not_make_any_transactions_two` (
		`transaction_id` INT,
		`visit_id` INT,
		`amount` INT,
		PRIMARY KEY (`transaction_id`)
	) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Database Populate 
	INSERT INTO `08_customer_who_visited_but_did_not_make_any_transactions_two` (`transaction_id`,`visit_id`, `amount`)
	VALUES
		(2, 5, 310),
		(3, 5, 300),
		(9, 5, 200),
		(12, 1, 910),
		(13, 2, 970);

-- Exercise Answer
	select o.`customer_id`, COUNT(*) AS count_no_trans 
	from `08_customer_who_visited_but_did_not_make_any_transactions_one` o
	left join `08_customer_who_visited_but_did_not_make_any_transactions_two` t on o.`visit_id` = t.`visit_id`
	where t.`transaction_id` is null
	group by o.`customer_id`
