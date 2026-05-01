
  
    

    create or replace table `pnusbaum-uam-2026`.`bookstore_dwh`.`fct_transactions`
      
    
    

    
    OPTIONS()
    as (
      SELECT
    transaction_id,
    customer_id,
    book_id,
    book_title,
    book_author,
    author_id,
    book_publisher,
    publisher_id,
    book_category,
    transaction_date,
    cash_register,
    cashier,
    unit_price,
    quantity,
    total_item_price
FROM `pnusbaum-uam-2026`.`bookstore_dwh`.`flat_transactions`
    );
  