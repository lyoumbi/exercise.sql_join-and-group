SELECT p.productName AS 'Product Name', 
sum(od.quantityOrdered)  AS 'Total # Ordered',
sum(od.quantityOrdered*od.priceEach) AS 'Total Sale'
FROM products p 
JOIN orderdetails AS od ON p.productCode=od.productCode GROUP BY od.productCode;


-- SELECT productName AS 'Product Name', 
-- (SELECT sum(quantityOrdered) FROM orderdetails group by productCode HAVING products.productCode=orderdetails.productCode) AS 'Total # Ordered',
-- (SELECT sum(quantityOrdered*priceEach) FROM orderdetails group by productCode HAVING products.productCode=orderdetails.productCode) AS 'Total Sale'
-- FROM products;




