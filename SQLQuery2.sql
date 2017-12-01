--insert into Rooms values (15, 'Board Room')
--insert into Rooms values (15, 'Board Room')

--insert into Rooms values (50, 'Presenter')
--insert into Rooms values (50, 'Presenter')
--insert into Rooms values (50, 'Presenter')
--insert into Rooms values (50, 'Presenter')

--insert into Rooms values (200, 'Banquet')
--insert into Rooms values (200, 'Banquet')
--insert into Rooms values (200, 'Banquet')
--insert into Rooms values (200, 'Banquet')

--insert into Rooms values (1000, 'Auditorium')

--insert into Rooms values (3000, 'Ballroom')

--insert into Rooms values (500, 'Court Yard')

--insert into Reservations values ('abc123', 1, 5, 1513090800);

select *
from Rooms ro
left join Reservations re on ro.RID = re.RID
where (re.ResDate <> 1513090800) or re.ResDate is null
