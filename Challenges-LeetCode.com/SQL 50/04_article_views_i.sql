-- Exercise Statement
	-- https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation 	
		CREATE TABLE `04_article_views_i` (
			`article_id` INT,
			`author_id` INT,
			`viewer_id` INT,
			`view_date` DATE
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `04_article_views_i` (`article_id`, `author_id`, `viewer_id`, `view_date`)
		VALUES
			(1, 3, 5, '2019-08-01'),
			(1, 3, 6, '2019-08-02'),
			(2, 7, 7, '2019-08-01'),
			(2, 7, 6, '2019-08-02'),
			(4, 7, 1, '2019-07-22'),
			(3, 4, 4, '2019-07-21'),
			(3, 4, 4, '2019-07-21');

	-- Exercise Answer
		SELECT DISTINCT `author_id` as `id`
		FROM `04_article_views_i`
		WHERE `author_id` = `viewer_id`
		ORDER BY `id` ASC;
