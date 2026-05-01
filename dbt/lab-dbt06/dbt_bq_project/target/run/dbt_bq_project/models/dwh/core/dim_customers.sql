
  
    

    create or replace table `pnusbaum-uam-2026`.`bookstore_dwh`.`dim_customers`
      
    
    

    
    OPTIONS()
    as (
      SELECT
    customer_id,
    first_name,
    last_name,
    email,
    registration_date
FROM `pnusbaum-uam-2026`.`bookstore_stg`.`stg_customers`
    );
  