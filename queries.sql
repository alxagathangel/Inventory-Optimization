# total items of every warehouse
SELECT w.warehouseCode, SUM(p.quantityInStock) AS total_items FROM products p
JOIN warehouses w ON p.warehouseCode = w.warehouseCode
GROUP BY w.warehouseCode;

# how many times a product has been ordered and which warehouse it's in
SELECT w.warehouseCode, p.productCode, SUM(od.quantityOrdered) AS totalQuantityOrdered
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
JOIN warehouses w ON p.warehouseCode = w.warehouseCode
GROUP BY w.warehouseCode, p.productCode;

# what product lines are stored in each warehouse
SELECT productLine, warehouseCode FROM products
WHERE productLine IN ('Ships', 'Classic Cars', 'Motorcycles', 'Trucks and Buses', 'Vintage Cars', 'Planes', 'Trains')
GROUP BY productLine, warehouseCode
ORDER BY productLine, warehouseCode;

# potential items not moving
SELECT od.orderNumber, od.productCode, p.productName, od.quantityOrdered
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
WHERE od.quantityOrdered = 0;

# product details of warehouse d
SELECT p.productCode, MAX(p.quantityInStock) as quantityInStock, 
	SUM(od.quantityOrdered) as totalQuantityOrdered
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
WHERE p.warehouseCode = 'd'
GROUP BY p.productCode;