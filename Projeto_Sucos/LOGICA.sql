# TRABALHANDO COM LÓGICA

SELECT * FROM tabela_de_produtos WHERE SABOR = 'MANGA';

SELECT * FROM tabela_de_produtos WHERE SABOR = 'MANGA' OR TAMANHO = '470 ML';

SELECT * FROM tabela_de_produtos WHERE NOT (SABOR = 'MANGA' AND TAMANHO = '470 ML');

SELECT * FROM tabela_de_produtos WHERE NOT (SABOR = 'MANGA' OR TAMANHO = '470 ML');

SELECT * FROM tabela_de_produtos WHERE SABOR = 'MANGA' AND NOT (TAMANHO = '470 ML');

##########################################################################################

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('LARANJA', 'MANGA');

SELECT * FROM tabela_de_produtos WHERE SABOR = 'LARANJA' OR SABOR = 'MANGA';

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('RIO DE JANEIRO', 'SÃO PAULO') AND IDADE = 20;

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('RIO DE JANEIRO', 'SÃO PAULO') AND (IDADE = 20 AND IDADE <= 22);



