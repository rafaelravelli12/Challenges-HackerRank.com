-- Exercise Statement
	-- https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `15_not_boring_movies` (
			`id` INT AUTO_INCREMENT,
			`movie` VARCHAR(255),
			`description` VARCHAR(255),
			`rating` FLOAT,
			PRIMARY KEY (`id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `15_not_boring_movies` (`id`, `movie`, `description`, `rating`)
		VALUES
			(1, 'War', 'great 3D', 8.9),
			(2, 'Science', 'fiction', 8.5),
			(3, 'Irish', 'boring', 6.2),
			(4, 'Ice song', 'fantasy', 8.6),
			(5, 'House card', 'interesting', 9.1);

	-- Exercise Answer
		SELECT * FROM `15_not_boring_movies`
		WHERE `id` % 2 = 1
		AND `description` != 'boring'
		ORDER BY rating DESC;

	-- Solution published 
		-- https://leetcode.com/problems/not-boring-movies/solutions/4759391/a-simple-solution/
