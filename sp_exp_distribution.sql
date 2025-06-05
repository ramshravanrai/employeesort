CREATE PROCEDURE dbo.sp_GetExperienceDistribution

@GroupBy VARCHAR(10) = NULL -- 'Role' or 'Location'

AS

BEGIN

;WITH buckets AS (

SELECT *,

CASE

WHEN years_experience BETWEEN 0 AND 1 THEN '0-1'

WHEN years_experience > 1 AND years_experience <= 2 THEN '1-2'

WHEN years_experience > 2 AND years_experience <= 5 THEN '2-5'

ELSE '5+' END AS exp_bucket

FROM employees

WHERE active = 1

)

SELECT

CASE WHEN @GroupBy = 'Role'

THEN r.role_name

ELSE l.location_name END AS group_name,

b.exp_bucket,

COUNT(*) AS cnt

FROM buckets b

JOIN roles r ON b.role_id = r.role_id

JOIN locations l ON b.location_id = l.location_id

GROUP BY

CASE WHEN @GroupBy = 'Role' THEN r.role_name ELSE l.location_name END,

b.exp_bucket

ORDER BY 1,2;

END

GO
