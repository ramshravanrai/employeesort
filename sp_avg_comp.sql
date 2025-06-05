CREATE PROCEDURE dbo.sp_CalcAverageCompensation

@LocationName VARCHAR(100)

AS

BEGIN

SELECT

l.location_name,

AVG(e.current_comp_inr) AS avg_compensation

FROM employees e

JOIN locations l ON e.location_id = l.location_id

WHERE l.location_name = @LocationName

AND e.active = 1

GROUP BY l.location_name;

END

GO
