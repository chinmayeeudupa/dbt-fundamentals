with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers')}}

)

select * from customers

/*
    select *
    from a_big_table

    -- limit the amount of data queried in dev
    {% if target.name != 'prod' %}
        where created_at > date_trunc('month', current_date)
    {% endif %}
*/
