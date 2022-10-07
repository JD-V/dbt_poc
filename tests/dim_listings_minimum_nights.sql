-- This is singular test. i.e. Custom sql
SELECT 
    * 
FROM
    {{ ref('dim_listings_cleansed')}}
WHERE
    minimum_nights < 1
LIMIT 10

