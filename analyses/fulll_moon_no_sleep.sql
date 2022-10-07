-- this query will be compiled in sql by simplyfying all the references

WITH mart_fullmoon_reviews AS (
    SELECT * FROM {{ ref('mart_full_moon_reviews') }}
)
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) as reviews
FROM
    mart_fullmoon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment