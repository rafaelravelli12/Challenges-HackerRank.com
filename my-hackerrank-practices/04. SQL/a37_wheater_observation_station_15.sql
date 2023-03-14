-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true

-- CREATE TABLE STATION (
--     ID INT AUTO_INCREMENT PRIMARY KEY,
-- 	CITY VARCHAR(255),
-- 	STATE VARCHAR(255),
-- 	LAT_N DECIMAL(10,4),
-- 	LONG_W DECIMAL(10,4)
-- );

-- INSERT INTO STATION (CITY, STATE, LAT_N, LONG_W)
-- VALUES
--     ("CITY_01", "STATE_01", 10.20, 30.20),
--     ("CITY_02", "STATE_02", 30.20, 50.20),
--     ("CITY_02", "STATE_02", 40.20, 60.20),
--     ("CITY_02", "STATE_02", 50.20, 80.20)

SELECT
    ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N BETWEEN 0.0001 AND 137.2344
ORDER BY LAT_N DESC LIMIT 1
