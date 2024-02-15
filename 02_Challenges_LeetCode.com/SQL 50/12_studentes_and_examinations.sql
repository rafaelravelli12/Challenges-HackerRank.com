-- Exercise Statement
	-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
	
-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `12_studentes_and_examinations_1` (
		`student_id` INT AUTO_INCREMENT,
		`student_name` VARCHAR(255),
		PRIMARY KEY (`student_id`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `12_studentes_and_examinations_2` (
		`subject_name` VARCHAR(255),
		PRIMARY KEY (`subject_name`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

		CREATE TABLE `12_studentes_and_examinations_3` (
		`student_id` INT,
		`subject_name` VARCHAR(255),
		KEY `student_id_fk` (`student_id`),
		KEY `subject_name_fk` (`subject_name`),
		CONSTRAINT `student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `12_studentes_and_examinations_1` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
		CONSTRAINT `subject_name_fk` FOREIGN KEY (`subject_name`) REFERENCES `12_studentes_and_examinations_2` (`subject_name`) ON DELETE CASCADE ON UPDATE CASCADE
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `12_studentes_and_examinations_1` (`student_id`, `student_name`)
		VALUES
			(1, 'Alice'),
			(2, 'Bob'),
			(13, 'John'),
			(6, 'Alex');

		INSERT INTO `12_studentes_and_examinations_2` (`subject_name`)
		VALUES
			('Math'),
			('Physics'),
			('Programming');

		INSERT INTO `12_studentes_and_examinations_3` (`student_id`, `subject_name`)
		VALUES
			(1, 'Math'),
			(1, 'Physics'),
			(1, 'Programming'),
			(2, 'Programming'),
			(1, 'Physics'),
			(1, 'Math'),
			(13, 'Math'),
			(13, 'Programming'),
			(13, 'Physics'),
			(2, 'Math'),
			(1, 'Math');

	-- Exercise Answer
		SELECT t1.`student_id`, t1.`student_name`, t2.`subject_name`, COUNT(t3.`subject_name`) AS `attended_exams`
		FROM `12_studentes_and_examinations_1` t1
		CROSS JOIN `12_studentes_and_examinations_2` t2
		LEFT JOIN `12_studentes_and_examinations_3` t3 ON t1.`student_id` = t3.`student_id` AND t2.`subject_name` = t3.`subject_name`
		GROUP BY t1.`student_id`, t1.`student_name`, t2.`subject_name`
		ORDER BY t1.`student_id`, t2.`subject_name`

	-- Solution published 
		-- https://leetcode.com/problems/students-and-examinations/solutions/4729549/solution-with-cross-and-left-joins/
