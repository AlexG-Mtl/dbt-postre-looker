{{
  config(
    materialized='view'

  )
}}

with source as (
    select * from {{ source('surfalytics','people') }}

)

select
    regional_mngr,
    region
from source
