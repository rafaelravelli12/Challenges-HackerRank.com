-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

-- CREATE TABLE EMPLOYEES (
--     ID INT AUTO_INCREMENT PRIMARY KEY,
-- 	NAME VARCHAR(255),
-- 	SALARY INT(3),
-- );

-- INSERT INTO CITY (NAME, COUNTRYCODE, DISTRICT, POPULATION)
-- VALUES
--     ("RAFAEL", 200),
--     ("PEDRO", 300),
--     ("LUCAS", 400),
--     ("TIAGO", 500);

SELECT 
ceil(
    AVG(salary)
    -
    AVG(replace(salary,0,'')))
FROM EMPLOYEES
