FROM ghcr.io/dbt-labs/dbt-snowflake:1.7.1

COPY . .

ENTRYPOINT ["/bin/bash", "build_dbt.sh"]
