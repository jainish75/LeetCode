-- select e.name
-- from Employee e
-- join(
--     select managerId
--     from employee
--     group by managerId
--     having count(managerId)>=5 
-- ) e2
-- on e.id=e2.managerId
SELECT E.name 
FROM Employee E
JOIN Employee R ON E.id = R.managerId
GROUP BY E.id, E.name
HAVING COUNT(R.id) >= 5;
