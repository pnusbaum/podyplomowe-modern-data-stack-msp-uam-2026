-- back compat for old kwarg name
  
  
        
            
	    
	    
            
        
    

    

    merge into `pnusbaum-uam-2026`.`bookstore_security`.`user_keys` as DBT_INTERNAL_DEST
        using (

SELECT
    customer_id,
    TO_HEX(KEYS.NEW_KEYSET('AEAD_AES_GCM_256')) as encryption_key
FROM `pnusbaum-uam-2026`.`bookstore_src`.`ext_customers`


  WHERE customer_id NOT IN (SELECT customer_id FROM `pnusbaum-uam-2026`.`bookstore_security`.`user_keys`)

        ) as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.customer_id = DBT_INTERNAL_DEST.customer_id))

    
    when matched then update set
        `customer_id` = DBT_INTERNAL_SOURCE.`customer_id`,`encryption_key` = DBT_INTERNAL_SOURCE.`encryption_key`
    

    when not matched then insert
        (`customer_id`, `encryption_key`)
    values
        (`customer_id`, `encryption_key`)


    