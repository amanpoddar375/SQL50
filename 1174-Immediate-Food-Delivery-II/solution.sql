
SELECT ROUND(SUM(d.order_date = d.customer_pref_delivery_date)/(count(distinct d.customer_id))*100,2) AS immediate_percentage

FROM Delivery as d

where (customer_id, order_date) in (
  SELECT customer_id, min(order_date)
  from Delivery
  group by customer_id
);