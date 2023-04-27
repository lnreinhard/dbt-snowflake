select 
    id as payment_id, 
    orderid as order_id, 
    created as created_at, 
    amount / 100 as amount, 
    paymentmethod, 
    status
from {{ source('stripe', 'payment') }}
