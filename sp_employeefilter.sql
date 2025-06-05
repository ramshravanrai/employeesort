CREATE PROCEDURE dbo.sp_FilterEmployees

@RoleName VARCHAR(100) = NULL,

@LocationName VARCHAR(100) = NULL,

@IncludeInactive BIT = 0

AS

BEGIN

SELECT

e.employee_id,

e.name,

r.role_name,

l.location_name,

e.current_comp_inr

FROM employees e

JOIN roles r ON e.role_id = r.role_id

JOIN locations l ON e.location_id = l.location_id

WHERE (@RoleName IS NULL OR r.role_name = @RoleName)

AND (@LocationName IS NULL OR l.location_name = @LocationName)

AND (@IncludeInactive = 1 OR e.active = 1);

END

GO