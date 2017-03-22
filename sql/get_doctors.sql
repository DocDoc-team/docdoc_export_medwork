set nocount on;
select 'id;name;first_name;second_name;last_name;department_id;clinic_id';
select  Usr.ID as id, FirstName as first_name, SecondName as second_name, LastName as last_name,
DeptID as department_id, dpt.OrgID as clinic_id from Usr
left join Dept as dpt
on Usr.DeptID = dpt.ID
where
IsMedpersonnel=1
and DoctorStatus is not null
order by Usr.Name;