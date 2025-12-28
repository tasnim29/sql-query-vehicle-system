**Project Overview**  
The Vehicle Rental System manages Users, Vehicles, and Bookings

---

## **1. Retrieve Booking Information with Customer and Vehicle Names**

```sql
select user_name,vehicle_name,start_date,end_date,booking_status,total_cost
from bookings as b
inner join users as u on b.user_id = u.user_id
inner join vehicles as v on b.vehicle_id = v.vehicle_id

```

**Explanation:**
Here, the question is to retrieve information from two different tables which is connected with the third table bookings.Two Inner joins combines three tables,first one on user_id and second one on vehicle_id.First Inner join matches bookings table's user_id with users table's user_id and finds out which user made a booking.In the same way, second inner join matches vehicle id to find out which vehicle has been booked by the user.Thats how we can get all information from different tables

## **1. Retrieve Booking Information with Customer and Vehicle Names**

```sql
select user_name,vehicle_name,start_date,end_date,booking_status,total_cost
from bookings as b
inner join users as u on b.user_id = u.user_id
inner join vehicles as v on b.vehicle_id = v.vehicle_id

```

**Explanation:**
Here, the question is to retrieve information from two different tables which is connected with the third table bookings.Two Inner joins combines three tables,first one on user_id and second one on vehicle_id.First Inner join matches bookings table's user_id with users table's user_id and finds out which user made a booking.In the same way, second inner join matches vehicle id to find out which vehicle has been booked by the user.Thats how we can get all information from different tables
