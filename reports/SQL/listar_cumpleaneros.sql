SELECT
    -- DATE_FORMAT(clie_cumple,'%m-%d') AS CUMPLE,
    clie_cumple AS CUMPLE,
    clie_nombrecompleto AS NOMBRE,
    clie_rut AS RUT
FROM
    clientes
WHERE
    MONTH(clie_cumple) = DATE_FORMAT(CURDATE(),'%m') AND
    DAY(clie_cumple) = DATE_FORMAT(CURDATE(),'%d')
    
