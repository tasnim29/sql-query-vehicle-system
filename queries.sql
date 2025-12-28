
select user_name,vehicle_name,start_date,end_date,booking_status,total_cost
from bookings as b
inner join users as u on b.user_id = u.user_id
inner join vehicles as v on b.vehicle_id = v.vehicle_id


select * from vehicles where not exists (select * from bookings where vehicles.vehicle_id = bookings.vehicle_id)


select * from vehicles where availability =  'Available' and type = 'Car'


select vehicle_name,count(*) as total_bookings from bookings 
  join vehicles on bookings.vehicle_id = vehicles.vehicle_id
  group by vehicle_name having count(*) > 2 