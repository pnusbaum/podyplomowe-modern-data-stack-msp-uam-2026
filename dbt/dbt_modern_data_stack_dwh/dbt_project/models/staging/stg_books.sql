SELECT
    index as book_id,
    Publishing_Year as publishing_year,
    Book_Name as title,
    Author as author,
    language_code,
    Author_Rating as author_rating,
    Book_average_rating as book_average_rating,
    Book_ratings_count as book_ratings_count,
    genre as category,
    gross_sales,
    publisher_revenue,
    sale_price as price,
    sales_rank,
    Publisher_ as publisher,
    units_sold
FROM {{ source('gcs_raw', 'ext_books') }}