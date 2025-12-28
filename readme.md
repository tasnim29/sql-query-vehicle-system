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

## **2. Find all vehicles that have never been booked.**

```sql
select * from vehicles where not exists (select * from bookings where vehicles.vehicle_id = bookings.vehicle_id)

```

**Explanation:**
Here we used not exists to find which vehicle has not been booked means which vehicle_id is not present in bookings table.So, the subquery Checks the bookings table to see if there is any booking that matches the current vehicle from the outer query.If the subquery returns no rows ,NOT EXISTS becomes to TRUE, so the vehicle is included in the output.If the subquery returns one or more rows, NOT EXISTS is to FALSE, so the vehicle is excluded.

## **3. Retrieve all available vehicles of a specific type (e.g. cars).**

```sql
select * from vehicles where availability =  'Available' and type = 'Car'

```

**Explanation:**
Here we are asked to get all the available vehicles as well as a particular type of vehicle in this case I wanted Car.I used two conditions and if both conditions are aligns means type car and its available, it will give me the vehicles information

## **4.Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.**

```sql
select vehicle_name,count(*) as total_bookings from bookings
  join vehicles on bookings.vehicle_id = vehicles.vehicle_id
  group by vehicle_name having count(*) > 2

```

**Explanation:**
This query calculates the total number of bookings for each vehicle by joining the bookings and vehicles tables. It groups the results by vehicle_name so that all bookings for the same vehicle are counted together. Finally, the HAVING clause filters the results to display only those vehicles that have been booked more than two times.
