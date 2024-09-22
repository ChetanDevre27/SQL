create table account(
user_id serial primary key,
username varchar(50) unique not null,
password varchar(50) not null,
email varchar(50) unique not null,
create_on timestamp not null,
last_login timestamp)


create table job(
job_id serial primary key,
job_name varchar(200) unique not null
)

create table account_job(
user_id integer references account(user_id),
job_id integer references job(job_id),
hire_date timestamp )


-- keep i the mind the inserted eow value nust 

insert into account(username, password,email,create_on)
values
('Sham','root','sham@anjivani.org.in',current_timestamp)

select * from account

insert into job(job_name)
values('Data Scientist')

select * from job


insert into account_job(job_id,user_id,hire_date)
values(1,1,current_timestamp)


---6/09/2023
-- update used for the update
update account
set last_login=current_timestamp

select * from account


select * from job
select * from account_job

update account_job
set hire_date=account.create_on
from account 
where account_job.user_id=account.user_id


update account
set last_login=current_timestamp
returning email,create_on, last_login

insert into job(job_name)
values ('cowboy')
select * from job

delete from job
where job_name='cowboy'
returning  job_id,job_name

create table information(
info_id serial primary key,
title varchar(500) not null,
person varchar(50) not null unique )

select * from information

alter table information
rename to new_info

select * from new_info

alter table new_info
rename column person to people

insert into new_info(title)
values('Some new title')

insert into new_info(title)
values('Some_new_title')

alter table new_info
alter column people drop not null

INSERT INTO new_info(title)
VALUES('Some_new_title') 

ALTER TABLE new_info
DROP COLUMN people

SELECT * FROM new_info






