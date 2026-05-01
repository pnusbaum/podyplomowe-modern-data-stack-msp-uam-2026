

  create or replace view `pnusbaum-uam-2026`.`bookstore_stg`.`stg_customers`
  OPTIONS()
  as SELECT
    c.* REPLACE (
        TO_HEX(AEAD.ENCRYPT(SAFE.FROM_HEX(k.encryption_key), first_name, '')) as first_name,
        TO_HEX(AEAD.ENCRYPT(SAFE.FROM_HEX(k.encryption_key), last_name, '')) as last_name,
        TO_HEX(AEAD.ENCRYPT(SAFE.FROM_HEX(k.encryption_key), email, '')) as email,
        TO_HEX(AEAD.ENCRYPT(SAFE.FROM_HEX(k.encryption_key), phone_number, '')) as phone_number,
        TO_HEX(AEAD.ENCRYPT(SAFE.FROM_HEX(k.encryption_key), address, '')) as address,
        date as registration_date
    )
FROM `pnusbaum-uam-2026`.`bookstore_src`.`ext_customers` c
JOIN `pnusbaum-uam-2026`.`bookstore_security`.`user_keys` k ON c.customer_id = k.customer_id;

