

SELECT
    customer_id,
    TO_HEX(KEYS.NEW_KEYSET('AEAD_AES_GCM_256')) as encryption_key
FROM `pnusbaum-uam-2026`.`bookstore_src`.`ext_customers`


  WHERE customer_id NOT IN (SELECT customer_id FROM `pnusbaum-uam-2026`.`bookstore_security`.`user_keys`)
