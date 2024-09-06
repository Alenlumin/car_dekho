CarDekho
Dataset Analysis 

INTRODUCTION 
This report presents a comprehensive analysis of data sourced 
from the Car Dekho app. The primary objective of this 
analysis is to uncover key insights, trends, and patterns within 
the dataset, providing valuable information for both 
consumers and industry stakeholders 

OBJECTIVE  
1. Data collection: 
By acquiring a well-structured dataset. This dataset included 
details such as car name, year, selling price, km driven, fuel, 
seller type, transmission, owner, mileage, engine, max power, 
torque, seats. The data was stored in a relational database.

2. Data Cleaning and Preprocessing:  
Performed data cleaning tasks to handle missing values, 
duplicate records, and outliers, ensuring the dataset’s 
integrity.

3. SQL Queries:  
Designed and executed SQL queries to extract relevant 
information from the database. This involved a range of SQL 
operations, including SELECT, GROUP BY, and aggregation 
functions.

Questions: 
1. To find the most popular car company on car dekho 
select company,count(*) as count1 from car_table group 
by company order by count1 desc limit 1;

3. To find the number of cars for each fuel type 
select fuel,count(*) from car_table group by fuel order 
by count(*) desc;

5. To determine the average selling price of cars with 
single, second and third ownership 
select owner,avg(selling_price) from car_table group by 
owner;

7. To identify the company that produces cars with the 
best mileage 
select company,count(company)from car_table where 
mileage_data='avg'group by company order by 
count(company) desc limit 1;

9. To find out which type of seller is most common 
select seller_type,count(*) from car_table group by 
seller_type;

11. To determine the average kilometers driven by cars 
with diffreant fuel types 
select fuel,avg(km_driven)from car_table  group by fuel 
order by avg(km_driven) desc;

13. To determine the average mileage of automatic versus 
manual cars 
select transmission,avg(mileage)from car_table  group by 
transmission order by avg(mileage) desc;

15. To find number of cars in different price segment 
alter table car_table add column price_range varchar(50); 
update car_table set price_range=case when 
selling_price<200000 then 'budget cars' 
when selling_price>20000 and selling_price<700000 
then 'mid range' 
else 'luxury cars' end ; 
select price_range,count(*) from car_table group by 
price_range;

17. To find the number of cars in different age group 
alter table car_table add column age_range varchar(50) ; 
update car_table set age_range=case when year<2012 
then 'old' 
when year>2012 and year<2020 then 'mid' 
else 'like new' end ; 
select age_range,count(*) from car_table group by 
age_range;

19. To find which ownership is common 
select owner,count(*) from car_table group by owner 
order by count(*) desc limit 1 ;


CONCLUSION 
The SQL project for the Car Dekho app aims to convert 
raw car data into actionable insights, enabling the app's 
management to make data-driven decisions. This will 
help improve operational efficiency, boost customer 
satisfaction, and increase profitability. 

1. Most popular car 
Most popular car company is Maruti. This information helps 
consumers identify the car company with the best resale value, 
allowing them to quickly choose the right company and car 
model.

3. Number of cars with each fuel type 
Diesel - 3658 
Petrol - 2977 
CNG - 51 
LPG - 35 
Electric 1 
This data helps the CarDekho app understand the percentage of 
cars with different fuel types, enabling them to effectively convey 
this information to customers.

5. Average selling price of cars with different ownership 
Test Drive Car – 44,03,800 
First Owner – 6,23,523 
Second Owner – 3,95,166 
Test Drive Car – 44,03,800 
Third Owner – 2,86,885 
Fourth & Above Owner – 2,32,503 
This data helps understand that car prices generally decrease as 
the number of previous owners increases.

7. To identify the car company that produces the most 
cars with top mileage 
Cars manufactured by Maruti offer the highest mileage. This 
data helps customers to choose a vehicle quick

9. Most common seller 
Individual sellers are the most common sellers in the site. This 
data helps the app management in many ways

11. The average kilometres driven by cars with different 
fuel types 
LPG 88856.6857 
Diesel 88320.8122 
CNG 66483.7451 
Petrol 54667.5321 
Electric 10000.0000

13. The average mileage of automatic versus manual cars 
Manual – 19 
Automatic – 15 
This data helps customers choose between an automatic or 
manual car based on their average mileage

15. Cars in different price segments 
mid range      
luxury cars     
4245 
1411 
budget cars     1066  
This data is useful for both the CarDekho app and its customers 
to find cars in different price ranges.

17. Sorting cars in different year categary 
2020 and above         -   658 
Between 2020 and 2012 
2012 and below         -   4261 -  1803 
This data helps to understand that people are trying to sell cars 
that are 5-10 years old

19. 
Most common ownership seen in market 
Single-owner cars are the most frequently seen on the app. 
