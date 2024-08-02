
USE carsales_db;
describe car_dekho;

select * from car_dekho;

select count(*) as total_count from car_dekho;

select name, transmission from car_dekho where transmission= 'manual';

select name, transmission,count(*)as total_sales
from car_dekho where transmission= 'manual'
group by 1,2
order by 3 desc;

select name, transmission from car_dekho where transmission= 'Automatic';

select name, transmission,count(*)as total_sales from car_dekho where transmission= 'Automatic'
group by name,transmission
order by total_sales desc;

select name, transmission,count(*)as total_count,owner from car_dekho 
where transmission= 'Automatic'
group by 1,2 
order by 3 desc;

select Name,fuel,count(fuel)as total_sales from car_dekho
group by Name
order by total_sales desc;   

select name, fuel,count(fuel)as total_count from car_dekho where fuel= 'Petrol'
group by 1
order by 3 desc;

select name, fuel,count(fuel)as total_count from car_dekho where fuel= 'Diesel'
group by 1
order by 3 desc;    

select name, fuel,count(fuel)as total_count from car_dekho where fuel='Electric'
group by 1
order by 3 desc;   

select name, fuel,count(fuel)as total_count from car_dekho where fuel='CNG'
group by 1
order by 3 desc;   

select name, fuel,count(fuel)as total_count from car_dekho where fuel='LPG'
group by 1
order by 3 desc;   

select year,fuel,count(*)year_count,count(*)as total_count from  car_dekho
group by 1
order by 2 desc;

select fuel,count(*)as total_count from car_dekho 
group by fuel;

select count(*)from car_dekho where year between 2000 and 2023 and fuel='petrol';