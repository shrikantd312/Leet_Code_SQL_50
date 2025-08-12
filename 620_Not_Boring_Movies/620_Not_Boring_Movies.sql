select *
from Cinema
where (id % 2 != 0) and (description != 'boring')
order by rating desc

-- 261 ms, Beats 24.33%

  ----------------------------------------------------------------------------------

select *
from Cinema
where id % 2 = 1 and description != 'boring'
order by rating desc

-- 249 ms, Beats 38.98%

  --------------------------------------------------------------------------------------

select id, movie, description, rating
from Cinema
where id % 2 = 1 and description != 'boring'
order by rating desc

-- 237 ms, Beats 61.18%
