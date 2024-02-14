-- Exercise Statement
	-- https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation 	
		CREATE TABLE `05_invalid_tweets` (
			`tweet_id` INT AUTO_INCREMENT,
			`content` VARCHAR(255),
			PRIMARY KEY (`tweet_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `05_invalid_tweets` (`content`)
		VALUES
			('Vote for Biden'),
			('Let us make America great again!');

	-- Exercise Answer
		SELECT DISTINCT `tweet_id`
		FROM `05_invalid_tweets`
		WHERE LENGTH(`content`) > 15;
