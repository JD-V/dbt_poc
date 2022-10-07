-- This macro takes 2 args model name and column name.
-- All the tests needs to be deifned in such a way that in order to pass, the sql should return 0 results. 
-- If it returns >0 results it wil ail.
{% test positive_value(model, column_name) %}
SELECT
    *
FROM
    {{ model }}
WHERE
    {{ column_name}} < 1
{% endtest %}