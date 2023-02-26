create database operation;
use operation;

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));

select * from course;

create table if not exists student(
student_id int ,
student_name varchar(30),
student_mobile int ,
student_course_enroll varchar(30),
student_course_id int );

insert into course values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

select * from course;

insert into student values(301 , "sudhanshu", 3543453,'yes', 101),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "sudhanshu", 3543453,'yes', 105),
(302 , "sudhanshu", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 101),
(304 , "sudhanshu", 3543453,'yes', 103),
(305 , "sudhanshu", 3543453,'yes', 105),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "sudhanshu", 3543453,'yes', 103);

select * from student;

select * from course;

select c.course_id , c.course_name , c.course_desc , s.student_id , s.student_name , s.student_course_id from course c
inner join student  s  on c.course_id = s.student_course_id;

select c.course_id , c.course_name , c.course_desc , s.student_id , s.student_name , s.student_course_id from course c
left join student  s  on c.course_id = s.student_course_id where s.student_id is null;

select c.course_id , c.course_name , c.course_desc , s.student_id , s.student_name , s.student_course_id from course c
left join student  s  on c.course_id = s.student_course_id;

select c.course_id , c.course_name , c.course_desc , s.student_id , s.student_name , s.student_course_id from course c
right join student  s  on c.course_id = s.student_course_id;

select c.course_id , c.course_name , c.course_desc , s.student_id , s.student_name , s.student_course_id from course c
right join student  s  on c.course_id = s.student_course_id where c.course_id is null;

select c.course_id , c.course_name , c.course_desc , s.student_id , s.student_name , s.student_course_id from course c
cross join student  s ;

show index from course;

create table if not exists course1 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id)
);

select * from course1;

insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

 

show index from course1;

create table if not exists course2 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id, course_name )
);

show index from course2;

select * from course;
select * from student;


select course_id , course_name from course
union
select student_id , student_name from student;

select course_desc, course_name  from course
union
select student_id , student_name from student;

select * from course;

select * from course where course_id in (101,102,106);

with sample_student as (
select * from course where course_id in (101, 102,106))
select * from sample_students where course_tag = 'java';

 create database ineuron;
 use ineuron;
 
 create table course(
 course_id int, 
 course_desc varchar(50),
 course_mentor varchar(60),
 course_price int,
 course_disocunt int);
 
 create table course_update(
 course_metor_update varchar(50),
 course_price_update int,
 course_discount_update int );
 
 delimiter $$
 create trigger course_befor_insert 
 before insert 
 on course
 begin
 
 select user() int course;
 select new.create_date = sysdate()
 end
 
 end 
 
 select * from course 
 
 select 
 

