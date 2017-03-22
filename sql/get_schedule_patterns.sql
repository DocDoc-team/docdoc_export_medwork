set nocount on;
select 'pattern_id;day_schedule_id;resource_id;department_id;pattern_start;pattern_finish;repeat;day_number;day_type;use_days;periodicity;recurrence_mode;active;start_time;finish_time;duration';
select rp.ID as pattern_id, rp.DayScheduleID as day_schedule_id,
ds.ResourceID as resource_id, Usr.DeptID as department_id,
rp.Start as pattern_start, rp.Finish as pattern_finish,
rp.rCount as repeat, rp.DayNumber as day_number,
rp.DayType as day_type,
rp.OccurDays as use_days,
rp.Periodicity as periodicity,
rp.Recurrence as recurrence_mode,
rp.isAct as active,
tm.BeginTime as start_time,
tm.EndTime as finish_time,
tm.ReceptionInterval as duration
  from RecurrencePatterns rp,
daySchedules ds
inner join  TimeIntervals as tm on ds.ID = tm.DayScheduleID
left join Usr on Usr.ID = ds.ResourceID
where rp.dayScheduleID=ds.ID and
rp.Start < convert(date,getdate() + 31, 112) and
((rp.Finish >= convert(date,getdate(), 112) and rp.rCount=0) or
rp.rCount<>0)
and rp.isAct = 1
order by ds.ResourceID, rp.Start;