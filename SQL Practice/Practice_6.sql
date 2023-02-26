Use moviesdb ;
select * from actors;
select * from financials;
select * from languages;
select * from movie_actor;
select * from movies;

select * from movies where industry ='Bollywood';

select  count(*) from movies where industry ='Bollywood';

select * from movies where title like "%america%";

select * from movies where studio ="";

select * from  movies;

select title , release_year  from movies where studio ="Marvel Studios";

select * from movies where title like "%Avenger%";

select  * from movies  where title = "The Godfather";

select distinct(studio), title , release_year from movies where industry = "Bollywood";

select * from movies;

select * from movies where imdb_rating  between 6 and 8;

select * from movies where release_year in (2022, 2019,2018);

select * from movies where industry = "Bollywood" order by imdb_rating desc limit 5;
 
select  * from movies order by release_year;

select * from movies where release_year = 2022;

select * from movies where release_year > 2020;

select * from movies where release_year > 2020 and imdb_rating > 8;

select * from movies where studio = 'Marvel Studios'  or studio= 'Hombale Films'; 

select * from movies;

select * from movies where title like "%Thor%" order by release_year;

select * from movies where studio  not like 'Marvel Studios';

select avg(imdb_rating) from movies where studio = 'Marvel Studios';

select	round(avg(imdb_rating),2) as avg_rating
from movies where studio = 'Marvel Studios';

select max(imdb_rating) from movies where studio = 'Marvel Studios';

select min(imdb_rating) from movies where studio = 'Marvel Studios';

select count(*) from movies  where industry = 'Hollywood';

select 
	industry , count(*)
from movies group by industry;

select 
	 studio, count(*) as cnt
from movies group by studio order by cnt desc;

select  industry,
	count(industry) as cnt,
    round(avg(imdb_rating),1) as avg_rating
from movies 
group by industry;


select * from movies;

select count(*) from movies where release_year between 2015 and 2022;

select release_year , count(*) as movies_count
from movies group by release_year order by movies_count desc;

FROM  --> WHERE --> GROUP BY --> HAVING --> ORDER BY ;

select year(curdate());

select * , year(curdate())- birth_year as age_year from actors;

select * , (revenue-budget) as profit from financials;

select *, 
	if( currency -'USD' , revenue*77, revenue) as revenue_inr
    from financials;

select distinct unit from financials;

select *,
	case
		when unit ='thousands' then revenue/1000
        when unit ='billions' then revenue*1000
        when unit ='millions' then revenue
	end as revenue_mln
from financials;


select 
	m.movie_id, title , budget , revenue , currency , unit
from movies m 
join financials f
on m.movie_id= f.movie_id;

select 
	m.movie_id, title , budget, revenue , currency , unit
from movies m 
right join financials f 
on m.movie_id = f.movie_id;

select 
	f.movie_id, title , budget, revenue , currency , unit
from movies m 
left join financials f 
using(movie_id);

select * from movies;

select * from languages;

select 
	m.title,  `name`
from movies m
left join languages l
using(language_id) where `name` = 'Telugu';



select * from movies where title = "RRR";
select *  from movies group by industry;

select 
	m.title,  l.`name`
from movies m
join languages l
using(language_id);

  SELECT m.title, l.name FROM movies m 
   JOIN languages l USING (language_id);

SELECT 
		l.name, 
            COUNT(m.movie_id) as no_movies
	FROM languages l
	LEFT JOIN movies m USING (language_id)        
	GROUP BY language_id
	ORDER BY no_movies DESC;
    
use food_db;

select * from items;

select * from variants;

select 
*,
concat(name, " -" , variant_name) as full_name,
(price+variant_price) as full_price
from food_db.items
cross join food_db.variants;

use moviesdb;
select * from movies 
cross join moviesdb.financials;

use moviesdb;

select 
	m.movie_id , title, budget , revenue , currency , unit,
    (revenue-budget) as profit
from movies m 
join financials f on m.movie_id = f.movie_id
where industry ="bollywood"
order by profit desc;

select 
	m.movie_id , title, budget , revenue , currency , unit,
    case
		when unit = "thousands" then round((revenue-budget)/1000,1)
        when unit = "billions" then round((revenue-budget)*1000,1)
        else round(revenue-budget,1)
	end as profit_mln
from movies m 
join financials f on m.movie_id = f.movie_id
where industry ="bollywood"
order by profit_mln desc;