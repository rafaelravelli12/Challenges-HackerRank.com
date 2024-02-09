-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';
