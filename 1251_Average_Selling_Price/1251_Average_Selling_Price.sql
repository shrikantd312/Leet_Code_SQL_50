select p.product_id, ifnull(round(sum(price * units) / sum(units),2),0) as average_price 
from Prices as p
left join UnitsSold as u
on p.product_id = u.product_id and (start_date <= purchase_date and purchase_date <= end_date )
group by p.product_id

-- or

select p.product_id, round(ifnull(sum(price * units) / sum(units),0),2) as average_price 
from Prices as p
left join UnitsSold as u
on p.product_id = u.product_id and (purchase_date between start_date and end_date )
group by p.product_id
