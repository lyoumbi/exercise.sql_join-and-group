SELECT CONCAT(e.lastName, ', ', e.firstName) AS 'Sales Rep', 
sum(od.quantityOrdered) AS '# Orders', 
IFNULL(sum(od.quantityOrdered*od.priceEach), 0.00) AS 'Total Sales'  
FROM employees e 
JOIN customers c ON c.salesRepEmployeeNumber=e.employeeNumber 
JOIN orders o ON o.customerNumber=c.customerNumber 
JOIN orderdetails od ON od.orderNumber=o.orderNumber GROUP BY e.lastName ORDER BY 'Total Sales';