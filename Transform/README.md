## Transformation
- We transformed data in two stages using dbt:

  
- Raw -> Staging
  - In the first stage we selected relative tables, columns
  - Applied data quality tests and documentations
  - Applied incremental add to tables such as orders table

![staging_table_sql](https://github.com/zazwaz12/Sales-Insights/assets/145528713/b5b27fea-de4b-4a4a-b4eb-a4a6865c4b5d)
![staging_table_yml](https://github.com/zazwaz12/Sales-Insights/assets/145528713/f81cf094-de24-4981-b3a0-56c207fdbf8a)



- Staging -> Mart
    - In the second stage we joined different tables to get Fact and Dimension tables
    - Made new columns such as key columns using hash functions
    - Applied some data quality tests and documentations

![fact_table_sql](https://github.com/zazwaz12/Sales-Insights/assets/145528713/91471263-6cd6-4fea-b718-4ec7267c305f)
![staging_table_yml](https://github.com/zazwaz12/Sales-Insights/assets/145528713/1eb9037a-d026-4f8e-88a6-e54b6cc6467b)


- We configured an ECS instance to run DBT docker image on scheduale:

<img width="1440" alt="dbt_ecs" src="https://github.com/zazwaz12/Sales-Insights/assets/145528713/ff206942-df74-431d-bb51-584c3bd4ece4">

