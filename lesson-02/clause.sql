SELECT 
    category_id, 
    COUNT(product_id) AS total_products, 
    AVG(list_price) AS average_price
FROM production.products
GROUP BY category_id
HAVING COUNT(product_id) > 20
ORDER BY average_price DESC;