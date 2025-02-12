# Write your MySQL query statement below
select `class` from `courses` group by `class` having count(distinct `student`) >= 5
-- select `class` 
-- from (select `class`, count(distinct `student`) as `num`
--      from `courses`
--      group by `class`) as `tmp_table` 
-- where `num` >= 5;