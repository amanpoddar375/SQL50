--using joins

select distinct a.num as ConsecutiveNums
from Logs as a 
join Logs as b on (a.id = b.id-1)
join Logs as c on (a.id= c.id-2)


where a.num = b.num  and a.num = c.num