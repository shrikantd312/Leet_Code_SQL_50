select s.user_id, 
round((sum(if(action = 'timeout' or action is null, 0 , 1)) / count(if(action = 'timeout' or action is null, 0 , 1))),2) as confirmation_rate 
from Confirmations as c
right join Signups as s
on c.user_id = s.user_id 
group by user_id

-- or
  
select s.user_id, 
round((sum(if(action = 'confirmed', 1 , 0)) / count(*)),2) as confirmation_rate 
from Confirmations as c
right join Signups as s
on c.user_id = s.user_id 
group by user_id

-- or
  
select s.user_id, 
round(
    avg(if(action = 'confirmed', 1 , 0)),2) as confirmation_rate 
from Confirmations as c
right join Signups as s
on c.user_id = s.user_id 
group by user_id
