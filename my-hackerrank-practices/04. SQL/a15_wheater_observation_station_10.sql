-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true

SELECT DISTINCT CITY FROM STATION
WHERE lower(substr(CITY,-1,1)) NOT in ('a','e','i','o','u');
