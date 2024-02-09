-- Exercise Statement
	-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true

-- Solved with MYQSL

-- Database Creation 
	CREATE TABLE `a05_japanese_cities_attributes` (
		`id` INT NOT NULL AUTO_INCREMENT,
		`name` VARCHAR(17) DEFAULT NULL,
		`countrycode` VARCHAR(3) DEFAULT NULL,
		`district` VARCHAR(20) DEFAULT NULL,
		`population` INT DEFAULT NULL,
		PRIMARY KEY (`id`) USING BTREE
	)
	COLLATE 'utf8mb4_0900_ai_ci'
	ENGINE=InnoDB;

-- Database Populate 
	INSERT INTO `a05_japanese_cities_attributes`
		(`name`, `countrycode`, `district`, `population`)
	VALUES
		('New York', 'USA', 'Manhattan', 1664727),
		('Los Angeles', 'USA', 'Downtown', 3792621),
		('Chicago', 'USA', 'Loop', 2695598),
		('London', 'GBR', 'Westminster', 8825000),
		('Paris', 'FRA', '4th arrondissement', 1870835);

-- Exercise Answer
	SELECT *
	FROM a05_japanese_cities_attributes
	WHERE countrycode = "JPN";
