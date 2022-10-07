{{
    config(
        materialized = 'incremental',
        on_schema_change = 'failed'
    )
}}
WITH src_reviews as (
    SELECT * from {{ ref('src_reviews') }}
)

SELECT 
    {{ dbt_utils.surrogate_key('listing_id', 'review_date', 'reviewer_name') }} as review_id, -- Here, dbt_utils is the external dbt package that helps us build the surrogate by utilising one or more columns from existing model
    * 
FROM src_reviews
where review_text is not null
{% if is_incremental() %} 
-- this is to check whether the model is defined as incremental load. If yes, the incremental load should read all the rows after the max value of timestmap field of the current table from source table and load it to the current table
    AND review_date > ( select max(review_date) from {{this}} )
-- {{this}} refers to the current model.
{% endif %}