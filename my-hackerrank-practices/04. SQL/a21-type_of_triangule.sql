SELECT
CASE
	when (A+B<=C) or (B+C<=A) or (A+C<=B) then 'Not A Triangle'
	when A=B and B=C and C=A then 'Equilateral'
	when A!=B and B!=C and C!=A then 'Scalene'
	when 
		(A=B and B!=C and C!=A)	or 
		(B=C and C!=A and A!=B) or
		(A=C and A!=B and B!=C)
		then 'Isosceles'
END
FROM TRIANGLES;
