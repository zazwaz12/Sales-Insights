## Transformation
- We transformed data in two stages using dbt:
    - Raw -> Staging
        - In the first stage we selected relative tables, columns
        - Applied data quality tests and documentations
        - Applied incremental add to tables such as orders table

    - Staging -> Mart
        - In the second stage we joined different tables to get Fact and Dimension tables
        - Made new columns such as key columns using hash functions
        - Applied some data quality tests and documentations

- We configured an ECS instance to run DBT docker image on scheduale:
