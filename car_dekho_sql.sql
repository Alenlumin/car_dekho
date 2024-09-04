select company,count(*) as count1 from car_table group by company order by count1 desc limit 1;
select fuel,count(*) from car_table group by fuel order by count(*) desc;
select owner,avg(selling_price) from car_table group by owner;
select company,count(company)from car_table where mileage_data='avg'group by company order by count(company) desc limit 1;
select seller_type,count(*) from car_table group by seller_type;
select fuel,avg(km_driven)from car_table  group by fuel order by avg(km_driven) desc;
select transmission,avg(mileage)from car_table  group by transmission order by avg(mileage) desc;
alter table car_table add column price_range varchar(50);
update car_table set price_range=case when selling_price<200000 then 'budget cars'
when selling_price>20000 and selling_price<700000 then 'mid range'
else 'luxury cars' end ;
select price_range,count(*) from car_table group by price_range;
alter table car_table add column age_range varchar(50) ;
update car_table set age_range=case when year<2012 then 'old'
when year>2012 and year<2020 then 'mid'
else 'like new' end ;
select age_range,count(*) from car_table group by age_range;
select owner,count(*) from car_table group by owner order by count(*) desc limit 1 ;