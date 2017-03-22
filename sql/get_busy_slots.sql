set nocount on;
select 'resource_id;department_id;start_date;start_time;duration';
select Resource as resource_id, Usr.DeptID as department_id,
convert(date,n.DataPriema, 112) as start_date,
convert(varchar(8),n.VremyaPriema, 108) as start_time,
n.Duration as duration
from napravlenie n
inner join Usr on n.Resource = Usr.ID
left join PatForm pf on pf.ID=n.ID
where
pf.Canceled=0
AND DataPriema >= convert(date,getdate(), 112)
order by Resource, DataPriema;