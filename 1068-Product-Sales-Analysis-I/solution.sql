-- Using INNER JOIN

SELECT p.product_name, s.year, s.price
FROM Sales as s
JOIN Product as p
ON s.product_id = p.product_id;

/*
an INNER JOIN between the Sales and Product tables 
will only include rows where the product_id in the Sales table 
matches a product_id in the Product table.
*/



--Using LEFT JOIN

SELECT p.product_name, s.year, s.price
FROM Sales as s
LEFT JOIN Product as p
ON s.product_id = p.product_id;

/*
A LEFT JOIN returns all the rows from the left table (Sales in this case) 
and the matching rows from the right table (Product in this case). 
If there is no match, NULL values are returned for the columns of the right table.
*/