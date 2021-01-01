
# INNER JOIN JUNTA TABELAS QUE TEM CORRESPONDENCAS IGUAIS

SELECT * FROM tabela_de_vendedores A INNER JOIN notas_fiscais B ON A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM tabela_de_vendedores A INNER JOIN notas_fiscais B ON A.MATRICULA = B.MATRICULA GROUP BY A.MATRICULA, A.NOME;

SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais INNER JOIN itens_notas_fiscais ON notas_fiscais.NUMERO = itens_notas_fiscais.NUMERO GROUP BY YEAR(DATA_VENDA);

#LEFT E RIGHT JOIN

SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

SELECT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A INNER JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A INNER JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF 
WHERE B.CPF IS NULL AND YEAR(B.DATA_VENDA) = 2015;

#CROSS JOIN E FULL JOIN

SELECT * FROM tabela_de_vendedores INNER JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME FROM tabela_de_vendedores
INNER JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME FROM tabela_de_vendedores
LEFT JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME FROM tabela_de_vendedores
RIGHT JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME FROM tabela_de_vendedores, tabela_de_clientes;










