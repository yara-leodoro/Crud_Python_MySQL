CREATE TABLE tbvendedores(
MATRICULA VARCHAR(20),
NOME VARCHAR(150),
PERCENTUAL_COMISSAO FLOAT,
DATA_ADMISSAO DATE,
DE_FERIAS BIT);

ALTER TABLE tbvendedores ADD PRIMARY KEY (MATRICULA);


INSERT INTO tbvendedores(
MATRICULA,
NOME,
PERCENTUAL_COMISSAO,
DATA_ADMISSAO,
DE_FERIAS)

VALUES ('00235', ' Márcio Almeida Silva', 0.08, '2015-08-15', 0);

INSERT INTO tbvendedores(
MATRICULA,
NOME,
PERCENTUAL_COMISSAO,
DATA_ADMISSAO,
DE_FERIAS)

VALUES ('00236', 'Cláudia Morais ', 0.08,'2013-09-17', 1);

INSERT INTO tbvendedores(
MATRICULA,
NOME,
PERCENTUAL_COMISSAO,
DATA_ADMISSAO,
DE_FERIAS)

VALUES ('00237', 'Roberta Martins ', 0.11, '2017-03-18', 1);

INSERT INTO tbvendedores(
MATRICULA,
NOME,
PERCENTUAL_COMISSAO,
DATA_ADMISSAO,
DE_FERIAS)

VALUES ('00238', 'Péricles Alves', 0.11, '2016-08-21', 0);

SELECT * FROM tbvendedores;

SELECT NOME, MATRICULA FROM tbvendedores;

SELECT * FROM tbvendedores WHERE NOME = 'Cláudia Morais';

SELECT * FROM tbvendedores WHERE PERCENTUAL_COMISSAO > 0.10; 

SELECT * FROM tbvendedores WHERE YEAR(DATA_ADMISSAO) >= 2016;

SELECT * FROM tbvendedores WHERE (YEAR(DATA_ADMISSAO) < 2016) AND DE_FERIAS = 1;