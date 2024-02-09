-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true

set @number = 21;
select repeat('* ', @number := @number - 1) from information_schema.tables;
