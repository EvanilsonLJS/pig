import mysql.connector

#criando objeto conexão do python com o MySQL
con = mysql.connector.connect(
    host = 'localhost',
    database = 'pig',
    user = 'pig',
    password = 'pig123456'
)

# Verificando pelo metodo 'is_connected()' se o foi conectado e retorna um booleano

if con.is_connected():
    db_info = con.get_server_info() # O método 'get_server_info' pega informações do servidor e guarda na variavel db_info
    print("Conectado ao MySQL versão", db_info)

    mycursor = con.cursor() # O objeto 'cursor' recebe o retorno do método cursor que itera com os elementos de uma tabela 
    
    mycursor.execute("select database();")
    line = mycursor.fetchone()
    print("Conectado ao banco", line)
