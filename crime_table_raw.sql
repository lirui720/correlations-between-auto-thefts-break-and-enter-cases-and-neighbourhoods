create table 860p1.crime_raw
SELECT * FROM 860p1.auto_theft 
union 
SELECT * FROM 860p1.break_and_enter
