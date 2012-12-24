SELECT 
    com_detalle AS COMUNA, COUNT(clie_comuna) AS CANTIDAD
FROM
    clientes
    LEFT JOIN comunas on com_id = clientes.clie_comuna
GROUP BY
    clie_comuna;
