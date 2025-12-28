**Project Overview**  
The Vehicle Rental System manages Users, Vehicles, and Bookings

---

## **1. Retrieve Booking Information with Customer and Vehicle Names**

```sql
SELECT
    u.name AS user_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.booking_status,
    b.total_cost
FROM bookings AS b
INNER JOIN users AS u ON b.user_id = u.user_id
INNER JOIN vehicles AS v ON b.vehicle_id = v.vehicle_id;

```

**Explanation:**  
Shows all bookings along with the **customer name** and **vehicle name**.
