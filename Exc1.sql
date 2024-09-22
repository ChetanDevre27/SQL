select * from cd.bookings
select * from cd.facilities
--Q2
select name,membercost from cd.facilities 
where membercost>0

--Q4
select facid,name, membercost, monthlymaintenance from cd.facilities 
where membercost > 0 and membercost <(monthlymaintenance /50.0)

--Q5 
select * from cd.facilities 
where name like '%Tennis%'

--Q6
select * from cd.facilities 
where facid in (1,5)

--Q7

select memid, surname, firstname, joindate from cd.members
where joindate<= '2012-09-01'

--Q8
select distinct(surname) from cd.members
order by surname limit 10

--Q9 
select max(joindate) from cd.members

--Q10
select count(facilities) from cd.facilities 
where guestcost>= 10

--Q11
select * from cd.bookings

select facid,sum(slots) as total_slot
from cd.bookings
where starttime>='2012-09-01' and
starttime<='2012-10-01'
group by facid order by sum(slots)

--Q12
select facid,sum(slots) as total_slot
from cd.bookings
where sum(slots)<1000
grou by fac id


--Q13
select cd.bookings.starttime, cd.facilities.name
from cd.facilities
inner join cd.bookings
on cd.facilities.facid=cd.bookings.facid
where cd.facilities.name in('Tennis court 1','Tennis court 2')

