-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true

SELECT DISTINCT CITY FROM STATION
WHERE lower(substr(CITY,-1,1)) in ('a','e','i','o','u');
