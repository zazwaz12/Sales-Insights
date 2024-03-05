## Data source:

Our data source is Postgresql database hosted on aws


![pg_connection](https://github.com/zazwaz12/Sales-Insights/assets/145528713/2654b6f4-e2ed-43e6-85b3-ed4f28264694)

## Extract & Load:

- We used Airbyte to extract and Load data from Postgresql server to Snowflake warehouse Raw schema

  <img width="1421" alt="airbyte" src="https://github.com/zazwaz12/Sales-Insights/assets/145528713/3fd518e0-d5dd-4143-97c4-b5a6c2a95dbc">


- Airbyte was connection was configured to incremental | Appedn+Deduped sync from source for the follwoing tables:
    - orders
    - order_details

- Airbyte is hosted on an EC2 instance

  <img width="1101" alt="airbyte_ec2" src="https://github.com/zazwaz12/Sales-Insights/assets/145528713/1cdac8c3-9b24-48b3-8d1d-56c46b93224c">
