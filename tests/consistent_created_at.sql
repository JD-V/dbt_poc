-- This is singular test. i.e. Custom sql
SELECT
    *
FROM
    {{ ref('fct_reviews') }} r
INNER JOIN 
    {{ ref('dim_listings_cleansed') }} l
ON
    l.listing_id = r.listing_id
    WHERE r.review_date < l.created_at
LIMIT 10