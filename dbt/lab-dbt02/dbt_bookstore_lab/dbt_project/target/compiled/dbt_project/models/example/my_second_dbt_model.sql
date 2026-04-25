-- Use the `ref` function to select from other models

select *
from "bookstore_dwh"."main"."my_first_dbt_model"
where id = 1