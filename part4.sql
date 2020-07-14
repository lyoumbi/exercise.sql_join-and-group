SELECT pl.productLine AS 'Product Line',
SUM(od.quantityOrdered) AS '# Orders' 
FROM productlines pl 
JOIN products p ON pl.productLine = p.productLine 
JOIN orderdetails od ON p.productCode = od.productCode GROUP BY od.productCode;