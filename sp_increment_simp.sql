
CREATE PROCEDURE dbo.sp_SimulateIncrement

@PctIncrement DECIMAL(5,2)

AS

BEGIN

SELECT

e.employee_id,

e.name,

r.role_name,

l.location_name,

e.current_comp_inr,

ROUND(e.current_comp_inr * (1 + @PctIncrement/100), 2) AS new_comp_inr

FROM employees e

JOIN roles r ON e.role_id = r.role_id

JOIN locations l ON e.location_id = l.location_id

WHERE e.active = 1;

END

GO