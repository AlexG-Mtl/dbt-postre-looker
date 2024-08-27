{{
  config(
    materialized='view'

  )
}}

with source as (

    select * from {{source('surfalytics','returns')}}

)

select
    returned,
    order_id
from source
