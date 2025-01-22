# Write your MySQL query statement below
select customer_id,count(*) as count_no_trans
from Visits v
left join Transactions t on t.visit_id=v.visit_id
where t.transaction_id is null
group by customer_id

# Write your MySQL query statement below
-- SELECT customer_id, COUNT(*) as count_no_trans
-- FROM Visits
-- WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
-- GROUP BY customer_id;