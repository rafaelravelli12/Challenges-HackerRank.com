-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true

-- CREATE TABLE STATION (
--     ID INT AUTO_INCREMENT PRIMARY KEY,
-- 	CITY VARCHAR(255),
-- 	STATE VARCHAR(255),
-- 	LAT_N DECIMAL(10,2),
-- 	LONG_W DECIMAL(10,2)
-- );

-- INSERT INTO STATION (CITY, STATE, LAT_N, LONG_W)
-- VALUES
--     ("CITY_01", "STATE_01", 10.20, 30.20),
--     ("CITY_02", "STATE_02", 30.20, 50.20),
--     ("CITY_02", "STATE_02", 40.20, 60.20),
--     ("CITY_02", "STATE_02", 50.20, 80.20)

SELECT
	ROUND(SUM(LAT_N), 2),
	ROUND(SUM(LONG_W), 2)
FROM STATION
