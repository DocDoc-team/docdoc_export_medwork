set nocount on;
select 'rule_id;day_schedule_id;resource_id;department_id;date;active;start_time;finish_time;duration';
select cp.ID as rule_id, cp.DayScheduleID as day_schedule_id,
ds.ResourceID as resource_id, Usr.DeptID as department_id,
cp.Date as date, cp.isAct as active,
tm.BeginTime as start_time,
tm.EndTime as finish_time,
tm.ReceptionInterval as duration
 from
correctionPatterns cp,
daySchedules ds
 inner join  TimeIntervals as tm on ds.ID = tm.DayScheduleID
 left join Usr on Usr.ID = ds.ResourceID
where
cp.dayScheduleID=ds.ID and
cp.Date between convert(date,getdate(), 112) and
convert(date,getdate() + 30, 112)
 order by ds.ResourceID, cp.Date;