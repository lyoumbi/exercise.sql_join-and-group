SELECT customerName AS 'Customer Name', CONCAT(lastName, ', ', firstName) AS 'Sales Rep'
FROM customers
JOIN employees on customers.salesRepEmployeeNumber = employees.employeeNumber;