create database ola_Bookings_Analysis;
drop database ola_Bookings_Analysis;
use ola_Bookings_Analysis;

create table july_Bookings(
Date date,
Time time,
Booking_ID varchar(50),
Booking_Status varchar(100),	
Customer_ID	varchar(50),
Vehicle_Type varchar(50),
Pickup_Location varchar(100),
Drop_Location varchar(100),
V_TAT int,
C_TAT int,
Canceled_Rides_by_Customer varchar(150),
Canceled_Rides_by_Driver varchar(150),	
Incomplete_Rides varchar(15),
Incomplete_Rides_Reason varchar(150),
Booking_Value int,
Payment_Method varchar(25),
Ride_Distance int,
Driver_Ratings	float,
Customer_Rating float,
Vehicle_Images varchar(2083)

);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.2/Uploads/Bookings.csv'
INTO TABLE july_Bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select count(*) from july_bookings;

