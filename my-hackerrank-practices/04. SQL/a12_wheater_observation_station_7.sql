-- Exercise Statement
	-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true

-- Solved with MYQSL

-- Database Creation 
	CREATE TABLE `a12_wheater_observation_station_7` (
		`id` INT NOT NULL AUTO_INCREMENT,
		`city` VARCHAR(21) DEFAULT NULL,
		`state` VARCHAR(2) DEFAULT NULL,
		`lat_n` DECIMAL(10, 4) DEFAULT NULL,
		`long_w` DECIMAL(10, 4) DEFAULT NULL,
		PRIMARY KEY (`id`) USING BTREE
	)
	COLLATE 'utf8mb4_0900_ai_ci'
	ENGINE=InnoDB;

-- Database Populate 
	INSERT INTO `a12_wheater_observation_station_7`
		(`city`, `state`, `lat_n`, `long_w`)
	VALUES
		('New York', 'NY', 40.7128, -74.0060),
		('Los Angeles', 'CA', 34.0522, -118.2437),
		('Chicago', 'IL', 41.8781, -87.6298),
		('Houston', 'TX', 29.7604, -95.3698),
		('Miami', 'FL', 25.7617, -80.1918);

-- Exercise Answer
	SELECT DISTINCT city
	FROM a12_wheater_observation_station_7
	WHERE city REGEXP '[aeiou]$';

-- Exercise Answer - Second approach
	SELECT DISTINCT city
	FROM a12_wheater_observation_station_7
	WHERE lower(substr(city,-1,1)) in ('a','e','i','o','u');
