set nocount on;
select 'resource_id;department_id;start_date;start_time;duration';
select Resource as resource_id, Usr.DeptID as department_id,
convert(date,zv.DataPriema, 112) as start_date,
convert(varchar(8),zv.VremyaPriema, 108) as start_time,
Duration as duration
from SpisokZvonkov as zv
inner join Usr on zv.Resource = Usr.ID
where
zv.DataPriema >= convert(date,getdate(), 112)
and ShowInSchedule = 1
order by zv.DataPriema;
