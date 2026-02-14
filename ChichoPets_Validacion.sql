USE ChichoPets;

-- 1. Ver stock inicial
SELECT nombre_producto, stock_actual FROM Productos WHERE id_producto = 1;

-- 2. Ejecutar la venta
INSERT INTO Detalle_Pedidos (id_pedido, id_producto, cantidad, precio_unitario) 
VALUES (1, 1, 3, 45000.00);

-- 3. Ver stock final (debe haber bajado)
SELECT nombre_producto, stock_actual FROM Productos WHERE id_producto = 1;


SELECT * FROM vw_ventas_categoria;