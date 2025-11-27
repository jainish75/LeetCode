-- SELECT Manager.name
-- FROM Employee
-- INNER JOIN Employee AS Manager
--   ON (Employee.managerId = Manager.id)
-- GROUP BY Manager.id
-- HAVING COUNT(*) >= 5;

select m.name
from Employee e
inner join Employee m on m.id=e.managerId
group by m.id
having count(*)>=5