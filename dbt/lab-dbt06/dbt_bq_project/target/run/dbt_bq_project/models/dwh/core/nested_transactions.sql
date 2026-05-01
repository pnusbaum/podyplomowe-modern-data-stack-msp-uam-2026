
  
    

    create or replace table `pnusbaum-uam-2026`.`bookstore_dwh`.`nested_transactions`
      
    
    

    
    OPTIONS()
    as (
      

SELECT * FROM `pnusbaum-uam-2026`.`bookstore_int`.`prep_transactions_enriched`
    );
  