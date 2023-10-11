-- Exercise Statement
	-- https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true

-- Solved with MYQSL

-- Database Creation 
	CREATE TABLE `a01_revising_the_select_query_i` (
		`id` INT NOT NULL AUTO_INCREMENT,
		`name` VARCHAR(17) NULL DEFAULT NULL,
		`countrycode` VARCHAR(3) NULL DEFAULT NULL,
		`district` VARCHAR(20) NULL DEFAULT NULL,
		`population` INT NULL DEFAULT NULL,
		PRIMARY KEY (`id`) USING BTREE
	)
	COLLATE 'utf8mb4_0900_ai_ci'
	ENGINE=InnoDB;

-- Database Populate 
	INSERT INTO `a01_revising_the_select_query_i`
		(`name`, `countrycode`, `district`, `population`)
	VALUES
		('New York', 'USA', 'Manhattan', 1664727),
		('Los Angeles', 'USA', 'Downtown', 3792621),
		('Chicago', 'USA', 'Loop', 2695598),
		('London', 'GBR', 'Westminster', 8825000),
		('Paris', 'FRA', '4th arrondissement', 1870835);

-- Exercise Answer
	SELECT *
	FROM CITY
	WHERE countrycode = "USA"
	AND population > 100000;
