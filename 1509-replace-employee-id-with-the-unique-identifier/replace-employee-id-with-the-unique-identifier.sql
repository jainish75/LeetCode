# Write your MySQL query statement below
Select name, unique_id
from Employees e
left join EmployeeUNI u on u.id=e.id
