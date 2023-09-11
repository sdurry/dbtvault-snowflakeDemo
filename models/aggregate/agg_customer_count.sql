{{
    config(
        materialized='table'
    )
}}

with hub_customer as (

select * from {{ ref('hub_customer') }}

)

select count(*)
from hub_customer
