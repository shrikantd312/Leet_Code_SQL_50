select name, unique_id 
from Employees as e
left join EmployeeUNI as eu
on e.id = eu.id 
