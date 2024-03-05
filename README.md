# Sales-Insights

## Objectives

This project is dedicated to develping a ELT solution which utilises current data stack and is deployed on the cloud. The goal of this solution is provide data/business analysts with data they need to answer questions related to employees and sales performance.


## Consumers of your data

- Data anlysts
- Business analysts


## Datasets selected

- Northwind Store -	https://github.com/pthom/northwind_psql


## Dimensional model on snowflake warehouse:

![image](https://github.com/zazwaz12/Sales-Insights/assets/145528713/9fb6762b-b263-445b-8551-cbad3016bf4c)

Fact table:
- Fact_orders

Dimension tables:
- Dim_product_details
- Dim_employee_details
- Dim_customer_details


## Solution architecture

![image](https://github.com/zazwaz12/Sales-Insights/assets/145528713/eb5fd886-fe08-4e1d-9b32-cfa0d0bc70d1)


## Breakdown of tasks:

- Uploade raw data set to AWS RDS Postgresql server
- Deploy an Airbyte docker image on an EC2 instance
- Deploy a Snowflake warehouse
- Configure a sync task between Source (Postgresql server) and Destination (Snowflake warehouse)
- Ingest raw data from posgtresql server into Raw schema in Snowflake warehouse using Airbyte
- Build DBT models to transform data in 2 stages:
  - Raw -> Staging
  - Staging -> Fact and Dimension (Marts)
- Deploy a DBT docker image on an ECS instance and scheduale a task
- Configure a connection between data warehouse Mart schema and PowerBI/Tableau
- Build dashboards on PowerBI/Tableau
