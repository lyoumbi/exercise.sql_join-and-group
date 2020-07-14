SELECT DATE_FORMAT(paymentDate, '%M') AS 'Month', YEAR(paymentDate) AS 'Year', sum(amount) AS 'Payments Received'  
FROM payments GROUP BY MONTH(paymentDate), YEAR(paymentDate);