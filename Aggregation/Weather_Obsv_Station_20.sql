SELECT ROUND( st.lat_n ,4)
FROM station AS st
WHERE(
( SELECT COUNT(lat_n) FROM station  WHERE lat_n > st.lat_n ) = ( SELECT COUNT(lat_n) FROM station WHERE lat_n < st.lat_n )
);

-- checks if the number of latitudes greater than a particular lat_n is equal to the number of latitudes less than that lat_n. 
-- Eg. lat_n = 1,2,3,4,5  assume lat_n = 3 -> so, in where it will be 2=2 for lat_n=3