-- Exercise Statement
	-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `19_queries_quality_and_percentage` (
			`query_name` VARCHAR(255),
			`result` VARCHAR(255),
			`position` INT CHECK (`position` BETWEEN 1 AND 500),
    		`rating` INT CHECK (`rating` BETWEEN 1 AND 5)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate
		INSERT INTO `19_queries_quality_and_percentage` (`query_name`, `result`, `position`, `rating`)
		VALUES
			('Dog', 'Golden Retriever', 1, 5),
			('Dog', 'German Shepherd', 2, 5),
			('Dog', 'Mule', 200, 1),
			('Cat', 'Shirazi', 5, 2),
			('Cat', 'Siamese', 3, 3),
			('Cat', 'Sphynx', 7, 4);

	-- Exercise Answer
		SELECT
			`query_name`,
			ROUND(AVG(`rating` / `position`), 2) AS `quality`,
			ROUND(100 * SUM(CASE WHEN `rating` < 3 THEN 1 ELSE 0 END) / COUNT(`rating`), 2) AS `poor_query_percentage`
		FROM `19_queries_quality_and_percentage`
		WHERE `query_name` IS NOT NULL
		GROUP BY `query_name`;

	-- Solution published 
		-- https://leetcode.com/problems/queries-quality-and-percentage/solutions/4797276/a-simple-solution/
