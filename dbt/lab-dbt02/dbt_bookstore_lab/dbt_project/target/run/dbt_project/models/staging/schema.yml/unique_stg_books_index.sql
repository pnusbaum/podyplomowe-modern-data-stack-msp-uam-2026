select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    index as unique_field,
    count(*) as n_records

from "bookstore_dwh"."main"."stg_books"
where index is not null
group by index
having count(*) > 1



      
    ) dbt_internal_test