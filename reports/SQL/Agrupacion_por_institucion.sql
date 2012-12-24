SELECT 
    inst_detalle AS INSTITUCION, COUNT(clie_institucion) AS CANTIDAD
FROM
    clientes
    LEFT JOIN institucion on inst_id = clientes.clie_institucion
GROUP BY
    inst_detalle;