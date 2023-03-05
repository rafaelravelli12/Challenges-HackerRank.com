SELECT MIN(city), MAX(LENGTH(city)) FROM station
WHERE LENGTH(city) = (SELECT MIN(LENGTH(city)) FROM station) 

UNION 

SELECT MIN(city), MAX(LENGTH(city)) FROM station
WHERE LENGTH(city) = (SELECT MAX(LENGTH(city)) FROM station);
