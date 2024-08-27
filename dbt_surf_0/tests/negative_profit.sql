with test_for_negative_profit as (
    select * from {{ ref('stg_orders') }}
)

select
    order_id,
    sum(profit) as sum_profit
from
    test_for_negative_profit
group by order_id
having
    sum(profit) < -100000000
