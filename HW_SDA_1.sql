/* Задание 2 */
SELECT product_name, manufacturer, price 
FROM product_database
WHERE product_count > 2;

/* Задание 3 */
SELECT * 
FROM product_database
WHERE manufacturer = 'Samsung';

/* Задание 4.1. */
SELECT *
FROM product_database
WHERE product_name LIKE '%iPhone%';

/* Задание 4.2. */
SELECT product_name
FROM product_database
WHERE manufacturer LIKE '%Samsung%';

/* Задание 4.3. */
SELECT *
FROM product_database
WHERE product_name REGEXP '[:digit:]' ;

/* Задание 4.4. */
SELECT *
FROM product_database
WHERE product_name REGEXP '[8]';

