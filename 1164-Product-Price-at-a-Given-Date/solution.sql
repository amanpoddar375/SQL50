--using advanced select and join

select product_id, 10 as price from Products
group by product_id
having min(change_date) > '2019-08-16'

union all

select p.product_id, p.new_price as price from Products p
inner join (
    select product_id, max(change_date) as max_date from Products
    where change_date <= '2019-08-16'
    group by product_id
) as s
on p.product_id = s.product_id and p.change_date = s.max_date;