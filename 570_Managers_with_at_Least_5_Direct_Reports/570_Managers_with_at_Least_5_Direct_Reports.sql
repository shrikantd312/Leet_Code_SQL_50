select *
from Employee as e1
left join Employee as e2
on e1. managerId = e2.id

-- or
  
select e2.name
from Employee as e1
inner join Employee as e2
on e1.managerId = e2.id
group by e2.id, e2.name
having count(e1.id) >= 5




