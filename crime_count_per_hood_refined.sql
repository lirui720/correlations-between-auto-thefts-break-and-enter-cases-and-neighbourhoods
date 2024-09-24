With crime_hood as (
SELECT count(*) as Number_Of_Crime
,HOOD_158
FROM 860p1.crime_refined
where HOOD_158 <>'NSA'
GROUP BY HOOD_158),
hood as (select * from 860p1.hood158)

SELECT crime_hood.Number_Of_Crime
,hood.*
from crime_hood
left join hood 
on crime_hood.HOOD_158=hood.Neighbourhood_Number
