set nocount on;
select 'id;first_name;second_name;last_name;department_id;clinic_id';
select  Usr.ID as id, FirstName as first_name, SecondName as second_name, LastName as last_name,
isnull(DeptID, '') as department_id, isnull(dpt.OrgID, '') as clinic_id from Usr
left join Dept as dpt
on Usr.DeptID = dpt.ID
where
IsMedpersonnel=1
and DoctorStatus is not null
order by Usr.Name;