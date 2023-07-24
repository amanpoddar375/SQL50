(select name as results 
    from Users as u 
    join MovieRating as r
    on u.user_id = r.user_id
    Group by r.user_id
    order by count(r.movie_id) desc, u.name asc
    limit 1 
)
union all
(SELECT title as results
    FROM Movies
    WHERE movie_id = (
        SELECT r.movie_id
        FROM MovieRating as r 
        join Movies as m on m.movie_id = r.movie_id
        WHERE r.created_at >= '2020-02-01' AND r.created_at <= '2020-02-29'
        GROUP BY r.movie_id
        ORDER BY AVG(r.rating) DESC, m.title ASC
        LIMIT 1
    )
)
