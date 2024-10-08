Run tests like:

dbt run --vars 'test_type: sf1' -s math

dbt run --vars 'test_type: sf1_stats' -s groups

dbt run --vars 'test_type: sf100' -s math

dbt run --vars 'test_type: sf100_projections' -s aggregate

dbt run --vars 'test_type: sf100_projections_stats' -s nested

