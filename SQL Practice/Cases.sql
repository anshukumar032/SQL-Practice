use gdb041;

select * from dim_customer;

select * from dim_customer where customer like "%croma%" and market ="India";

select * from fact_sales_monthly where customer_code=90002002;

select * from fact_sales_monthly
where 
	customer_code = 90002002 and 
    YEAR(DATE_ADD(date, interval 4 month)) = 2021
order by date desc;

--Creating a functions but did able to crate so tey to do agin

with actors_age as (
			select 
				name as actor_name,
                year(curdate()) - birth_year as age 
			from actors
)
select actor_name, age 
from actors_age
where age > 70 and age < 85;

-- Product 

select 
	s.date, s.product_code,
    p.product, p.variant , s.sold_quantity
from fact_sales_monthly s 
join dim_product p 
on p.product_code = s.product_code
where 
	customer_code = 90002002 and 
    YEAR(DATE_ADD(date, interval 4 month)) = 2021
order by date desc;


-- Gross Price Per Item
-- Gross Price Total 



select 
	s.date, s.product_code,
    p.product, p.variant , s.sold_quantity
from fact_sales_monthly s 
join dim_product p 
on p.product_code = s.product_code
join fact_gross_price g
on g.product_code = s.product_code and  g.YEAR(DATE_ADD(date, interval 4 month)) = 2021
where 
	customer_code = 90002002 and 
    YEAR(DATE_ADD(date, interval 4 month)) = 2021
order 