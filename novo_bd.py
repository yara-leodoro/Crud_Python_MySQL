import mysql.connector
import mysql


def consultas(comando_sql):
    cursor.execute(comando_sql)
    lendo = cursor.fetchall()
    print(lendo)


def alteracao_tabela(comando_sql):
    return cursor.execute(comando_sql)


def espaco():
    return print(' ')


def retorna_texto(txt):
    return print(txt)


con = mysql.connector.connect(host='localhost', database='TESTE', user='root', password='Leodoro00')
cursor = con.cursor()

#cursor.execute('CREATE DATABASE TESTE') #criando bd


# Criando e inserindo dados na tabela pessoas

# cursor.execute('CREATE TABLE pessoas(NOME VARCHAR(255), IDADE INT(3), EMAIL VARCHAR(225));')

#comando_SQL= "INSERT INTO pessoas (NOME,IDADE,EMAIL) VALUES ('Maria', 42, 'maria@gmail.com')"
#comando_SQL= "INSERT INTO pessoas (NOME,IDADE,EMAIL) VALUES ('João', 40, 'joao@gmail.com')"
#comando_SQL= "INSERT INTO pessoas (NOME,IDADE,EMAIL) VALUES ('Pedro', 48, 'pedro@gmail.com')"

#cursor.execute(comando_SQL)
#con.commit()

retorna_texto('CONSULTAS  A SEREM RETORNADAS')
espaco()

consultas(comando_sql='SELECT * FROM PESSOAS')
espaco()

retorna_texto('MOSTRANDO PESSOAS COM IDADE > 40')
espaco()
consultas(comando_sql="SELECT * FROM PESSOAS WHERE IDADE >40")
espaco()

retorna_texto('MOSTRANDO PESSOAS COM IDADE < 40')
espaco()
consultas(comando_sql='SELECT * FROM PESSOAS WHERE IDADE < 40')
espaco()

# retorna_texto('APAGANDO REGISTROS')
# espaco()
# alteracao_tabela(comando_sql='DELETE FROM PESSOAS WHERE IDADE = 18 ')




