with final as (

   select 
    to_char(created_at, 'YYYY/MM/DD') as time,
	count(distinct id) as "Number of New Registration"
    FROM
	watchit.users
    where
    to_char(created_at, 'YYYY/MM/DD')  BETWEEN '2022-11-01' AND '2022-12-01' 
    GROUP BY time
)

select *
from final
