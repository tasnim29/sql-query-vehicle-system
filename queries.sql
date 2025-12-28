--1.Retrieve booking information along with Customer name and Vehicle name
select user_name,vehicle_name,start_date,end_date,booking_status,total_cost
from bookings as b
inner join users as u on b.user_id = u.user_id
inner join vehicles as v on b.vehicle_id = v.vehicle_id

--2.Find all vehicles that have never been booked.
select * from vehicles where not exists (select * from bookings where vehicles.vehicle_id = bookings.vehicle_id)

--3.Retrieve all available vehicles of a specific type
select * from vehicles where availability =  'Available' and type = 'Car'

--4.Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
select vehicle_name,count(*) as total_bookings from bookings 
  join vehicles on bookings.vehicle_id = vehicles.vehicle_id
  group by vehicle_name having count(*) > 2 