import mysql.connector
mydb = mysql.connector.connect(host="localhost" , user="root",passwd="rownak@123890" , database="library_system")
mycursor = mydb.cursor()
mycursor.execute("Show Tables")
for tb in mycursor:
    print(tb)

