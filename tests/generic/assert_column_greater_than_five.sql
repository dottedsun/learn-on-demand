{% test assert_column_greater_than_five(model, column_name) %}
    SELECT
    {{ column_name }}
    FROM {{ model }}
    WHERE 1 = 1
    AND {{ column_name }} <= 5
{% endtest %}