set nocount on;
select 'resource_id;department_id;start_time;duration';
select ResourceID as resource_id,
Usr.DeptID as department_id,
DateBlock as start_time,
Duration as duration from
SchedulingBlock as sb
inner join Usr ON sb.ResourceID = Usr.ID
where
DateBlock >= convert(date,getdate(), 112) and
(DateEnabled > convert(date,getdate(), 112) or
DateEnabled is null) order by sb.ResourceId, sb.DateBlock;