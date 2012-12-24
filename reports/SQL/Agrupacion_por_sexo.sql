SELECT 
    IF(clie_sexo=1,'MASCULINO',IF(clie_sexo=2,'FEMENINO','NO IDENTIFICADO')) AS SEXO, COUNT(clie_sexo) AS CANTIDAD
FROM
    clientes
GROUP BY
    clie_sexo;