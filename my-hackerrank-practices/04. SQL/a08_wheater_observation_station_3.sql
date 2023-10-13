-- Exercise Statement
	-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true

-- Solved with MYQSL

-- Database Creation 
	CREATE TABLE `a08_wheater_observation_station_3` (
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
	INSERT INTO `a08_wheater_observation_station_3`
		(`city`, `state`, `lat_n`, `long_w`)
	VALUES
		('New York', 'NY', 40.7128, -74.0060),
		('Los Angeles', 'CA', 34.0522, -118.2437),
		('Chicago', 'IL', 41.8781, -87.6298),
		('Houston', 'TX', 29.7604, -95.3698),
		('Miami', 'FL', 25.7617, -80.1918);

-- Exercise Answer
	SELECT DISTINCT CITY
	FROM STATION
	WHERE ID % 2 = 0;
