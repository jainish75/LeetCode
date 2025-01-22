# Write your MySQL query statement below
select w1.id
from Weather w1, Weather w2
where w1.temperature>w2.temperature
and datediff(w1.recordDate,w2.recordDate)=1;
-- SELECT 
--     w1.id
-- FROM 
--     Weather w1
-- JOIN 
--     Weather w2
-- ON 
--     DATE(w1.recordDate) = DATE(w2.recordDate) + INTERVAL 1 DAY
-- WHERE 
--     w1.temperature > w2.temperature;
