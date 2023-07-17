select q.person_name from Queue as q
inner join Queue as u 
on u.turn <= q.turn
group by q.person_id, q.person_name, q.turn
having sum(u.weight) <= 1000
order by q.turn desc
limit 1