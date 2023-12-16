-- dbt test -s fct_orders,test_type:singular
{{
    config(
        severity='warn'
    )
}}
SELECT
customer_id
, AVG(amount) AS avg_amount
FROM {{ ref('fct_orders') }}
GROUP BY 1
HAVING COUNT(customer_id) > 1 AND avg_amount < 1