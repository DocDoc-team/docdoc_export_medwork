set nocount on;
select 'rule_id;day_schedule_id;resource_id;department_id;date;active';
select cp.ID as rule_id, cp.DayScheduleID as day_schedule_id,
ds.ResourceID as resource_id, Usr.DeptID as department_id,
cp.Date as date, cp.isAct as active
 from
correctionPatterns cp,
daySchedules ds
 left join Usr on Usr.ID = ds.ResourceID
where
cp.dayScheduleID=ds.ID and
cp.Date between convert(date,getdate(), 112) and
convert(date,getdate() + 30, 112)
 order by ds.ResourceID, cp.Date;