-- models/dwh/core/dim_publishers.sql


WITH base AS (
    SELECT DISTINCT
        publisher as publisher_name
    FROM `pnusbaum-uam-2026`.`bookstore_stg`.`stg_books`
)

SELECT
    ABS(FARM_FINGERPRINT(publisher_name)) as publisher_id,
    publisher_name
FROM base