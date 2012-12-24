SELECT
    clie_cumple AS CUMPLE,
    clie_nombrecompleto AS NOMBRE,
    clie_rut AS RUT,
    YEAR(CURDATE())-YEAR(clie_cumple) AS ELLOSCUMPLEN
FROM
    clientes
WHERE
    MONTH(clie_cumple) = DATE_FORMAT(CURDATE(),'%m') AND
    DAY(clie_cumple) >= DATE_FORMAT(CURDATE(),'%d')