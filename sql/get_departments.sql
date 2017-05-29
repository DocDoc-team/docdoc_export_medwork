set nocount on;
select 'id;parent_id;type;name;clinic_id;clinic_name;address;phone';
select dpt.ID as id, dpt.ParentID as parent_id,
DeptTypeID as type, Name as name, isnull(org.ID, '') as clinic_id,
isnull(org.FullName, '') as clinic_name, isnull(org.PhysicalAddress, '') as address,
isnull(org.Phone, '') as phone from Dept as dpt
left join Organisations as org
on org.ID = dpt.OrgID
where
 (isNull(archived,0) = '0') order by dpt.ID;