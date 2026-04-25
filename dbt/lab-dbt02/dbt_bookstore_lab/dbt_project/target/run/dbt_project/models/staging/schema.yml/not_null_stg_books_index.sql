select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select index
from "bookstore_dwh"."main"."stg_books"
where index is null



      
    ) dbt_internal_test