-- models/staging/stg_customers.sql
-- Model wybierający dane z tabeli załadowanej przez 'dbt seed'


select
   *
from "bookstore_dwh"."main"."customers" -- Użycie funkcji ref() do odwołania się do seeda (lub innego modelu)