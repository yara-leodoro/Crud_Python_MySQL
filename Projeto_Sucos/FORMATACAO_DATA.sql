#FORMATAÇÃO DE DATA

SELECT CURRENT_TIMESTAMP AS RESULTADO;

SELECT CONCAT('O DIA DE HOJE É:', CURRENT_TIMESTAMP()) AS RESULTADO;

SELECT CONCAT('O DIA DE HOJÉ É:', DATE_FORMAT(CURRENT_TIMESTAMP(),'%W, %d/%m/%Y - %U')) AS RESULTADO;