SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE pid in (
    select pid from Insurance group by lat, lon having count(*) = 1
)
And pid not in (
    select pid from Insurance group by tiv_2015 having count(*) = 1
)