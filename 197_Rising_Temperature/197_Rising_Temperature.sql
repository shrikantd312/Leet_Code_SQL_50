select w2.id from Weather as w1
cross join Weather as w2
where (w1.temperature < w2.temperature) and DATEDIFF(w2.recordDate, w1.recordDate) = 1

--OR
  
select w1.id 
from Weather as w1
join Weather as w2
on (w1.temperature > w2.temperature) and subdate(w1.recordDate, 1) = w2.recordDate

--OR
  
select w1.id 
from Weather as w1
join Weather as w2
on (w1.temperature > w2.temperature) and datediff(w1.recordDate, w2.recordDate) = 1
