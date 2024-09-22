create table student(
student_id serial primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	homeroom_number int not null,
	phone varchar(10),
	email varchar(50),
	graduation_year int
)

select * from student


create table teachers( 
	teachers_id serial primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	homeroom_number int not null,
	department varchar(50),
	email varchar(100) unique  not null,
	phone varchar(50) unique not null
)

select * from teachers

insert into student (student_id,first_name,last_name,homeroom_number,phone,email,graduation_year)
values(1,'Rahul','Galande',5,7777888999,'Rahul.Galande@gmail.com',2023)


insert into teachers(
	teachers_id,first_name,last_name,homeroom_number,department,email,phone
)
values(1,'Chandrashekhar','Gote',5,'Biology dept','Chandrashekhar.gogte@gamil.com ',7755569996)

