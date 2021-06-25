import mysql.connector
mydb = mysql.connector.connect(host="localhost",user="root",passwd="rownak@123890",database="library_system")
mycursor = mydb.cursor()
sqlform = "Insert into binding_details(Binding_id,Binding_Name) values(%s,%s)"
binding_details = [(3,"RD-SHARMA"),(4,"HC-VERMA"),]
mycursor.executemany(sqlform,binding_details)
mydb.commit()
