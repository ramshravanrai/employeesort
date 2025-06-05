CREATE PROCEDURE dbo.sp_ExportFilteredEmployees

@RoleName VARCHAR(100) = NULL,

@LocationName VARCHAR(100) = NULL,

@IncludeInactive BIT = 0,

@PctIncrement DECIMAL(5,2) = 0

AS

BEGIN

SELECT

e.name,

r.role_name AS Role,

l.location_name AS Location,

e.years_experience AS Experience,

ROUND(e.current_comp_inr * (1 + @PctIncrement/100), 2) AS Compensation,

CASE WHEN e.active = 1 THEN 'Active' ELSE 'Inactive' END AS Status

FROM employees e

JOIN roles r ON e.role_id = r.role_id

JOIN locations l ON e.location_id = l.location_id

WHERE (@RoleName IS NULL OR r.role_name = @RoleName)

AND (@LocationName IS NULL OR l.location_name = @LocationName)

AND (@IncludeInactive = 1 OR e.active = 1);

END

GO