-- SELECT
--   Visits.customer_id,
--   COUNT(Visits.visit_id) AS count_no_trans
-- FROM Visits
-- LEFT JOIN Transactions
--   USING (visit_id)
-- WHERE Transactions.transaction_id IS NULL
-- GROUP BY 1;

select v.customer_id , count(v.visit_id ) as count_no_trans 
from Visits v
left join Transactions t on t.visit_id  = v.visit_id  
where t.transaction_id is null
group by v.customer_id