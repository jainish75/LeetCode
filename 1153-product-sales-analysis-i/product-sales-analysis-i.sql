-- # Write your MySQL query statement below
-- select p.product_name ,s.year  ,s.price 
-- from Sales s 
-- left join Product p on p.product_id = s.product_id
-- WHERE year IS NOT NULL AND price IS NOT NULL;
SELECT
  Product.product_name,
  Sales.year,
  Sales.price
FROM Sales
INNER JOIN Product
  USING (product_id);
