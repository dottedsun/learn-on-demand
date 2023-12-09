SELECT
amount
FROM {{ ref('fct_orders') }}
WHERE 1 = 1
AND amount <= 5