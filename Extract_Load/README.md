## Data source:

Our data source is Postgresql database hosyed on aws



## Extract & Load:

- We used Airbyte to extract and Load data from Postgresql server to Snowflake warehouse Raw schema

- Airbyte was connection was configured to incremental | Appedn+Deduped sync from source for the follwoing tables:
    - orders
    - order_details

- Airbyte is hosted on an EC2 instance