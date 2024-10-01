{% macro test_includes() %}
with customer as (
    select * from {{ source(var("test_type"), 'customer') }}
),
lineitem as (
    select * from {{ source(var("test_type"), 'lineitem') }}
),
nation as (
    select * from {{ source(var("test_type"), 'nation') }}
),
orders as (
    select * from {{ source(var("test_type"), 'orders') }}
),
part as (
    select * from {{ source(var("test_type"), 'part') }}
),
partsupp as (
    select * from {{ source(var("test_type"), 'partsupp') }}
),
region as (
    select * from {{ source(var("test_type"), 'region') }}
),
supplier as (
    select * from {{ source(var("test_type"), 'supplier') }}
)
{% endmacro %}