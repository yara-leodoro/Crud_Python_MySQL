import mysql
import mysql.connector


def consultas(comando_sql):
    cursor.execute(comando_sql)
    lendo = cursor.fetchall()
    print(lendo)


def alteracao(comando_sql):
    return cursor.execute(comando_sql)


def espaco():
    return print(' ')


def retorna_texto(txt):
    print(txt)


host = "localhost"
user = "root"
password = "Leodoro00"
database = "sucos_venda"
port = 3306

con = mysql.connector.connect(host='localhost', database='sucos_venda', user='root', password='Leodoro00')

cursor = con.cursor()

retorna_texto('MOSTRANDO DADOS DAS TABELAS')
espaco()

retorna_texto('RETORNANDO DADOS TABELA PRODUTOS')
consultas(comando_sql='SELECT * FROM tabela_de_produtos;')
espaco()

retorna_texto('RETORNANDO DADOS TABELA CLIENTES')
consultas(comando_sql='SELECT * FROM tabela_de_clientes;')
espaco()

#FAZENDO MODIFICAÇÃO DE UM REGISTRO NA TABELA DE CLIENTES

alteracao(comando_sql="UPDATE tabela_de_clientes SET NOME = 'Camila Martins' WHERE NOME= 'Érica Carvalho';")
espaco()

consultas(comando_sql='SELECT * FROM tabela_de_clientes;')
espaco()

#DELETANDO UM REGISTRO NA TABELA DE CLIENTES

# print(' ')
#
# comando_sql = "DELETE FROM tabela_de_clientes WHERE CPF = '1471156710';"
#
# cursor.execute(comando_sql)
#
# comando_sql = 'SELECT * FROM tabela_de_clientes;'
#
# cursor.execute(comando_sql)
# lendo_nf = cursor.fetchall()
#
# print(lendo_nf)


#MOSTRANDO CONSULTAS

retorna_texto('MOSTRANDO CONSULTAS COM FILTRO E INNER JOIN')
espaco()

retorna_texto("RETORNANDO PRODUTO ESPECÍFIO")
consultas(comando_sql="SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO ='1000889';")
espaco()

retorna_texto('RETORNANDO PRODUTOS SABOR UVA')
consultas(comando_sql="SELECT * FROM tabela_de_produtos WHERE SABOR = 'Uva';")
espaco()

retorna_texto('RETORNANDO PRODUTOS EM PRODUTO SABOR LARANJA')
consultas(comando_sql="SELECT * FROM tabela_de_produtos WHERE SABOR = 'Laranja';")
espaco()

retorna_texto('RETORNANDO PRODUTOS EM PET')
consultas(comando_sql="SELECT * FROM tabela_de_produtos where EMBALAGEM = 'PET';")
espaco()

# retorna_texto('RETORNANDO CONSULTA DE VENDA')
# consultas(comando_sql="SELECT * FROM tabela_de_vendedores A INNER JOIN notas_fiscais B ON A.MATRICULA = B.MATRICULA;")
# espaco()

