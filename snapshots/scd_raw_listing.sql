{% snapshot scd_raw_listing %}

{{
    config(
        target_schema = "dev",
        unique_key = "id",
        strategy = "timestamp",
        updated_at = "updated_at",
        invalidate_hard_deletes = True
    )
}}
-- SCD type2 implementaion requires a unique key, strtegy and updated_at key.
-- Read more here, https://docs.getdbt.com/docs/building-a-dbt-project/snapshots

select * from {{ source('airbnb', 'listings') }}

{% endsnapshot %}

