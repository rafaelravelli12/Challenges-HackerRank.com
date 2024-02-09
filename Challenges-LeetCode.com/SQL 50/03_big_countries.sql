-- Exercise Statement
	-- https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50
-- Solved with MYQSL
-- Database Creation 	
	CREATE TABLE `03_big_countries` (
		`name` VARCHAR(255),
		`continent` VARCHAR(255),
		`area` INT,
		`population` INT,
		`gdp` BIGINT,
		PRIMARY KEY (`name`)
	) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Database Populate 
	INSERT INTO `03_big_countries` (`name`, `continent`, `area`, `population`, `gdp`)
	VALUES
		('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
		('Albania', 'Europe', 28748, 2831741, 12960000000),
		('Algeria', 'Africa', 2381741, 37100000, 188681000000),
		('Andorra', 'Europe', 468, 78115, 3712000000),
		('Angola', 'Africa', 1246700, 20609294, 100990000000);

-- Exercise Answer
	SELECT `name`, `area`, `population`
	FROM `03_big_countries`
	WHERE `area` >= 300000 OR `population` >= 5000000;
