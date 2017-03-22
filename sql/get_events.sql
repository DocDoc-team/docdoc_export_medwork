set nocount on;
select 'resource_id;department_id;start_time;duration';
select ResourceID as resource_id,
Usr.DeptID as department_id,
ReceptionDateTime as start_time,
Duration as duration from SchedEvent as sh
inner join Usr on sh.ResourceID = Usr.ID
where
ReceptionDateTime >= convert(date,getdate(), 112)
order by ReceptionDateTime;