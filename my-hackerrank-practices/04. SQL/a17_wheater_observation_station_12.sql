-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true

SELECT DISTINCT CITY FROM STATION
WHERE lower(substr(CITY,1,1)) NOT IN ('a','e','i','o','u')
AND lower(substr(CITY,-1,1)) NOT IN ('a','e','i','o','u');
