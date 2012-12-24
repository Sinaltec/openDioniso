SELECT
    YEAR(CURDATE())-YEAR(clie_cumple) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(clie_cumple,'%m-%d'), 0, -1) AS EDAD,
    COUNT(clie_cumple) AS CANTIDAD
FROM
    clientes
GROUP BY
    EDAD;
