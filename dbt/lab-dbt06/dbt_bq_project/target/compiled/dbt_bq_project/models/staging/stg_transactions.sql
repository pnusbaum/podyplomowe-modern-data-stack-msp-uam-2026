SELECT
    transaction_id,
    customer_id,
    CAST(transaction_date AS DATE) as transaction_date,
    items,
    cash_register,
    cashier
FROM `pnusbaum-uam-2026`.`bookstore_src`.`ext_transactions`