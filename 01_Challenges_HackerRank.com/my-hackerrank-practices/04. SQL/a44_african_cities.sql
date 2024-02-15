-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

SELECT CITY.NAME
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';
