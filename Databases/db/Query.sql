select a.names as customer_name, a.phone as customer_phone, sum(price) as spending
from customer a, car b, transaction c
where a. cid = c.cid and b.manufacturer = c.manufacturer and b.model_name = c.model_name
group by a.names
order by spending desc;

select manufacturer, count(serial_number) as sold 
from trannsaction
where extract(month from date) = extract(month from now()) and extract(year from date) = extract(year from now())
order by sold
limit 3;