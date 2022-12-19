with userbundles as (

    select * from watchit.user_bundles
    
),

users as (

    select * from watchit.users

),

 newsub as (

    SELECT
	to_char(u.created_at, 'YYYY/MM/DD') as time,
	count(distinct u.id) as "Number of New subscribers"
FROM
	watchit.user_bundles a, watchit.users u
WHERE
	a.user_id = u.id
    AND
	to_char(u.created_at, 'YYYY/MM/DD')  BETWEEN '2022-11-01' AND '2022-12-01'
    GROUP BY time 
    
)


select *
from newsub
