-- Reading the entire table
Select * from cars24;

-- Counting the total number of cars present in the data set for selling
Select Count(*) AS Total_cars from cars24;


-- Listing top 10 highest selling petrol cars From tata brand 
Select name, Count(*) As No_of_cars from cars24 
Where name Like "Tata%" AND fuel = "Petrol"
Group by name
Order by no_of_cars Desc
Limit 10;


--Counting the total number of cars having their brand name as maruti
Select Count(*) As Total_maruti_cars From
(Select name from cars24
Where name like "Maruti%") a;


-- Counting the total number of Petrol, Diesel, CNG, and LPG Fuel type cars sold 
Select fuel, Count(*) AS Number_of_cars from cars24
Group by fuel;


-- Counting total number of Manual and Automatic transmission cars sold 
Select transmission, Count(*)  from cars24
Group by transmission;


-- Counting the total number of cars sold categorized by the type of owner
Select owner, Count(*) from cars24
Group by owner
Order by 2 desc;


-- Counting the total number of cars sold by each manufacturing year, Ordering table from recent years
Select year, Count(*) AS Number_of_cars from cars24
Group by year
Order by year desc;


-- Counting the total number of cars sold each year based on their fuel type and transmission, Ordering table from recent years
Select year, fuel, transmission, Count(*) 
from cars24
Group by 1,2,3
Order by 1 desc;


-- Counting total number of cars sold by each seller type
Select seller_type, Count(*) AS Number_of_cars from cars24
Group by seller_type;


-- Arranging the car on the basis of selling price ordering from lowest to highest
Select name, year, selling_price from cars24
Order by selling_price;


-- Arranging the car on the basis of km driven ordering from least to most distance driven
Select name, year, selling_price, km_driven  from cars24
Order by km_driven;


-- Identifying the  car with best mileage
Select name, year, mileage from cars24
Order by mileage desc
Limit 1;


-- Identifying 5 or 7 seater cars with mileage greater than 22 and selling price ranging between 450000 and 500000(both values are included)
Select name, selling_price, mileage, seats from cars24
Where(seats = 5 or seats = 7) And (Mileage > 22) 
AND (selling_price Between 450000 AND 500000)
Order by Selling_price;














