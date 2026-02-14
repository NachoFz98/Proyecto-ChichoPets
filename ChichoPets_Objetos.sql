USE ChichoPets;

-- Función 1: Calcular la edad de la mascota en años
DELIMITER //
CREATE FUNCTION fn_edad_mascota(fecha_nac DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE edad INT;
    SET edad = TIMESTAMPDIFF(YEAR, fecha_nac, CURDATE());
    RETURN edad;
END //
DELIMITER ;

-- Función 2: Calcular el valor total de stock de un producto (Precio * Stock)
DELIMITER //
CREATE FUNCTION fn_valor_inventario_prod(id_prod INT) 
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    DECLARE valor_total DECIMAL(12,2);
    SELECT (precio * stock_actual) INTO valor_total 
    FROM Productos WHERE id_producto = id_prod;
    RETURN valor_total;
END //
DELIMITER ;