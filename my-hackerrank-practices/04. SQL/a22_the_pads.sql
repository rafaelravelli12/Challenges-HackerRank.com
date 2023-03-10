SELECT * FROM(
    SELECT CONCAT(Name,'(',SUBSTRING(Occupation,1,1),')')
    FROM a22_the_pads
    ORDER BY NAME
) AS A

UNION ALL

SELECT * FROM(
    SELECT CONCAT('There are a total of ',COUNT(*),' ',LOWER(Occupation),'s.')
    FROM a22_the_pads
    GROUP BY Occupation
    ORDER BY COUNT(*), Occupation
) AS B
