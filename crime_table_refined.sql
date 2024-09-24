
truncate TABLE 860P1.crime_refined;
insert into 860P1.crime_refined
SELECT  ROW_NUMBER()OVER(ORDER BY OBJECTID) AS OBJECT_ID
	   ,EVENT_UNIQUE_ID
       ,REPORT_DATE
       ,OCC_DATE
       ,(REPORT_DATE-OCC_DATE) AS REPORT_DELAY
       ,OCC_YEAR
       ,OCC_MONTH
       ,OCC_DAY
       ,OCC_DOY
       ,OCC_DOW
       ,OCC_HOUR
       ,DIVISION
       ,LOCATION_TYPE
       ,PREMISES_TYPE
       ,OFFENCE
       ,MCI_CATEGORY
       ,HOOD_158
       ,LONG_WGS84
       ,LAT_WGS84
       FROM 860p1.crime_raw
where OCC_YEAR > 2000
      and OCC_YEAR is not null
