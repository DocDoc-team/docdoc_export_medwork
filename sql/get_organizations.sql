set nocount on;
select 'id;name;address;phone';
select ID as id, FullName as name, PhysicalAddress as address, Phone as phone
from organisations
where OrgType = 3 and OwnOrg = 1 order by ID;