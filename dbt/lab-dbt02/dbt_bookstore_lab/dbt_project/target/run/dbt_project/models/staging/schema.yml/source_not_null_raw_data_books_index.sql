select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select index
from "external_db"."main"."books"
where index is null



      
    ) dbt_internal_test