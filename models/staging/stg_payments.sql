{{
  config(
    materialized='view'
  )
}}
select 
    pay.orderid as order_id, 
    amount / 100 as amount,
    id as payment_id
from raw.stripe.payment as pay 
