

-- 1. Retrieve all successful bookings:

select * from july_bookings
where Booking_Status = "success";

-- 2. Find the average ride distance for each vehicle type:

select vehicle_type, concat(round(avg(Ride_distance),2)," KM") as avg_ride_distance 
from july_bookings
group by Vehicle_Type;

-- 3. Get the total number of cancelled rides by customers:

select count(*) from july_bookings
where Booking_Status = 'Canceled by Customer';


-- 4. List the top 5 customers who booked the highest number of rides:

select Customer_ID, count(*) as total_booked_rides 
from july_bookings
group by Customer_ID
order by total_booked_rides desc limit 5;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

select count(*) as number_of_cancelled_rides , canceled_rides_by_driver 
from july_bookings
where canceled_rides_by_driver = 'personal & car related issue';



-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

select vehicle_type, max(driver_ratings), min(driver_ratings) from july_bookings
where Vehicle_Type = 'Prime Sedan';

-- 7. Retrieve all rides where payment was made using UPI:

select Booking_ID, Payment_Method from july_bookings
where Payment_Method= "UPI";

-- 8. Find the average customer rating per vehicle type:

select vehicle_type , round(avg(customer_rating),2) as Avg_cust_Ratings from july_bookings
group by vehicle_type
order by Avg_cust_Ratings desc ;

select * from july_bookings;

-- 9. Calculate the total booking value of rides completed successfully:

select count(*) as total_booking from july_bookings
where Incomplete_Rides = 'No';


-- 10. List all incomplete rides along with the reason:

SELECT incomplete_rides_reason, COUNT(Booking_id) as Total_incomplete_rides
FROM july_bookings
WHERE Incomplete_Rides = 'Yes'
GROUP BY incomplete_rides_reason;


