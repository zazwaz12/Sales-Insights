# Sales Insights for an Ecommerce Site

## Objective

The objective of our project is to empower business decision makers to have a holistic and easy to understand snapshot of their operations.

## Consumers

The end users are happy to access the data through PowerBI and have access to the semantic layer.

## Questions

> - How many orders are there for each customer?
> - What countries and regions have the most orders?
> - What customers have their orders delayed?
> - How many delayed orders are there for each country and region?
> - How many orders do we have for each day?
> - How many delayed orders do we have for each day?

## Source datasets

For this exercise we will be using the Northwind db.

| Source name | Source type         | Source documentation                              |
| ----------- | ------------------- | ------------------------------------------------- |
| northwind   | PostgreSQL database | https://github.com/harryho/db-samples/tree/master |

## Solution architecture

The data is stored in postgres linked an RDS instance in AWS.

The postgres is used through Airbyte to get the data incrementally into Snowflake.

Each of us were given a user access to the Snowflake,

Each of us were given access to the AWS management for the EC2.

Airbyte was hosted on an EC2 instance for the required constant uptime as the ingestion tool.

ECR hosted the Docker image of the DBT script which converts to the necessary dimensions.

ECS is manually called at this stage with a 3 line file of terminal prompts to execute the pipeline.

The Snowflake was linked to PowerBI which was used for further visualisation and organising the semantic layer.

Here is our solution architecture diagram:
