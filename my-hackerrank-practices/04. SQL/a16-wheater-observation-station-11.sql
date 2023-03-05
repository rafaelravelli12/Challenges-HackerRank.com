SELECT DISTINCT CITY FROM STATION
WHERE lower(substr(CITY,1,1)) NOT IN ('a','e','i','o','u')
OR lower(substr(CITY,-1,1)) NOT IN ('a','e','i','o','u');
