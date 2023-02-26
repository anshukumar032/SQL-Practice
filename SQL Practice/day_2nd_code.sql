use moviesdb;
/*importnt exmaple 1*/
select 
	m.movie_id, title , budget , revenue, currency , unit,
    (revenue-budget) as profit
from movies m 
join financials f on m.movie_id= f.movie_id;

/*importnt exmaple 2*/

select 
	m.movie_id, title , budget , revenue, currency , unit,
    (revenue-budget) as profit
from movies m 
join financials f on m.movie_id= f.movie_id
where industry = "bollywood"
order by profit desc;

/*importnt exmaple 3*/

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
/*importnt exmaple 4*/

select 
	m.title , group_concat(a.name separator " | ") as actors
from movies m 
join movie_actor ma on ma.movie_id = m.movie_id
join actors a on a.actor_id = ma.actor_id
group by m.movie_id;

select database();
select * from movies;


select 
	a.name,
    group_concat(m.title separator " | ") as movies,
    count(m.title) as movie_count
from actors a 
join movie_actor ma on ma.actor_id = a.actor_id
join movies m on m.movie_id = ma.movie_id
group by a.actor_id
order by movie_count desc;

select * from financials;
select * from movies;
select * from languages;

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
select 
	m.title , group_concat(a.name separator " | ") as actors
from movies m 
join movie_actor ma on ma.movie_id = m.movie_id
join actors a on a.actor_id = ma.actor_id
group by m.movie_id;
select* from languages;
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

select
	m.title , revenue, currency , unit , `name`
from movies m
join financials f on f.movie_id = m.movie_id
join languages l on l.language_id = m.language_id
where `name` =  "Hindi";
    
select * from movies;




select * from movies order by imdb_rating desc limit 1;

select * from movies 
where imdb_rating in (
(select max(imdb_rating) from movies),
(select min(imdb_rating) from movies));

select * from actors;

select max(imdb_rating) from moives;

/*important*/

select* from
(select 
	name,
    year(curdate())- birth_year as age 
from actors) as actors_age
where age>70 and age<85;

select * from actors where actor_id = any (
select actor_id from movie_actor where movie_id in (101,110,121));


select * from movies where imdb_rating > All(
select (imdb_rating) from movies 
where studio="Marvel studios");

select * from movie_actor;
select * from actors;

select a.actor_id , a.name , count(*) as movies_count
from movie_actor ma
join actors a 
on a.actor_id = ma.actor_id
group by a.actor_id
order by movies_count desc;

explain analyze
select 
	actor_id, 
    name,
	(select count(*) from movie_actor
    where actor_id=actors.actor_id) as movies_count
from actors
order by movies_count desc;

use moviesdb;

select actor_name , age
from 
	(select
		name as actor_name,
        year(curdate()) - birth_year as age 
	from actors)
as actors_age
where age > 70 and age < 85;


with actors_age as (
			select 
				name as actor_name,
                year(curdate()) - birth_year as age 
			from actors
)
select actor_name, age 
from actors_age
where age > 70 and age < 85;

 

 