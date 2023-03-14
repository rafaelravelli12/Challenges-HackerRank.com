-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

-- CREATE TABLE EMPLOYEE (
--     EMPLOYEE_ID INT AUTO_INCREMENT PRIMARY KEY,
-- 	NAME VARCHAR(255),
-- 	MONTHS INT,
-- 	SALARY INT
-- );

-- INSERT INTO EMPLOYEE (NAME, MONTHS, SALARY)
-- VALUES
--     ("NAME_01", 2, 1000),
--     ("NAME_02", 2, 1000),
--     ("NAME_03", 3, 2000),
--     ("NAME_04", 4, 4000),
--     ("NAME_05", 4, 5000),
--     ("NAME_04", 12, 4000);

SELECT 
    (MONTHS * SALARY) AS EARNINGS,
    COUNT(*) 
FROM EMPLOYEE 
GROUP BY EARNINGS
ORDER BY EARNINGS DESC LIMIT 1
