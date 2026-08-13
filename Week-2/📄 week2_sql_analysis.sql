CREATE DATABASE data_science_internship;

USE data_science_internship;

SELECT *
FROM sql_sales_dataset_200_rows;

SELECT *
FROM sql_sales_dataset_200_rows
WHERE total_price > 10000;

SELECT *
FROM sql_sales_dataset_200_rows
ORDER BY total_price DESC;

SELECT
    category,
    SUM(total_price) AS total_sales
FROM sql_sales_dataset_200_rows
GROUP BY category
ORDER BY total_sales DESC;

SELECT
    AVG(total_price) AS average_order_value
FROM sql_sales_dataset_200_rows;

SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM sql_sales_dataset_200_rows
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

SELECT COUNT(*) AS total_orders
FROM sql_sales_dataset_200_rows;

CREATE TABLE customers AS
SELECT DISTINCT
    customer_name
FROM sql_sales_dataset_200_rows;

SELECT *
FROM customers;

SELECT
    s.order_id,
    s.customer_name,
    s.total_price
FROM sql_sales_dataset_200_rows AS s
INNER JOIN customers AS c
    ON s.customer_name = c.customer_name;
    
SELECT
    order_id,
    customer_name,
    total_price,
    CASE
        WHEN total_price >= 10000 THEN 'High Value'
        WHEN total_price >= 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_category
FROM sql_sales_dataset_200_rows;

SELECT
    order_id,
    customer_name,
    total_price
FROM sql_sales_dataset_200_rows
WHERE total_price > (
    SELECT AVG(total_price)
    FROM sql_sales_dataset_200_rows
)
ORDER BY total_price DESC;

SELECT *
FROM sql_sales_dataset_200_rows;

SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM sql_sales_dataset_200_rows
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;